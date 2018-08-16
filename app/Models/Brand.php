<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
	protected $table = 'brands';

    protected $fillable = ['cate_id', 'image', 'order' ,'description'];
}
