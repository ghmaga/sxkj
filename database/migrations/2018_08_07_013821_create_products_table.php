<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title')->comment('名称');
            $table->string('en_title')->comment('英文名称');
            $table->string('image')->comment('图片');
            $table->unsignedInteger('parent_id')->comment('产品分类');
            $table->unsignedInteger('brand_id')->comment('厂牌分类');
            $table->integer('order')->comment('排序')->nullable();
            $table->string('file')->comment('文件')->nullable();
            $table->string('video')->comment('视频')->nullable();
            $table->text('body')->comment('描述')->nullable();
            $table->text('en_body')->comment('英文描述')->nullable();
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
        Schema::dropIfExists('products');
    }
}
