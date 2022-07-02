<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/



Route::post("registerUser", [UserController::class, 'registerUser'])->name('api.registerUser');
Route::get("loginUser", [UserController::class, 'loginUser'])->name('loginUser');



Route::get("viewBooks", [UserController::class, 'viewBooks'])->name('viewBooks');
Route::get("updateToken", [UserController::class, 'updateToken'])->name('updateToken');
