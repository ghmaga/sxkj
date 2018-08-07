<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	protected $table = 'products';

	protected $fillable = ['title', 'image', 'panent_id', 'brand_id', 'order', 'file', 'video', 'body'];
	//与商品SKU关联
	public function skus()
	{
		return $this->hasMany(ProductSku::class);
	}
}
