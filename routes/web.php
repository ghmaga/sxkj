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
Route::get('brands', 'BrandsController@index')->name('brands');
Route::get('about', 'AboutController@index')->name('about');
Route::get('career', 'CareerController@index')->name('career');
Route::get('news', 'NewsController@index')->name('news');

//修改语言
Route::get('/changeLocale/{locale}', 'HomeController@changeLocale');


//根据session值设置语言
Route::group(['middleware' => ['setLocale']], function() {
    Route::get('/', 'HomeController@index')->name('home');
});


