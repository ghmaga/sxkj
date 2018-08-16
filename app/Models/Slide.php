<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Slide extends Model
{
	//protected $table = 'slides';

    protected $fillable = ['name', 'description', 'image', 'parent_id', 'link', 'order'];

    public function __construct()
    {

    }
}
