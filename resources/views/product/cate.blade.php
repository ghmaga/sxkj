@extends('layouts.app')
@section('title', 'Product')

@section('content')
<div class="container">
	<div class="tags">
		<a href="{{ route('home') }}">{{ (Session::get('locale') == 'en') ? 'Home' : '主页' }}</a>
		&gt;
		<a href="{{ route('product') }}">{{ (Session::get('locale') == 'en') ? 'PRODUCT' : '产品' }}</a>
	</div>
	<div class="product-tags">
		<a href="{{ route('product.cate', 0) }}"><span class="product-tag-icon"><img src="/image/p1.png" alt=""></span>Drug Discovery</a>
		<a href="{{ route('product.cate', 1) }}"><span class="product-tag-icon"><img src="/image/p2.png" alt=""></span>Immunology</a>
		<a href="{{ route('product.cate', 2) }}"><span class="product-tag-icon"><img src="/image/p3.png" alt=""></span>Genomics</a>
		<a href="{{ route('product.cate', 3) }}"><span class="product-tag-icon"><img src="/image/p4.png" alt=""></span>Molecular Biology</a>
		<a href="{{ route('product.cate', 4) }}"><span class="product-tag-icon"><img src="/image/p5.png" alt=""></span>Precision Medicine</a>
		<a href="{{ route('product.cate', 5) }}"><span class="product-tag-icon"><img src="/image/p6.png" alt=""></span>Common Instruments</a>
		<a href="{{ route('product.cate', 6) }}"><span class="product-tag-icon"><img src="/image/p7.png" alt=""></span>Zoopery Instrumens</a>
		<a href="{{ route('product.cate', 7) }}"><span class="product-tag-icon"><img src="/image/p8.png" alt=""></span>Cell Biology</a>
		<a href="{{ route('product.cate', '-1') }}"><span class="product-tag-icon"><img src="/image/p0.png" alt=""></span>View all Products</a>
	</div>
	<h2 class="title">GYROS</h2>
	<div class="product-item">
		@foreach($catetories as $catetory)
			<dl>
				<dt><img src="/uploads/{{ $catetory['image'] }}" alt=""></dt>
				<dd>
					<ul class="product-item-point">
						@if(Session::get('locale') == 'en')
							{!! $catetory['en_body'] !!}
						@else
							{!! $catetory['body'] !!}
						@endif
					</ul>
					<a href="{{ route('product.show', $catetory['id']) }}" class="more1">{{ (Session::get('locale') == 'en' ? 'LEARN MORE' : '更多' ) }}</a>
				</dd>
			</dl>
		@endforeach
	</div>
</div>
@stop