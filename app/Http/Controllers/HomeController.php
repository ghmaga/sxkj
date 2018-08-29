<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use App\Models\News;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        //获取推荐产品
        $products = Product::where('recommend', 1)->get();
        //获取首页轮换图id=5
        $slides = Slide::where('parent_id', 5)->get();
        // dd($slides);
        //获取新闻
        $news = News::first();
    	return view('home.index', compact('products', 'slides', 'news'));
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
