<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {

        // Admin user
        User::create([
            'name' => 'Admin',
            'email' => 'admin@test.com',
            'password' => Hash::make('123456'),
        ]);

        // Normal user
        User::create([
            'name' => 'User',
            'email' => 'user@test.com',
            'password' => Hash::make('123456'),
        ]);

    }
}