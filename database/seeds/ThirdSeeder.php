<?php

use Illuminate\Database\Seeder;
use App\Third;
use App\Department;
use App\Municipality;
use App\TypeThird;




class ThirdSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        //Registro por defecto

        $DepTolimaId = Department::where('nombdepa', 'Tolima')->value('id');
        $MunIbagueId = Municipality::where('nombmuni', 'Ibague')->value('id');
        $EmpleadoTerceroId = TypeThird::where('nombtipo', 'empleado')->value('id');
        $PacienteTerceroId = TypeThird::where('nombtipo', 'empleado')->value('id');


        Third::create([
        'tipoidentificacion' => 'CC',
        'numeroidentificacion' => '1061777874',
        'idtipotercero' => $EmpleadoTerceroId,
        'nombre1' => 'Daniel',
        'nombre2' => 'Yesid',
        'apellido1' => 'Bastidas',
        'apellido2' => 'Samboni',
        'iddepa' => $DepTolimaId,
        'idmuni' => $MunIbagueId,
        ]);

        Third::create([
            'tipoidentificacion' => 'CC',
            'numeroidentificacion' => '10612342',
            'idtipotercero' => $PacienteTerceroId,
            'nombre1' => 'Juan',
            'nombre2' => 'Carlos',
            'apellido1' => 'Perez',
            'apellido2' => 'Martinez',
            'iddepa' => $DepTolimaId,
            'idmuni' => $MunIbagueId,
            ]);
    }
}
