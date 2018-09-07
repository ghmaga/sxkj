@extends('layouts.app')
@section('title', 'Brands')

@section('content')
<div class="container">
	<div class="tags">
		<a href="{{ route('home') }}">{{ (Session::get('locale') == 'en') ?  'Home' : '首页' }}</a>
		&gt;
		<a href="{{ route('brands') }}">{{ (Session::get('locale') == 'en') ?  'BRAND' : '厂牌' }}</a>
	</div>
	<ul class="brand-list">
		@foreach($brands as $val)
				@if(Session::get('locale') == 'en')
					{{ $val['en_title'] }}
				@else
					{{ $val['title'] }}
				@endif
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
							<a href="{{ route('brands.show', $val['id']) }}" class="more4">{{ (Session::get('locale') == 'en') ?  'LEARN MORE' : '查看更多' }}</a>
						</dd>
					</dl>
				</li>
		@endforeach
	</ul>
	<div class="brand-page">
		{{ $brands->links() }}
	<!-- <a href="#">1</a>
		<strong>2</strong>
		<a href="#">3</a>
		<a href="#">4</a>
		<a href="#">5</a> -->
	</div>
</div>
@stop