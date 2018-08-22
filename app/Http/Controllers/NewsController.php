<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
    	return view('news.index');
    }

    public function show()
    {
    	// 获取当前文章
	    $current = News::find($id);

	    // 获取 “上一篇” 的 ID
	    $previousPostID = News::where('id', '<', $id)->max('id');

	    // 同理，获取 “下一篇” 的 ID
	    $nextPostId = News::where('id', '>', $id)->min('id');

    return view('post.show', compact('current', 'previousPostID', 'nextPostId'));
    }
}
