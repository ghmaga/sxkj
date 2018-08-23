@extends('layouts.app')
@section('title', 'Home')
@section('content')

<div class="container"><h2 class="title">ABOUT ALL</h2></div>
<div class="special-box">
	<div class="special-left"></div>
	<div class="container special-content">
		<div class="word">
			Sinsitech Instruments, Inc. is a global leader in the development, manufacture and sale of life science instrumentation, including imaging & microscopy, multi-mode detection, liquid handling and automation systems. Our philosophy transcends conventional thinking and challenges the status quo. We develop fresh, original solutions by unifying concepts that often appear to be opposed. It means to shape and reshape. To engineer, build, deliver and support products that best serve the marketplace by providing what you need, when you need it. <br>
			<br>
			<b>Science First.</b> It’s the difference between leading and following.
			<div class="text-right"><a href="{{ route('about') }}" class="more1">{{ (Session::get('locale') == 'en') ?  'MORE ABOUT SINSITECH' : '关于我们' }}</a></div>
		</div>
		<h2 class="title">POPULAR PORDUCT</h2>
		<a href="javascript:;" class="swiper-home-button-prev"></a>
		<a href="javascript:;" class="swiper-home-button-next"></a>
		<div class="swiper-container swiper-home" id="swiper-home">
			<div class="swiper-wrapper">
				@foreach($products as $product)
				<a href="{{ route('product.show', $product['id']) }}" class="swiper-slide">
					<div class="popular-title color-white">{{ (Session::get('locale') == 'en') ?  $product['en_title'] : $product['title'] }}</div>
					<div class="popular-image"><img src="uploads/{{ $product['image'] }}" alt=""></div>
					<div class="more2">READ MORE</div>
				</a>
				@endforeach;
			</div>
		</div>
	</div>
</div>
<div class="home-news">
	<div class="container">
		<h2 class="title color-white">{{ (Session::get('locale') == 'en') ? 'NEWS' : '新闻' }}</h2>
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
	slidesPerView: 'auto',
	nextButton: '.swiper-home-button-next',
	prevButton: '.swiper-home-button-prev'
});
</script>
@stop