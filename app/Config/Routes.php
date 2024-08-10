<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('/daftar_sampel', 'Home::daftar_sampel');
$routes->get('/kuesioner', 'Home::kuesioner');
// $routes->resource('sampel');
$routes->get('sampel','Sampel::index');
$routes->get('sampel/(:segment)',      'Sampel::show/$1');
$routes->get('sampel/show_by_status/(:segment)',      'Sampel::show_by_status/$1');
$routes->get('user','User::index');
$routes->post('user/token', 'Auth::login');
$routes->resource('art');
$routes->resource('makanan');
