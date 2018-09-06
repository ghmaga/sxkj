<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
	protected $table = 'brands';

    protected $fillable = ['title', 'en_title', 'product_id', 'cate_id', 'image', 'order', 'description', 'en_description'];

    // protected $casts = [
    //     'product_id' => 'json',
    // ];

    // public function getBrandsAttribute($value)
    // {
    //     return explode(',', $value);
    // }

    // public function setBrandsAttribute($value)
    // {
    //     $this->attributes['product_id'] = implode(',', $value);
    // }
}
