<?php 

// ** Vendor Route *//

use App\Http\Controllers\Backend\VendorController;
use App\Http\Controllers\Backend\VendorProfileController;
use Illuminate\Support\Facades\Route;

Route::get('dashboard', [VendorController::class, 'dashboard'])->name('dashboard');
Route::get('profile', [VendorProfileController::class, 'index'])->name('profile'); // vendor.profile
Route::put('profile', [VendorProfileController::class, 'updateProfile'])->name('profile.update'); //vendor.profile.update
Route::POST('profile', [VendorProfileController::class, 'updatePassword'])->name('profile.update.password'); //vendor.profile.update.password


?>