<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class About extends Model
{
	protected $table = 'abouts';

    protected $fillable = ['title', 'en_title', 'image', 'body', 'en_body'];
}
