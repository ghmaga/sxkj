<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use Illuminate\Http\Request;

class CareerController extends Controller
{
    public function index()
    {
    	//获取首页轮换图id=4
        $slides = Slide::where('parent_id', 4)->get();
    	return view('career.index', compact('slides'));
    }
}