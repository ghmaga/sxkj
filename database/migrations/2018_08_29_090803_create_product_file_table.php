<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductFileTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_file', function (Blueprint $table) {
            $table->increments('id');
            $table->string('filename')->comment('文件名称');
            $table->string('en_filename')->comment('文件英文名称');
            $table->string('catename')->comment('文件分类名称');
            $table->string('en_catename')->comment('文件英文分类名称');
            $table->string('file')->comment('文件上传');
            $table->unsignedInteger('product_id');
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');
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
        Schema::dropIfExists('product_file');
    }
}
