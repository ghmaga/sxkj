<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use Illuminate\Http\Request;

class BrandsController extends Controller
{
    public function index()
    {
    	//获取首页轮换图id=2
        $slides = Slide::where('parent_id', 2)->get();
    	return view('brands.index', compact('slides'));
    }

    public function show()
    {
    	//获取首页轮换图id=2
        $slides = Slide::where('parent_id', 2)->get();
    	return view('brands.show', compact('slides'));
    }
}
