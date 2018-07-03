<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKategoriPotensiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kategori_potensi', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('kategori_id')->unsigned();
            $table->integer('potensi_id')->unsigned();
        });

        Schema::table('kategori_potensi', function($table) {
            $table->foreign('kategori_id')->references('id')->on('kategori')
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
        Schema::dropIfExists('kategori_potensi');
    }
}
