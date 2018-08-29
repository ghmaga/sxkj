<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	protected $table = 'products';

	protected $fillable = ['title', 'en_title', 'image', 'panent_id', 'brand_id', 'order', 'file', 'video', 'body', 'en_body', 'order', 'push'];
	//与商品SKU关联
	public function skus()
	{
		return $this->hasMany(ProductSku::class);
	}


	//与商品SKU关联
	public function file()
	{
		return $this->hasMany(ProductFile::class);
	}


	//与商品SKU关联
	public function video()
	{
		return $this->hasMany(ProductVideo::class);
	}

	// public function setFileAttribute($file)
	// {
	//     if (is_array($file)) {
	//         $this->attributes['file'] = json_encode($file);
	//     }
	// }

	// public function getFileAttribute($file)
	// {
	//     return json_decode($file, true);
	// }


	// public function setVideoAttribute($video)
	// {
	//     if (is_array($video)) {
	//         $this->attributes['video'] = json_encode($video);
	//     }
	// }

	// public function getVideoAttribute($video)
	// {
	//     return json_decode($video, true);
	// }
}
