<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {

        User::updateOrCreate(
            ['email' => 'admin@test.com'],
            [
                'name' => 'Admin',
                'password' => Hash::make('123456'),
            ]
        );

        User::updateOrCreate(
            ['email' => 'user@test.com'],
            [
                'name' => 'User',
                'password' => Hash::make('123456'),
            ]
        );
    }
}
