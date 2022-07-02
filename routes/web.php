<?php

use App\Http\Controllers\UserController;
use App\Models\Book;
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


Route::get("/", [UserController::class, 'login'])->name('userLogin');
Route::get("register", [UserController::class, 'register'])->name('userRegister');
Route::get("logout", [UserController::class, 'logout'])->name('userLogout');
