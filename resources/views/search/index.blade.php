@extends('layouts.app')
@section('title', 'About')

@section('content')
<div class="container">
	<style>.swiper-top { display: none; } .content { margin-top: 120px; } .news-content { padding-left: 0; }</style>
	<h2 class="title">{{ (Session::get('locale') == 'en') ? 'Search Result' : '搜索结果' }}</h2>
	<ul class="news-list">
		@foreach($products as $val)
			<li>
				<a href="{{ route('product.index', $val['id']) }}" class="more3">Consult</a>
				<div class="news-content">
					<a href="{{ route('product.index', $val['id']) }}">{{ (Session::get('locale') == 'en') ? $val['en_title'] : $val['title'] }}</a>
					<div class="news-description">
						@if(Session::get('locale') == 'en')
							{!! $val['en_description'] !!}
						@else
							{!! $val['description'] !!}
						@endif
					</div>
					<div class="news-time">{{ date($val['created_at']) }}</div>
				</div>
			</li>
		@endforeach
	</ul>
	
</div>
@stop