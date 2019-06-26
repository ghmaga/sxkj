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
	<h2 class="title">{{ (Session::get('locale') == 'en') ? 'ABOUT US' : '关于我们' }}</h2>
	<div class="about">
		@if(Session::get('locale') == 'en')
	        	{!! $about->en_body !!}

		@else
			{!! $about->body !!}
		@endif
		<br>
		<br>
		TEL: 010-61666616-602 <br>
		Hotline: 400-687-6366 <br>
		FAX: 010-84874116 <br>
		<a href="mailto:info@sinsitech.com">E-mail: info@sinsitech.com</a>
	</div>
	<h2 class="title">{{ (Session::get('locale') == 'en') ? 'Collaboratory' : '合作实验室' }}</h2>
	<ul class="partner">
		@foreach($links as $val)
			<li><a href="{{ $val['link'] }}"><img src="/uploads/{{ $val['image'] }}" alt=""></a></li>
		@endforeach
	</ul>
</div>
@stop
