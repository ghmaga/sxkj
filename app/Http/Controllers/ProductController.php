<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use App\Models\Product;
use App\Models\ProductSku;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        //获取产品轮换图id=0
        $slides = Slide::where('parent_id', 0)->get();
    	return view('product.index', compact('slides'));
    }

    public function show($id)
    {
    	$product = Product::find($id);
    	$skus = ProductSku::where('product_id', $id)->get();
        $slides = Slide::where('parent_id', 0)->get();
    	// dd($skus);
    	return view('product.show', compact('product', 'skus', 'slides'));
    }
}
