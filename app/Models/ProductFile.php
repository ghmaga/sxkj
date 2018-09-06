<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductFile extends Model
{
    protected $table = 'product_file';


    protected $fillable = ['filename', 'en_filename', 'catename', 'en_catename', 'file', 'order'];

    public function product()
    {
    	return $this->belongsTo(Product::class);
    }
}
