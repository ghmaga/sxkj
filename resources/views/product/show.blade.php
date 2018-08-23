@extends('layouts.app')
@section('title', 'Product')

@section('content')
<div class="container">
	<div class="tags">
		<a href="{{ route('home')}}">{{ (Session::get('locale') == 'en') ? 'Home' : '主页' }}</a>
		&gt;
		<a href="{{ route('product') }}">{{ (Session::get('locale') == 'en') ? 'PRODUCT' : '产品' }}</a>
		&gt;
		<a href="#">{{ (Session::get('locale') == 'en') ? $product->en_title : $product->title }}</a>
	</div>	
	<h2 class="title">{{ (Session::get('locale') == 'en') ? $product->en_title : $product->title }}</h2>
	<div class="product-detail">
		@foreach($skus as $sku)
		<dl>
			<dt><img src="/uploads/{{ $sku['image'] }}" alt=""></dt>
			<dd>
				{{ (Session::get('locale') == 'en') ? $sku['en_title'] : $sku['title'] }}<br>
				<br>
				{{ (Session::get('locale') == 'en') ? $sku['en_description'] : $sku['description'] }}
			</dd>
		</dl>
		@endforeach
	</div>
	<h2 class="title">VIDEO</h2>
	<ul class="video">
		<li><video controls src="http://vjs.zencdn.net/v/oceans.mp4" poster="http://vjs.zencdn.net/v/oceans.png"></video>heading</li>
		<li><video controls src="http://vjs.zencdn.net/v/oceans.mp4" poster="http://vjs.zencdn.net/v/oceans.png"></video>heading</li>
	</ul>
	<h2 class="title">DOWNLOAD</h2>
	<ul class="download">
		<li><span>Categroy</span><span>File Name</span><span>Download</span></li>
		<li><span>彩页</span><span>File Name</span><span><a href="#" class="download-link"></a></span></li>
		<li><span>规格</span><span>File Name</span><span><a href="#" class="download-link"></a></span></li>
		<li><span>应用指南</span><span>File Name</span><span><a href="#" class="download-link"></a></span></li>
	</ul>
</div>
@stop