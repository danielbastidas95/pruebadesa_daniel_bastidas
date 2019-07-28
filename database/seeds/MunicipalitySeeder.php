<?php

use Illuminate\Database\Seeder;
use App\Municipality;
use App\Department;


class MunicipalitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $DepTolimaId = Department::where('nombdepa', 'Tolima')->value('id');
        $DepHuilaId = Department::where('nombdepa', 'Huila')->value('id');

        Municipality::create([
        'nombmuni' => 'Ibague',
        'iddepa' => $DepTolimaId
        ]);
        Municipality::create([
        'nombmuni' => 'Espinal',
        'iddepa' => $DepTolimaId
        ]);

        Municipality::create([
        'nombmuni' => 'Neiva',
        'iddepa' => $DepHuilaId
        ]);
        Municipality::create([
        'nombmuni' => 'Pitalito',
        'iddepa' => $DepHuilaId
        ]);
    }
}
