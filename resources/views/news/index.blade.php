@extends('layouts.app')
@section('title', 'About')

@section('content')
<div class="tab">
	<a href="{{ route('about') }}" class="{{ active_class(if_uri_pattern('about'), 'hover', '') }}">{{ (Session::get('locale') == 'en') ? 'ABOUT US' : '关于我们' }}</a>
	<a href="{{ route('news') }}" class="{{ active_class(if_uri_pattern('news'), 'hover', '') }}">{{ (Session::get('locale') == 'en') ? 'NEWS' : '新闻' }}</a>
</div>
<div class="about-blank"></div>
<div class="container">
	<h2 class="title">{{ (Session::get('locale') == 'en') ? 'NEWS' : '新闻' }}</h2>
	<ul class="news-list">
		@foreach($news as $new)
			<li>
				<a href="{{ route('news.show', $new['id']) }}" class="news-image"><img src="/uploads/{{ $new['image'] }}" alt=""></a>
				<a href="{{ route('news.show', $new['id']) }}" class="more3">Consult</a>
				<div class="news-content">
					<a href="{{ route('news.show', $new['id']) }}">{{ (Session::get('locale') == 'en') ? $new['en_title'] : $new['title'] }}</a>
					<div class="news-description">
						@if(Session::get('locale') == 'en')
							{!! $new['en_description'] !!}
						@else
							{!! $new['description'] !!}
						@endif
					</div>
					<div class="news-time">{{ date($new['created_at']) }}</div>
				</div>
			</li>
		@endforeach
	</ul>
	
</div>
@stop