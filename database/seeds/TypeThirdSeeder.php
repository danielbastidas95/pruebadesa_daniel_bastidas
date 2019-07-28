<?php

use Illuminate\Database\Seeder;
use App\TypeThird;


class TypeThirdSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        TypeThird::create([
            'nombtipo' => 'paciente',
        ]);

        TypeThird::create([
            'nombtipo' => 'empleado',
        ]);

        TypeThird::create([
            'nombtipo' => 'contratista',
        ]);

        TypeThird::create([
            'nombtipo' => 'otro',
        ]);
    }
}
