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
                'password' => '$2y$12$9bR4M2YfXv6zG6p4YpZ6Uu0mE9wQx8m0jXQHqz8E1x3nGkq0P8H1G' // password:123456
            ]
        );

        User::updateOrCreate(
            ['email' => 'user@test.com'],
            [
                'name' => 'User',
                'password' => '$2y$12$9bR4M2YfXv6zG6p4YpZ6Uu0mE9wQx8m0jXQHqz8E1x3nGkq0P8H1G'
            ]
        );
    }
}
