<?php

use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
})->name('login');
Route::post('/login', [AdminController::class, 'authenticate'])->name('authenticate');

Route::middleware('auth')->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    });

    Route::get('/create/company', [AdminController::class, 'createCompany'])->name('createCompany');
    Route::get('/manage/companies', [AdminController::class, 'manageCompany'])->name('manageCompanies');
    Route::get('/manage/products', [AdminController::class, 'manageProducts'])->name('manageProducts');
    
    //for viewing specific companies products
    Route::get('/company/products/{id}', [AdminController::class, 'showCompanyProducts']);
    
    Route::patch('/deactivate/{id}', [AdminController::class, 'deactivate'])->name('deactivate');
    Route::patch('/activate/{id}', [AdminController::class, 'activate'])->name('activate');
    Route::post('/logout' , [AdminController::class, 'logout'])->name('logout');
});


