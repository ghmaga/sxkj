@extends('layouts.app')
@section('title', 'News')

@section('content')
<div class="tab">
	<a href="{{ route('about') }}" class="{{ active_class(if_route('about'), 'hover', '') }}">{{ (Session::get('locale') == 'en') ? 'ABOUT US' : '关于我们' }}</a>
	<a href="{{ route('news') }}" class="{{ active_class(if_route('news.show'), 'hover', '') }}">{{ (Session::get('locale') == 'en') ? 'NEWS' : '新闻' }}</a>
</div>
<div class="container">
	<h2 class="news-detail-title">{{ (Session::get('locale') == 'en') ? $news->en_title : $news->title }}</h2>
	<div class="news-detail-content">
		@if(Session::get('locale') == 'en')
			{!! $news->en_body !!}
		@else
			{!! $news->body !!}
		@endif
	</div>
	<div class="news-detail-page">
		@if($previousPostID)
		<a href="{{route('news.show', $previousPostID)}}">Prev News</a>
		@else
		<a href="#">{{ (Session::get('locale') == 'en') ? 'Null' : '没有了' }}</a>
		@endif
		@if($nextPostId)
		<a href="{{route('news.show', $nextPostId)}}">Next News</a>
		@else
		<a href="#">{{ (Session::get('locale') == 'en') ? 'Null' : '没有了' }}</a>
		@endif
	</div>
</div>
@stop