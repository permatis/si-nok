<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGambarPotensiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gambar_potensi', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('gambar_id')->unsigned();
            $table->integer('potensi_id')->unsigned();
        });

        Schema::table('gambar_potensi', function($table) {
            $table->foreign('gambar_id')->references('id')->on('gambar')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('potensi_id')->references('id')->on('potensi')
                ->onUpdate('cascade')->onDelete('cascade');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('gambar_potensi');
    }
}
