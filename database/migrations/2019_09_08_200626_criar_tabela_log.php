<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CriarTabelaLog extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('log', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->dateTimeTz('data_hora');
            $table->enum('tipo', ['INFO', 'WARNING', 'ERROR', 'DEBUG']);
            $table->mediumText('mensagem', 500);
            $table->char('aplicacao', 15);
            $table->char('usuario', 15)->nullable($value = true);
        });    }


    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('log');
    }
}
