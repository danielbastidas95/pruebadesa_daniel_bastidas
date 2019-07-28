<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateThirdsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        //creacion de la tabla de terceros/usuarios
        Schema::create('thirds', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->String('tipoidentificacion');
            $table->Integer('numeroidentificacion');

            $table->bigInteger('idtipotercero')->unsigned();
            $table->foreign('idtipotercero')->references('id')->on('type_thirds');
            

            $table->String('nombre1');
            $table->String('nombre2');
            $table->String('apellido1');
            $table->String('apellido2');

            $table->bigInteger('iddepa')->unsigned();
            $table->foreign('iddepa')->references('id')->on('departments');

            $table->bigInteger('idmuni')->unsigned();
            $table->foreign('idmuni')->references('id')->on('municipalities');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('thirds');
    }
}
