<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index')->name('home');
Route::get('product', 'ProductController@index')->name('product');
Route::get('product/{id}', 'ProductController@show')->name('product.show');
Route::get('product/cate/{parent_id}', 'ProductController@cate')->name('product.cate');
Route::get('search', 'SearchController@index')->name('search');
Route::get('brands', 'BrandsController@index')->name('brands');
Route::get('brands/{id}', 'BrandsController@show')->name('brands.show');
Route::get('about', 'AboutController@index')->name('about');
Route::get('career', 'CareerController@index')->name('career');
Route::get('news', 'NewsController@index')->name('news');
Route::get('news/{id}', 'NewsController@show')->name('news.show');

//修改语言
Route::get('/changeLocale/{locale}', 'HomeController@changeLocale');


//根据session值设置语言
Route::group(['middleware' => ['setLocale']], function() {
    Route::get('/', 'HomeController@index')->name('home');
});



// Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
// Authentication Routes...
Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('login', 'Auth\LoginController@login');
Route::post('logout', 'Auth\LoginController@logout')->name('logout');

// Registration Routes...
Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('register', 'Auth\RegisterController@register');

// Password Reset Routes...
Route::get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.request');
Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
Route::post('password/reset', 'Auth\ResetPasswordController@reset');
