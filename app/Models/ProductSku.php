<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductSku extends Model
{
    protected $table = 'product_skus';
    protected $fillable = ['title', 'en_title', 'description', 'en_description', 'image', 'order'];

    public function product()
    {
    	return $this->belongsTo(Product::class);
    }
}
