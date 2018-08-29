<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductVideo extends Model
{
    protected $table = 'product_video';

    protected $fillable = ['filename', 'en_filename',  'video'];

    public function product()
    {
    	return $this->belongsTo(Product::class);
    }
}
