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
        $slides = Slide::where('parent_id', 2)->get();
        //获取厂牌列表

        $brands = Brand::paginate(10)->toArray();

        $brands = $brands['data'];
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

        
    	return view('brands.index', compact('slides', 'brands', 'products'));
    }

    public function show($id)
    {
    	//获取首页轮换图id=2
        $slides = Slide::where('parent_id', 2)->get();

        // $catetory = Category::where('parent_id',13)->get();
        // foreach ($catetory as $key => $value) {            
        //     $products = Product::where('brand_id', $key)->get();
        // }

        $brand = Brand::find($id);
        $products = Product::where('brand_id', $id)->get();
        //$catetory = Category::where('parent_id', 13)->get();



        // dd($products);


    	return view('brands.show', compact('slides', 'brand', 'products'));
    }
}
