<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use App\Models\News;
use App\Models\Brand;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        //获取推荐产品
        $products = Product::where('recommend', 1)->orderBy('order', 'desc')->get();
        //获取首页轮换图id=5
        $slides = Slide::where('parent_id', 5)->orderBy('order', 'desc')->get();

        $brands = Brand::orderBy('order', 'desc')->get();
        //dd($slides);
        //获取新闻
        #$news = News::orderBy('order', 'desc')->first();
        #$news = News::orderBy('created_at', 'desc')->first();
        $news = News::orderBy('updated_at', 'desc')->first();

        $cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();

        

        
    	return view('home.index', compact('products', 'slides', 'news', 'brands', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }


    public function changeLocale($locale)
    {
        if (in_array($locale, ['en', 'zh'])) {
            session()->put('locale', $locale);
        }
        return redirect()
            ->back()
            ->withInput();
    }

}
