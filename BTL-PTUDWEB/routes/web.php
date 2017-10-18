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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/header_login', function () {
    return view('layouts.header_login');
});

// Route::get('/page', function () {
//     return view('layouts.page');
// });
Route::get('/user_home', function () {
    return view('users.home_content');
});
