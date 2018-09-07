@extends('layouts.app')
@section('title', 'Product')

@section('content')
@if(Session::get('locale') == 'en')
<div class="tab">
	<a href="#0" class="hover">Description</a>
	<a href="#1">Videos</a>
	<a href="#2">Downloads</a>
</div>
@else
<div class="tab">
	<a href="#0" class="hover">产品详情</a>
	<a href="#1">视频</a>
	<a href="#2">文件下载</a>
</div>
@endif
<div class="container">
	<div class="tags">
		<a href="{{ route('home')}}">{{ (Session::get('locale') == 'en') ? 'Home' : '主页' }}</a>
		&gt;
		<a href="{{ route('product') }}">{{ (Session::get('locale') == 'en') ? 'PRODUCT' : '产品' }}</a>
		&gt;
		<a href="#">{{ (Session::get('locale') == 'en') ? $product->en_title : $product->title }}</a>
	</div>	
	<h2 class="title" id="0" name="0">{{ (Session::get('locale') == 'en') ? $product->en_title : $product->title }}</h2>
	@if(count($skus))
		<div class="product-detail">
			@foreach($skus as $sku)
			<dl>
				<dt><img src="/uploads/{{ $sku['image'] }}" alt=""></dt>
				<dd>
					{{ (Session::get('locale') == 'en') ? $sku['en_title'] : $sku['title'] }}<br>
					<br>
					@if(Session::get('locale') == 'en')
						{!! $sku['en_description'] !!}
					@else
						{!! $sku['description'] !!}
					@endif
					
				</dd>
			</dl>
			@endforeach
		</div>
	@endif
	@if(count($videos))
		<h2 class="title" id="1" name="1">{{ (Session::get('locale') == 'en') ? 'VIDEO' : '视频' }}</h2>
		<ul class="video">
			@foreach($videos as $val)
				<li>
					<video controls src="/uploads/{{ $val['video'] }}" poster="/uploads/{{ $val['image'] }}"></video>{{ (Session::get('locale') == 'en') ? $val['en_filename'] : $val['filename'] }}
				</li>
			@endforeach
		</ul>
	@endif

	@if(count($files))
		<h2 class="title" id="2" name="2">{{ (Session::get('locale') == 'en') ? 'DOWNLOAD' : '下载' }}</h2>
		<ul class="download">
			<li><span>{{ (Session::get('locale') == 'en') ? 'Categroy' : '分类' }}</span><span>{{ (Session::get('locale') == 'en') ? 'File Name' : '文件名称' }}</span><span>{{ (Session::get('locale') == 'en') ? 'Download' : '下载' }}</span></li>
			@foreach($files as $val)
				<li>
					<span>{{ (Session::get('locale') == 'en') ? $val['en_catename'] : $val['catename'] }}</span><span>{{ (Session::get('locale') == 'en') ? $val['en_filename'] : $val['filename'] }}</span><span><a href="/uploads/{{ $val['file'] }}"
						@if(Auth::check())
							class="download-link"
						@else
							class="download-link nologin"
						@endif
					></a></span>
				</li>
			@endforeach
		</ul>
	@endif
</div>
<script type="text/javascript">
$(function(){
	$('.tab a').click(function(event) {
		$(this).siblings('.hover').removeClass('hover');
		$(this).addClass('hover');
	});
})
</script>
@stop