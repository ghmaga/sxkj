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
		<a href="{{ route('product.cate', 2) }}"><span class="product-tag-icon"><img src="/image/p1.png" alt=""></span>{{ (Session::get('locale') == 'en') ? 'Drug Discovery' : '药物开发' }}</a>
		<a href="{{ route('product.cate', 4) }}"><span class="product-tag-icon"><img src="/image/p2.png" alt=""></span>{{ (Session::get('locale') == 'en') ? 'Immunology' : '免疫组学' }}</a>
		<a href="{{ route('product.cate', 5) }}"><span class="product-tag-icon"><img src="/image/p3.png" alt=""></span>{{ (Session::get('locale') == 'en') ? 'Genomics' : '基因组学' }}</a>
		<a href="{{ route('product.cate', 3) }}"><span class="product-tag-icon"><img src="/image/p4.png" alt=""></span>{{ (Session::get('locale') == 'en') ? 'Molecular Biology' : '分子生物' }}</a>
		<a href="{{ route('product.cate', 0) }}"><span class="product-tag-icon"><img src="/image/p5.png" alt=""></span>{{ (Session::get('locale') == 'en') ? 'Precision Medicine' : '精准医疗' }}</a>
		<a href="{{ route('product.cate', 6) }}"><span class="product-tag-icon"><img src="/image/p6.png" alt=""></span>{{ (Session::get('locale') == 'en') ? 'Common Instruments' : '一般仪器' }}</a>
		<a href="{{ route('product.cate', 7) }}"><span class="product-tag-icon"><img src="/image/p7.png" alt=""></span>{{ (Session::get('locale') == 'en') ? 'Zoopery Instrumens' : '动物仪器' }}</a>
		<a href="{{ route('product.cate', 1) }}"><span class="product-tag-icon"><img src="/image/p8.png" alt=""></span>{{ (Session::get('locale') == 'en') ? 'Cell Biology' : '细胞生物学' }}</a>
		<a href="{{ route('product.cate', '-1') }}"><span class="product-tag-icon"><img src="/image/p0.png" alt=""></span>{{ (Session::get('locale') == 'en') ? 'View all Products' : '所有产品' }}</a>
	</div>
	<h2 class="title">GYROS</h2>
	<div class="product-item">
		@foreach($pushproduct as $product)
			<dl>
				<dt><img src="/uploads/{{ $product['image'] }}" alt=""></dt>
				<dd>
					<ul class="product-item-point">
						@if(Session::get('locale') == 'en')
							{!! $product['en_body'] !!}
						@else
							{!! $product['body'] !!}
						@endif
					</ul>
					<a href="{{ route('product.show', $product['id']) }}" class="more1">{{ (Session::get('locale') == 'en' ? 'LEARN MORE' : '更多' ) }}</a>
				</dd>
			</dl>
		@endforeach
	</div>
</div>
@stop