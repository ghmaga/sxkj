<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title')->comment('标题');
            $table->string('en_title')->comment('英文标题');
            $table->string('image')->comment('封面图片');
            $table->unsignedInteger('cate_id')->comment('新闻分类');
            $table->text('body')->comment('内容');
            $table->text('en_body')->comment('英文内容');
            $table->text('description')->comment('内容简介');
            $table->text('en_description')->comment('英文内容简介');
            $table->text('odrer')->comment('排序');
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
        Schema::dropIfExists('news');
    }
}
