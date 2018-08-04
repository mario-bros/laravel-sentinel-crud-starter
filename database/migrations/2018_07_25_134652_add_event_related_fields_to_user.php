<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddEventRelatedFieldsToUser extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_venue_details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->string('qr_code')->default(str_random(40));
            $table->char('receive_certificate_status', 1)->nullable();
            $table->char('receive_first_snack_status', 1)->nullable();
            $table->char('receive_second_snack_status', 1)->nullable();
            $table->char('receive_lunch_status', 1)->nullable();
            $table->string('seat_class', 100)->nullable();
            $table->char('seat_position', 10)->nullable();
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
        Schema::drop('user_venue_details');
    }
}
