<?php

namespace Database\Seeders;

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PegawaiSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_US');

        for($i = 1; $i<=20; $i++){
            DB::table('pegawai')->insert([
                'nama'   => $faker -> name,
                'alamat' => $faker -> address,
                'umur'   => $faker -> numberBetween(25,50),
                'no_hp'  => $faker -> phoneNumber(),
            ]);
        }
    }
}
