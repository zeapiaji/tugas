<?php

use App\Http\Controllers\PegawaiController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
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
    return redirect('login');
});

Route::get('/dashboard', 'PegawaiController@home');

Route::get('/dashboard/add/', 'PegawaiController@add');

Route::post('/dashboard/add/store/', 'PegawaiController@store');

Route::get('/dashboard/delete/{id}', 'PegawaiController@delete');

Route::get('/dashboard/delete/{id}', 'PegawaiController@delete');

Route::get('/dashboard/edit/{id}', [PegawaiController::class, 'edit']);

Route::post('/dashboard/edit/update/{id}', [PegawaiController::class, 'update']);

Auth::routes();
