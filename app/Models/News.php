<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
	protected $table = 'news';

    protected $fillable = ['title', 'image', 'cate_id', 'body', 'en_body', 'description', 'en_description', 'order'];
}
