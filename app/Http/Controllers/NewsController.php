<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Slide;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        //获取新闻轮换图id=3
        $slides = Slide::where('parent_id', 3)->get();
        $news = News::all();
    	return view('news.index', compact('slides', 'news'));
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


        //获取新闻轮换图id=3
        $slides = Slide::where('parent_id', 3)->get();

        return view('news.show', compact('current', 'previousPostID', 'nextPostId', 'slides', 'news'));
    }
}
