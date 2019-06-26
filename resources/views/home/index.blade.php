@extends('layouts.app')
@section('title', 'Home')
@section('content')

<div class="container"><h2 class="title">{{ (Session::get('locale') == 'en') ?  'ABOUT ALL' : '关于我们' }}</h2></div>
<div class="special-box">
	<div class="special-left"></div>
	<div class="container special-content">
		<div class="word">
			@if(Session::get('locale') == 'en')
				{!! $about->en_body !!}
			@else
				{!! $about->body !!}
			@endif
			<div class="text-right"><a href="{{ route('about') }}" class="more1">{{ (Session::get('locale') == 'en') ?  'MORE ABOUT SINSITECH' : '关于我们' }}</a></div>
		</div>
		<h2 class="title">{{ (Session::get('locale') == 'en') ?  'POPULAR PORDUCT' : '产品' }}</h2>
		<a href="javascript:;" class="swiper-home-button-prev"></a>
		<a href="javascript:;" class="swiper-home-button-next"></a>
		<div class="swiper-container swiper-home" id="swiper-home">
			<div class="swiper-wrapper">
				@foreach($products as $product)
				<a href="{{ route('product.show', $product['id']) }}" class="swiper-slide">
					<div class="popular-title color-white">{{ (Session::get('locale') == 'en') ?  $product['en_title'] : $product['title'] }}</div>
					<div class="popular-image"><img src="uploads/{{ $product['image'] }}" alt=""></div>
					<div class="more2">{{ (Session::get('locale') == 'en') ?  'READ MORE' : '了解更多' }}</div>
				</a>
				@endforeach
			</div>
		</div>
	</div>
</div>
<div class="home-news">
	<div class="container">
		<h2 class="title"><a href="{{ route('news') }}" class="color-white">{{ (Session::get('locale') == 'en') ? 'NEWS' : '新闻' }}</a></h2>
		<dl>
			<dt><a href="{{ route('news.show', $news->id) }}"><img src="uploads/{{ $news->image }}" alt=""></a></dt>
			<dd class="color-white">
				<a href="{{ route('news.show', $news->id) }}" class="color-white">{{ (Session::get('locale') == 'en') ? $news->en_title : $news->title }}</a>
				@if(Session::get('locale') == 'en')
					{!! $news->en_description !!}
				@else
					{!! $news->description !!}
				@endif
			</dd>
		</dl>
	</div>
</div>
<script>
$('#swiper-top').addClass('swiper-top-home');
$('#content').addClass('content-home');
$('#swiper-home .swiper-slide:odd').addClass('nobg');
new Swiper('#swiper-home', {
	loop: true,
	autoplay: 4000,
	slidesPerView: 'auto',
	nextButton: '.swiper-home-button-next',
	prevButton: '.swiper-home-button-prev'
});
</script>
@stop
