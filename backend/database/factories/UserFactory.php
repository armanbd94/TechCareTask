<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    protected static ?string $password;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'first_name' => 'Mr.',
            'last_name' => fake()->name(),
            'username' => fake()->unique()->word . rand(1,73),
            'mobile_no' => fake()->unique()->e164PhoneNumber,
            'email' => fake()->unique()->safeEmail(),
            'avatar' => 'https://randomuser.me/api/portraits/' . fake()->randomElement(['men']) . '/' . rand(1,99) . '.jpg',
            'cover' => fake()->imageUrl(800, 220, 'nature'),
            'email_verified_at' => now(),
            'password' => static::$password ??= Hash::make('password'),
            'remember_token' => Str::random(10),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     */
    public function unverified(): static
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => null,
        ]);
    }
}
