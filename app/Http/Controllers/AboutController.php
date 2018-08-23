<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    //
    public function index()
    {
    	$slides = Slide::where('parent_id', 3)->get();
    	return view('about.index', compact('slides'));
    }
}
