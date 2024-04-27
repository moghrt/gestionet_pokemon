<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

 // GET
$routes->get('/', 'Home::index');
$routes->get('/home', 'Home::home');
$routes->get('/logout', 'Home::logout');
$routes->get('/get-json-pokemons', 'PokeApi::getPokemons');
$routes->get('/detail/(:any)', 'PokeApi::getDetail/$1');

// POST
$routes->post('/login', 'Home::login');
