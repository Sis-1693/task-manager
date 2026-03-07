<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\TaskController;


Route::post('/login', [AuthController::class, 'login']);

Route::middleware(['auth:sanctum', 'role:admin'])->group(function () {
    Route::post('/projects', [ProjectController::class, 'store']);
});
Route::middleware(['auth:sanctum', 'role:admin'])->group(function () {
    Route::post('/tasks', [TaskController::class, 'store']);
});
Route::middleware(['auth:sanctum', 'role:user'])->group(function () {
    Route::get('/my-tasks', [TaskController::class, 'myTasks']);
});
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/projects', [ProjectController::class, 'index']);
    Route::put('/tasks/{id}/status', [TaskController::class, 'updateStatus']);
});
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/projects/{id}/tasks', [TaskController::class, 'projectTasks']);
});

use App\Http\Controllers\UserController;

Route::middleware('auth:sanctum')->get('/users', [UserController::class, 'index']);
Route::middleware(['auth:sanctum', 'role:admin'])->group(function () {

    Route::post('/tasks', [TaskController::class, 'store']);

    Route::put('/tasks/{id}', [TaskController::class, 'update']);
});
