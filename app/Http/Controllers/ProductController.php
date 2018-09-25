<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use App\Models\Brand;
use App\Models\Product;
use App\Models\ProductSku;
use App\Models\ProductFile;
use App\Models\ProductVideo;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        //获取产品轮换图id=0
        $slides = Slide::where('parent_id', 0)->orderBy('order', 'desc')->get();
        $brands = Brand::orderBy('order', 'desc')->get();
        

        $cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();

        $products = Product::where('recommend', 1)->orderBy('order', 'desc')->paginate(5);
        // dd($products);

        return view('product.index', compact('slides', 'products', 'brands', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }

    public function show($id)
    {
    	$product = Product::find($id);
    	$skus = ProductSku::where('product_id', $id)->orderBy('order', 'desc')->get();
        $files = ProductFile::where('product_id', $id)->orderBy('order', 'desc')->get();
        $videos = ProductVideo::where('product_id', $id)->orderBy('order', 'desc')->get();
        $brands = Brand::orderBy('order', 'desc')->get();
        // dd($videos);
        $slides = Slide::where('parent_id', 0)->orderBy('order', 'desc')->get();
    	// dd($skus);

        $cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();


    	return view('product.show', compact('product', 'skus', 'slides', 'files', 'videos', 'brands', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }

    public function cate($cate)
    {
        if($cate == '-1')
        {
            $catetories = Product::orderBy('order', 'desc')->paginate(5);
        }else{
            $catetories = Product::where('parent_id','like','%'.$cate.'%')->orderBy('order', 'desc')->paginate(5);
        }
        $slides = Slide::where('parent_id', 0)->orderBy('order', 'desc')->get();
        $brands = Brand::orderBy('order', 'desc')->get();
         // dd($catetories);

        // header中需要
        $cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();


        return view('product.cate', compact('slides', 'catetories', 'brands', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }
}
