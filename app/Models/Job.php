<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
	protected $table = 'jobs';

    protected $fillable = ['title', 'en_title', 'body', 'en_body'];
}
