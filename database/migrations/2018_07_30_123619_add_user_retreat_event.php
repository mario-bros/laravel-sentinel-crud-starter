<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddUserRetreatEvent extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_retreat_details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->string('qr_code')->default(str_random(40));
            $table->char('first_dinner_status', 1)->nullable();
            $table->char('second_breakfast_status', 1)->nullable();
            $table->char('third_lunch_status', 1)->nullable();
            $table->char('first_snack_status', 1)->nullable();
            $table->char('second_snack_status', 1)->nullable();
            $table->char('room_no', 10)->nullable();
            $table->string('description', 255)->nullable();
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
        Schema::drop('user_retreat_details');
    }
}