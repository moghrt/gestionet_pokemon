<?php 
namespace App\Models;
use CodeIgniter\Model;

class PokemonTypeModel extends Model
{
    protected $table      = 'pokemons_types';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = false;

    // Todas las columnas de la tabla.
    protected $allowedFields = ['pokemon_id', 'type_id'];

    protected bool $allowEmptyInserts = false;

    // Dates
    protected $useTimestamps = false;
}