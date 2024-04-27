<?php

namespace App\Controllers;
use App\Models\UserModel;
use App\Models\PokemonModel;
use App\Models\TypeModel;
use App\Models\TypeModelModel;

class Home extends BaseController
{
    public function index()
    {
        // Si hay usuario admin autenticado, no hace falta volver a login.
        if(!session('type') == 'admin')
        {
            return view('/login');
        }
        else
        {
            return view('/sections/table');
        }
    }

    public function home()
    {
        $limitQuery = $_ENV['LIMIT_QUERY'];
        $registersPerPage = $_ENV['REGISTERS_PER_PAGE'];
        $pokemonModel = new PokemonModel();
        //$data = $pokemonModel->findAll($limitQuery, 0);
        $data = $pokemonModel->asArray()->paginate($registersPerPage);
        $pager = $pokemonModel->pager;

        $typesModel = new TypeModel();
        $pokemonTypes = $typesModel->findAll();

        return view('/sections/table', array('pokenames' => $data, 'types' =>$pokemonTypes, 'pager' => $pager));
    }
    
    public function login()
    {
        // Datos del formulario.
        $postUser = $this->request->getPost('user');
        $postPassword = (string)$this->request->getPost('password');

        // Datos BBDD
        $user = new UserModel();
        $data = $user->getUserData(['user' => $postUser]);

        // Si hay algún usuario con ese user y la verificación del password es correcta.
        if(count($data) > 0 && password_verify($postPassword, $data[0]['password']))
        {
            $result = [ "user" => $data[0]['user'], "type" => $data[0]['type']];
            
            // Sesion con los datos del usuario.
            $session = session();
            $session->set($result);

            return redirect()->to(base_url('/home'));
        }
        else
        {
            return redirect()->to(base_url('/'));
        }
    }

    public function logout()
    {
        $session = session();
        $session->destroy();

        return redirect()->to(base_url('/'));
    }
}
