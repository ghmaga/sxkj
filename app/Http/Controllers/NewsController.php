<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Slide;
use App\Models\Brand;
use App\Models\Product;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        //获取新闻轮换图id=3
        $slides = Slide::where('parent_id', 3)->get();
        $brands = Brand::all();
        $news = News::all();

        $cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();


    	return view('news.index', compact('slides', 'news', 'brands', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }

    public function show($id)
    {
    	// 获取当前文章
	    $current = News::find($id);

	    // 获取 “上一篇” 的 ID
	    $previousPostID = News::where('id', '<', $id)->max('id');

	    // 同理，获取 “下一篇” 的 ID
	    $nextPostId = News::where('id', '>', $id)->min('id');

        $news = News::find($id);

        $brands = Brand::orderBy('order', 'desc')->get();


        //获取新闻轮换图id=3
        $slides = Slide::where('parent_id', 3)->orderBy('order', 'desc')->get();

        $cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        // dd($cate2);
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();

        return view('news.show', compact('current', 'previousPostID', 'nextPostId', 'slides', 'news', 'brands', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }
}
