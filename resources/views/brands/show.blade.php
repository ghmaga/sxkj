@extends('layouts.app')
@section('title', 'Brands')

@section('content')
<div class="container">
	<div class="tags">
		<a href="{{ route('home') }}">{{ (Session::get('locale') == 'en') ?  'Home' : '首页' }}</a>
		&gt;
		<a href="{{ route('brands') }}">{{ (Session::get('locale') == 'en') ?  'BRAND' : '厂牌' }}</a>
	</div>
	<h2 class="title">{{ (Session::get('locale') == 'en') ? $brand->en_title : $brand->title }}</h2>
	<ul class="brand-list">
		<li>
			<dl class="brand-item">
				<dt><img src="/uploads/{{ $brand->image }}" alt=""></dt>
				<dd>
					<ul class="product-item-point">
						@foreach($products as $product)
							@if(Session::get('locale') == 'en')
								<li>{{ $product['en_title'] }}</li>
							@else
								<li>{{ $product['title'] }}</li>
							@endif
						@endforeach
					</ul>
				</dd>
			</dl>
		</li>
	</ul>
	<h2 class="title">{{ (Session::get('locale') == 'en') ? 'PRODUCT' : '产品' }}</h2>
	<div class="product-list">
		@foreach($products as $product)						
		<a href="{{ route('product.show', $product['id']) }}">
			<div class="product-list-title">{{ (Session::get('locale') == 'en') ? $product['en_title'] : $product['title'] }}</div>
			<div class="product-list-image"><img src="/uploads/{{ $product['image'] }}" alt=""></div>
			<div class="more5">{{ (Session::get('locale') == 'en') ? 'SEE MORE' : '更多详情' }}</div>
		</a>
		@endforeach
	</div>
</div>
@stop