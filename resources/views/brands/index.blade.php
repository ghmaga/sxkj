@extends('layouts.app')
@section('title', 'Brands')

@section('content')
<div class="container">
	<div class="tags">
		<a href="{{ route('home') }}">{{ (Session::get('locale') == 'en') ?  'Home' : '首页' }}</a>
		&gt;
		<a href="{{ route('brands') }}">{{ (Session::get('locale') == 'en') ?  'BRAND' : '厂牌' }}</a>
	</div>
	<h2 class="title">GYROS</h2>
	<ul class="brand-list">
		@foreach($brands as $val)
		<li>
			<dl class="brand-item">
				<dt><img src="/uploads/{{ $val['image'] }}" alt=""></dt>
				<dd>
					<ul class="product-item-point">
						@if(Session::get('locale') == 'en')
							{!! $val['en_description'] !!}
						@else
							{!! $val['description'] !!}
						@endif
					</ul>
					<a href="{{ route('brands.show', $val['id']) }}" class="more4">LEARN MORE</a>
				</dd>
			</dl>
		</li>
		@endforeach
	</ul>
	<div class="brand-page">		
		{{-- $brands->links() --}}
	</div>
</div>
@stop