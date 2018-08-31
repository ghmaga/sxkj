<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use App\Models\Collaboratory;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    //
    public function index()
    {
    	$slides = Slide::where('parent_id', 3)->get();
    	$links = Collaboratory::all();
    	return view('about.index', compact('slides', 'links'));
    }
}
