<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Collaboratory extends Model
{
    protected $table = 'collaboratory';

    protected $fillable = ['image', 'link', 'oder'];
}
