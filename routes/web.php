<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\NewsController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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


Route::get('/', [NewsController::class, 'index'])->name('index');
Route::get('/search', [NewsController::class, 'search'])->name('search');
Auth::routes();
Route::get('/home', [HomeController::class, 'index'])->name('home');
//Route::post('/', [NewsController::class, 'addFavourite'])->name('news.addFavourite');
Route::post('/', [NewsController::class, 'addCities'])->name('news.addCities');
Route::get('/{news}', [NewsController::class, 'detail'])->name('detail');






