<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAllTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('avatar')->default('default.png');
            $table->string('email')->unique();
            $table->string('password');
        });
        Schema::create('usersfavorites', function (Blueprint $table) {
            $table->id();
            $table->integer('id_user');
            $table->integer('id_barber');
        });
        Schema::create('usersappointments', function (Blueprint $table) {
            $table->id();
            $table->integer('id_user');
            $table->integer('id_barber');
            $table->datetime('ap_datetime');
        });

        Schema::create('barbers', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('avatar')->default('default.png');
            $table->float('stars')->default(0);
            $table->string('latitude')->nullable();
            $table->string('longitude')->nullable();
        });

        Schema::create('barbersphotos', function (Blueprint $table) {
            $table->id();
            $table->integer('id_barber');
            $table->string('url');
        });

        Schema::create('barbersreviews', function (Blueprint $table) {
            $table->id();
            $table->integer('id_barber');
            $table->string('url');
            $table->float('rate');
        });

        Schema::create('barbersservices', function (Blueprint $table) {
            $table->id();
            $table->integer('id_barber');
            $table->string('name');
            $table->float('price');
        });

        Schema::create('barberstestimonials', function (Blueprint $table) {
            $table->id();
            $table->integer('id_barber');
            $table->string('name');
            $table->float('rate');
            $table->string('body');
        });

        Schema::create('barbersavailability', function (Blueprint $table) {
            $table->id();
            $table->integer('id_barber');
            $table->integer('weekday');
            $table->text('hours');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user');
        Schema::dropIfExists('userfavorites');
        Schema::dropIfExists('userappointments');
        Schema::dropIfExists('barber');
        Schema::dropIfExists('barberphotos');
        Schema::dropIfExists('barberreviews');
        Schema::dropIfExists('barberservices');
        Schema::dropIfExists('barbertestimonials');
        Schema::dropIfExists('barberavailability');
    }
}
