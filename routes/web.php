<?php
namespace App\Http\Controllers;
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



//Auth::routes();
Route::get('/', [SlugController::class, 'index']);
Route::get('/add', [SlugController::class, 'add']);
Route::post('/save',[SlugController::class, 'save']);
Route::get('/details/{slug?}',[SlugController::class, 'details']);
Route::get('/list',[ListController::class,'index']);

Route::get('/home', [HomeController::class, 'index'])->name('home');

Auth::routes();
Route::get('/list',[SlugController::class,'list']);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::post('/save-token', [App\Http\Controllers\HomeController::class, 'saveToken'])->name('save-token');
Route::post('/send-notification', [App\Http\Controllers\HomeController::class, 'sendNotification'])->name('send.notification');
