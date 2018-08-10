<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('category', 'CategoryController');
    $router->resource('product', 'ProductController');
    $router->resource('slide', 'SlideController');
	$router->resource('brands', 'BrandController');
	$router->resource('news', 'NewsController');
	$router->resource('about', 'AboutController');
	$router->resource('job', 'JobController');
});
