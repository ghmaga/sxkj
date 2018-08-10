<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSlidesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('slides', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('parent_id')->comment('父级ID');
            $table->string('image')->comment('图片路径');
            $table->string('name')->comment('图片名称');
            $table->string('en_name')->comment('英文图片名称');
            $table->string('description')->comment('描述');
            $table->string('en_description')->comment('英文描述');
            $table->string('link')->comment('图片链接');
            $table->integer('order')->unsigned();
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
        Schema::dropIfExists('slides');
    }
}
