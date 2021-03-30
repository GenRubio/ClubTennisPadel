<?php

use App\Http\Controllers\Auth\GoogleController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RecoverPasswordController;
use App\Http\Controllers\Auth\RegistroController;
use App\Http\Controllers\Dashboard\DashboardController;
use App\Http\Controllers\Home\CalendarController;
use App\Http\Controllers\Home\ContactoController;
use App\Http\Controllers\Home\GalleriaController;
use App\Http\Controllers\Home\HomeController;
use App\Http\Controllers\Home\InstalacionesController;
use App\Http\Controllers\Home\NoticiaComentariosController;
use App\Http\Controllers\Home\NoticiasController;
use App\Http\Controllers\Home\TiendaController;

use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index'])->name('home');

//Google Auth
Route::get('/auth/redirect/google', [GoogleController::class, 'redirectToGoogle'])
    ->name('google.login');
Route::get('/auth/callback/google', [GoogleController::class, 'registerOrLogin']);

//Recover password
Route::get('/recover-password', [RecoverPasswordController::class, 'index'])
    ->name('recover.password');

Route::get('/recover-password-validate', [RecoverPasswordController::class, 'recoverPassword'])
    ->name('recover.password.validate');
///Home
Route::get('/get-calendar-events', [CalendarController::class, 'index'])
    ->name('calendar.eventos');

Route::get('/instalaciones/{slug}', [InstalacionesController::class, 'index'])
    ->name('instalacion');

Route::get('/tienda', [TiendaController::class, 'index'])
    ->name('tienda');

Route::get('/contacto', [ContactoController::class, 'index'])
    ->name('contacto');

Route::get('/galleria', [GalleriaController::class, 'index'])
    ->name('galleria');
//Registro
Route::get('/registro', [RegistroController::class, 'index'])
    ->name('registro');
//Login
Route::get('/login', [LoginController::class, 'index'])
    ->name('login');
//Noticias
Route::get('/noticias/{slug?}', [NoticiasController::class, 'index'])->name('noticias');
Route::post('/comentarios',  [NoticiaComentariosController::class, 'index'])->name('comentarios');
Route::get('/comentarios-refresh', [NoticiaComentariosController::class, 'refresh'])->name('comentariosRefresh');

Route::middleware('auth')->group(function () {
    Route::get('/me', [DashboardController::class, 'index'])->name('me');
    Route::get('/logout', [DashboardController::class, 'logaut'])->name('user.logaut');

    Route::post('/comment', [NoticiaComentariosController::class, 'store'])->name('comments.store');
});
