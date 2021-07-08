<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;
use Illuminate\Support\Str;

class PostsTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $count = 1;
        while($count  < 10){
            DB::table('posts')->insert([
                'title' => Str::random(40),
                'description' => Str::random(100),
                
            ]);
            $count++;

        }
       
    }
}
