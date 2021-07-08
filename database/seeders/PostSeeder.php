<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Str;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for($i = 0;$i<=5000;$i++){

            \DB::table('slugs')->insert([
                 'title' => Str::random(100),
                 'slug'=>Str::random(100)
            ]);
        }
    }
}
