<?php

namespace App\Controllers;

use App\Models\PokemonModel;
use App\Models\TypeModel;

class PokeApi extends BaseController
{
    public function getDetail($name)
    {
        $details = $this->getPokemonDetail($name);

        $parsedTypes = '';
        $parsedAbilities = '';
        $types = $details['types'];
        $abilities = $details['abilities'];

        // Parseos.
        foreach ($types as $type) {
            $parsedTypes .= $type['type']['name'] . ', ';
        }
        $parsedTypes = rtrim($parsedTypes, ', ');
        $details['types'] = $parsedTypes;

        foreach ($abilities as $ability) {
            $parsedAbilities .= $ability['ability']['name'] . ', ';
        }
        $parsedTypes = rtrim($parsedTypes, ', ');
        $parsedAbilities = rtrim($parsedAbilities, ', ');

        $details['types'] = $parsedTypes;
        $details['abilities'] = $parsedAbilities;

        // Evoluciones.
        $evolutions = $this->getEvolutions($details['id']);
        $details['evolutions'] = $evolutions;

        return view('/detail', array('data' => $details));
    }
    public function getPokemons()
    {
        // Vaciar previamente las tablas para evitar duplicados.
        $this->truncateTables();

        // Cargar Json de nombres y rellenar BBDD.
        $pokemonsNames = $this->getPokemonNames();
        $this->addPokemons($pokemonsNames);

        // Cargar Json de tipos y rellenar BBDD.
        $pokemonTypes = $this->getPokemonTypes();
        $this->addTypes($pokemonTypes);

        // Cargar detalle del pokemon y asignar los tipos.
        $data = $this->addPokemonsWithTypes();

        return redirect()->to(base_url('/home'));
    }

    private function truncateTables()
    {
        $db = \Config\Database::connect();

        // Igual esto es una herejia :D.
        try {
            // Desactivo las restricciones de clave externa.
            $db->query('SET FOREIGN_KEY_CHECKS=0');

            // Trunco la tablas.
            $db->query("TRUNCATE TABLE pokemons");
            $db->query("TRUNCATE TABLE types");
        } catch (\Exception $e) {
            echo 'Error al truncar la tablas: ' . $e->getMessage();
        } finally {
            $db->query('SET FOREIGN_KEY_CHECKS=1');
        }
    }

    private function addPokemons($pokemonList)
    {
        foreach ($pokemonList as $pokemon) {
            $this->addPokemon($pokemon);
        }
    }

    private function addPokemon($data)
    {
        $model = new PokemonModel();
        $item = [
            'name' => $data['name'],
            'url' => $data['url'],
        ];

        $model->insert($item);
    }

    private function addTypes($typesList)
    {
        foreach ($typesList as $type) {
            $this->addType($type);
        }
    }

    private function addType($data)
    {
        $model = new TypeModel();
        $item = [
            'name' => $data['name'],
            'url' => $data['url'],
        ];

        $model->insert($item);
    }

    private function addPokemonsWithTypes()
    {
        $limitQuery = $_ENV['LIMIT_QUERY'];
        $pokemonModel = new PokemonModel();
        $pokemons = $pokemonModel->findAll($limitQuery, 0);

        // Esto tarda.
        if (!empty($pokemons)) {
            foreach ($pokemons as $pokemon) {
                $data = $this->getPokemonDetail($pokemon['name']);
                $types = $data['types'];

                foreach ($types as $type) {
                    $pokemon['types'] .= $type['type']['name'] . ', ';
                }

                $pokemon['types'] = rtrim($pokemon['types'], ', ');
                $pokemonModel->save($pokemon);
            }
        }

        $pokemons = $pokemonModel->findAll($limitQuery, 0);
        return $pokemons;
    }

    private function getPokemonNames()
    {
        $url = 'https://pokeapi.co/api/v2/generation/1';
        $dataRaw = $this->getDataFromCurl($url);
        $data = $dataRaw['pokemon_species'];

        return $data;
    }

    private function getPokemonTypes()
    {
        $url = 'https://pokeapi.co/api/v2/type';
        $dataRaw = $this->getDataFromCurl($url);
        $data = $dataRaw['results'];

        return $data;
    }

    private function getPokemonDetail($pokemonName)
    {
        $url = 'https://pokeapi.co/api/v2/pokemon/' . $pokemonName . '/';
        $data = $this->getDataFromCurl($url);

        return $data;
    }

    private function getEvolutions($pokemonId)
    {
        $url = 'https://pokeapi.co/api/v2/evolution-chain/' . $pokemonId . '/';
        $data = $this->getDataFromCurl($url);

        $evolutions = [];
        $i = 0;

        if ($data != null) {

            foreach ($data['chain']['evolves_to'] as $evolution) {
                $evolutionData = $this->getPokemonDetail($evolution['species']['name']);
                $evolutions[$i] = $evolutionData;
                $i++;
            }
        }
        return $evolutions;
    }

    private function getDataFromCurl($url)
    {
        $curl = curl_init();

        // Opciones de la solicitud.
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_URL, $url);

        // Ejecuta la solicitud y cierra.
        $result = curl_exec($curl);
        curl_close($curl);

        // Resultado json.
        $data = json_decode($result, true);

        return $data;
    }
}
