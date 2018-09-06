<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use App\Models\Brand;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;

class BrandsController extends Controller
{
    public function index()
    {
    	//获取首页轮换图id=2
        $slides = Slide::where('parent_id', 2)->orderBy('order', 'desc')->get();
        //获取厂牌列表

        $brands = Brand::orderBy('order', 'desc')->paginate(10);

        // $brands = $brands['data'];
        // dd($brands);
        //获取产品id
        // foreach ($brands as $key => $val) {
        //     $product_id = $val['product_id'];                 
        // }

        // $cards = array_merge($fruits, $numbered);  

        //查询产品信息
        // foreach ($product_id as $key => $value) {
        // // echo $value;            
        //     $products = Product::where('brand_id',$value)->get();
        // }
        // dd($products); 


        $cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();

    	return view('brands.index', compact('slides', 'brands', 'products', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }

    public function show($id)
    {
    	//获取首页轮换图id=2
        $slides = Slide::where('parent_id', 2)->orderBy('order', 'desc')->get();

        $brand = Brand::find($id);
        $brands = Brand::orderBy('order', 'desc')->get();
        $products = Product::where('brand_id', $id)->orderBy('order', 'desc')->get();



        $cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();


    	return view('brands.show', compact('slides', 'brand', 'brands', 'products', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }
}
