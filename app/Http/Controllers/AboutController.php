<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use App\Models\Brand;
use App\Models\Product;
use App\Models\Collaboratory;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    //
    public function index()
    {
    	$slides = Slide::where('parent_id', 3)->get();
    	$brands = Brand::orderBy('order', 'desc')->get();
    	$links = Collaboratory::orderBy('order', 'desc')->get();


    	$cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();

    	return view('about.index', compact('slides', 'links', 'brands', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }
}
