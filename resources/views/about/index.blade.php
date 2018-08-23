@extends('layouts.app')
@section('title', 'About')

@section('content')
<div class="tab">
	<a href="{{ route('about') }}" class="{{ active_class(if_uri_pattern('about'), 'hover', '') }}">{{ (Session::get('locale') == 'en') ? 'ABOUT US' : '关于我们' }}</a>
	<a href="{{ route('news') }}" class="{{ active_class(if_uri_pattern('news'), 'hover', '') }}">{{ (Session::get('locale') == 'en') ? 'NEWS' : '新闻' }}</a>
</div>
<div class="about-blank"></div>
<div class="about-box"></div>
<div class="container">
	<img src="image/5.jpg" alt="" class="float-right">
	<h2 class="title">ABOUT US</h2>
	<div class="about">
		Sinsitech Instruments, Inc. is a global leader in the development, manufacture and sale of life science instrumentation, including imaging & microscopy, multi-mode detection, liquid handling and automation systems. Our philosophy transcends conventional thinking and challenges the status quo. We develop fresh, original solutions by unifying concepts that often appear to be opposed. It means to shape and reshape. To engineer, build, deliver and support products that best serve the marketplace by providing what you need, when you need it. <br>
		<br>
		Science First. It’s the difference between leading and following. <br>
		<br>
		<br>
		TEL: 010-57206578, 010-57206576 <br>
		Hotline: 400-687-6366 <br>
		FAX: 010-84874116 <br>
		<a href="mailto:service@sinsitech.com">E-mail: service@sinsitech.com</a>
	</div>
	<h2 class="title">Collaboratory</h2>
	<ul class="partner">
		<li><a href="#"><img src="image/p1.jpg" alt=""></a></li>
		<li><a href="#"><img src="image/p2.jpg" alt=""></a></li>
		<li><a href="#"><img src="image/p3.jpg" alt=""></a></li>
		<li><a href="#"><img src="image/p4.jpg" alt=""></a></li>
		<li><a href="#"><img src="image/p5.jpg" alt=""></a></li>
		<li><a href="#"><img src="image/p6.jpg" alt=""></a></li>
		<li><a href="#"><img src="image/p7.jpg" alt=""></a></li>
		<li><a href="#"><img src="image/p8.jpg" alt=""></a></li>
		<li><a href="#"><img src="image/p9.jpg" alt=""></a></li>
		<li><a href="#"><img src="image/p10.jpg" alt=""></a></li>
	</ul>
</div>
@stop