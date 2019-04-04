<div class="header">
	<div class="top">
		<div class="container color-white">
			<a href="tel:010-61666616-602" class="color-white">{{ (Session::get('locale') == 'en') ? 'TEL:' : '电话：' }}010-61666616-602</a>
			@guest
				<a href="javascript:;" class="color-white user login-btn">{{ (Session::get('locale') == 'en') ? 'LOGIN' : '登录' }}</a>
            @else
            	{{ Auth::user()->name }}
                <a href="javascript:;" onclick="document.getElementById('logout-form').submit();" class="color-white">Logout</a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">{{ csrf_field() }}</form>
            @endguest
			@if(Session::get('locale') == 'en')
			<a href="{{ url('/changeLocale/zh') }}" class="color-white">CN</a>
			@else
			<a href="{{ url('/changeLocale/en') }}" class="color-white">EN</a>
			@endif
		</div>
	</div>
	<div class="container clear">
		<h1 class="logo"><a href="{{route('home')}}"><img src="/image/logo.png" height="63" alt="森西科技"></a></h1>
		<a href="javascript:;" class="menu-link"></a>
		<div class="search">
			<form action="{{ route('search') }}">
				<input type="text" name="search" placeholder="Search Keyword">
				<input type="submit" value=" ">
			</form>
		</div>
		<ul class="navigation">
			<li><a href="{{ route('home') }}" class="{{ active_class(if_uri_pattern('/'), 'current', '') }}">{{ (Session::get('locale') == 'en') ? 'HOME' : '主页' }}</a></li>
			<li>
				<a href="{{ route('product') }}" class="{{ active_class(if_uri_pattern('product'), 'current', '') }}">{{ (Session::get('locale') == 'en') ? 'PRODUCT' : '产品' }}</a>
				<div class="dropmenu">
					<div class="container">
						<div class="prodrop-left">
							<div class="prodroplist">
								<a href="{{ route('product.cate', 1) }}">{{ (Session::get('locale') == 'en') ? 'Cell Biology' : '细胞生物学' }}</a>
								<a href="{{ route('product.cate', 3) }}">{{ (Session::get('locale') == 'en') ? 'Molecular Biology' : '分子生物学' }}</a>
								<a href="{{ route('product.cate', 4) }}">{{ (Session::get('locale') == 'en') ? 'Immunology' : '免疫组学' }}</a>
								<a href="{{ route('product.cate', 5) }}">{{ (Session::get('locale') == 'en') ? 'Genomics' : '基因组学' }}</a>
								<a href="{{ route('product.cate', 8) }}">{{ (Session::get('locale') == 'en') ? 'Precision Medicine' : '精准医学' }}</a>
								<a href="{{ route('product.cate', 2) }}">{{ (Session::get('locale') == 'en') ? 'Drug Discovery' : '药物开发' }}</a>							
								<a href="{{ route('product.cate', 7) }}">{{ (Session::get('locale') == 'en') ? 'Zoopery Instrumens' : '实验动物' }}</a>
								<a href="{{ route('product.cate', 6) }}">{{ (Session::get('locale') == 'en') ? 'Common Instruments' : '常规设备' }}</a>
								<a href="{{ route('product.cate', -1) }}" class="viewall">{{ (Session::get('locale') == 'en') ? 'View all Products' : '所有产品' }}</a>
							</div>
						</div>
						<div class="prodrop-right">
							<div class="prodroplist-image">
								<a href="{{ route('product.show', $cate1[0]['id']) }}">
									<dl>
										<dt>
											<img src="/uploads/{{ $cate1[0]->image }}" alt="">
											<p>
												@if(Session::get('locale') == 'en')
													{{ $cate1[0]->en_title }}
												@else
													{{ $cate1[0]->title }}
												@endif
											</p>
										</dt>
										<dd>
											<ul class="product-item-point">
												@if(Session::get('locale') == 'en')
													{!! $cate1[0]->en_body !!}
												@else
													{!! $cate1[0]->body !!}
												@endif
											</ul>
										</dd>
									</dl>
								</a>
								<div class="recommend">
									<strong>OTHER PRODUCTS:</strong>
									@foreach($cate1 as $val)
										<a href="{{ route('product.show', $val['id']) }}">
											@if(Session::get('locale') == 'en')
												{{ $val['en_title'] }}
											@else
												{{ $val['title'] }}
											@endif
										</a>
									@endforeach
								</div>
							</div>								
								
							<div class="prodroplist-image">
								<a href="{{ route('product.show', $cate3[0]['id']) }}">
									<dl>
										<dt>
											<img src="/uploads/{{ $cate3[0]->image }}" alt="">
											<p>
												@if(Session::get('locale') == 'en')
													{{ $cate3[0]->en_title }}
												@else
													{{ $cate3[0]->title }}
												@endif
											</p>
										</dt>
										<dd>
											<ul class="product-item-point">
												@if(Session::get('locale') == 'en')
													{!! $cate3[0]->en_body !!}
												@else
													{!! $cate3[0]->body !!}
												@endif
											</ul>
										</dd>
									</dl>
								</a>
								<div class="recommend">
									<strong>OTHER PRODUCTS:</strong>
									@foreach($cate3 as $val)
										<a href="{{ route('product.show', $val['id']) }}">
											@if(Session::get('locale') == 'en')
												{{ $val['en_title'] }}
											@else
												{{ $val['title'] }}
											@endif
										</a>
									@endforeach
								</div>
							</div>

							<div class="prodroplist-image">
								<a href="{{ route('product.show', $cate4[0]['id']) }}">
									<dl>
										<dt>
											<img src="/uploads/{{ $cate4[0]->image }}" alt="">
											<p>
												@if(Session::get('locale') == 'en')
													{{ $cate4[0]->en_title }}
												@else
													{{ $cate4[0]->title }}
												@endif
											</p>
										</dt>
										<dd>
											<ul class="product-item-point">
												@if(Session::get('locale') == 'en')
													{!! $cate4[0]->en_body !!}
												@else
													{!! $cate4[0]->body !!}
												@endif
											</ul>
										</dd>
									</dl>
								</a>
								<div class="recommend">
									<strong>OTHER PRODUCTS:</strong>
									@foreach($cate4 as $val)
										<a href="{{ route('product.show', $val['id']) }}">
											@if(Session::get('locale') == 'en')
												{{ $val['en_title'] }}
											@else
												{{ $val['title'] }}
											@endif
										</a>
									@endforeach
								</div>
							</div>

							<div class="prodroplist-image">
								<a href="{{ route('product.show', $cate5[0]['id']) }}">
									<dl>
										<dt>
											<img src="/uploads/{{ $cate5[0]->image }}" alt="">
											<p>
												@if(Session::get('locale') == 'en')
													{{ $cate5[0]->en_title }}
												@else
													{{ $cate5[0]->title }}
												@endif
											</p>
										</dt>
										<dd>
											<ul class="product-item-point">
												@if(Session::get('locale') == 'en')
													{!! $cate5[0]->en_body !!}
												@else
													{!! $cate5[0]->body !!}
												@endif
											</ul>
										</dd>
									</dl>
								</a>
								<div class="recommend">
									<strong>OTHER PRODUCTS:</strong>
									@foreach($cate5 as $val)
										<a href="{{ route('product.show', $val['id']) }}">
											@if(Session::get('locale') == 'en')
												{{ $val['en_title'] }}
											@else
												{{ $val['title'] }}
											@endif
										</a>
									@endforeach
								</div>
							</div>

							<div class="prodroplist-image">
								<a href="{{ route('product.show', $cate8[0]['id']) }}">
									<dl>
										<dt>
											<img src="/uploads/{{ $cate8[0]->image }}" alt="">
											<p>
												@if(Session::get('locale') == 'en')
													{{ $cate8[0]->en_title }}
												@else
													{{ $cate8[0]->title }}
												@endif
											</p>
										</dt>
										<dd>
											<ul class="product-item-point">
												@if(Session::get('locale') == 'en')
													{!! $cate8[0]->en_body !!}
												@else
													{!! $cate8[0]->body !!}
												@endif
											</ul>
										</dd>
									</dl>
								</a>
								<div class="recommend">
									<strong>OTHER PRODUCTS:</strong>
									@foreach($cate8 as $val)
										<a href="{{ route('product.show', $val['id']) }}">
											@if(Session::get('locale') == 'en')
												{{ $val['en_title'] }}
											@else
												{{ $val['title'] }}
											@endif
										</a>
									@endforeach
								</div>
							</div>


							<div class="prodroplist-image">
								<a href="{{ route('product.show', $cate2[0]['id']) }}">
									<dl>
										<dt>
											<img src="/uploads/{{ $cate2[0]->image }}" alt="">
											<p>
												@if(Session::get('locale') == 'en')
													{{ $cate2[0]->en_title }}
												@else
													{{ $cate2[0]->title }}
												@endif
											</p>
										</dt>
										<dd>
											<ul class="product-item-point">
												@if(Session::get('locale') == 'en')
													{!! $cate2[0]->en_body !!}
												@else
													{!! $cate2[0]->body !!}
												@endif
											</ul>
										</dd>
									</dl>
								</a>
								<div class="recommend">
									<strong>OTHER PRODUCTS:</strong>
									@foreach($cate2 as $val)
										<a href="{{ route('product.show', $val['id']) }}">
											@if(Session::get('locale') == 'en')
												{{ $val['en_title'] }}
											@else
												{{ $val['title'] }}
											@endif
										</a>
									@endforeach
								</div>
							</div>

							<div class="prodroplist-image">
								<a href="{{ route('product.show', $cate7[0]['id']) }}">
									<dl>
										<dt>
											<img src="/uploads/{{ $cate7[0]->image }}" alt="">
											<p>
												@if(Session::get('locale') == 'en')
													{{ $cate7[0]->en_title }}
												@else
													{{ $cate7[0]->title }}
												@endif
											</p>
										</dt>
										<dd>
											<ul class="product-item-point">
												@if(Session::get('locale') == 'en')
													{!! $cate7[0]->en_body !!}
												@else
													{!! $cate7[0]->body !!}
												@endif
											</ul>
										</dd>
									</dl>
								</a>
								<div class="recommend">
									<strong>OTHER PRODUCTS:</strong>
									@foreach($cate7 as $val)
										<a href="{{ route('product.show', $val['id']) }}">
											@if(Session::get('locale') == 'en')
												{{ $val['en_title'] }}
											@else
												{{ $val['title'] }}
											@endif
										</a>
									@endforeach
								</div>
							</div>

							<div class="prodroplist-image">	
								<a href="{{ route('product.show', $cate6[0]['id']) }}">
									<dl>
										<dt>
											<img src="/uploads/{{ $cate6[0]->image }}" alt="">
											<p>
												@if(Session::get('locale') == 'en')
													{{ $cate6[0]->en_title }}
												@else
													{{ $cate6[0]->title }}
												@endif
											</p>
										</dt>
										<dd>
											<ul class="product-item-point">
												@if(Session::get('locale') == 'en')
													{!! $cate6[0]->en_body !!}
												@else
													{!! $cate6[0]->body !!}
												@endif
											</ul>
										</dd>
									</dl>
								</a>
								<div class="recommend">
									<strong>OTHER PRODUCTS:</strong>
									@foreach($cate6 as $val)
										<a href="{{ route('product.show', $val['id']) }}">
											@if(Session::get('locale') == 'en')
												{{ $val['en_title'] }}
											@else
												{{ $val['title'] }}
											@endif
										</a>
									@endforeach
								</div>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<a href="{{ route('brands') }}" class="{{ active_class(if_uri_pattern('brands'), 'current', '') }}">{{ (Session::get('locale') == 'en') ? 'BRANDS' : '品牌' }}</a>
				<div class="dropmenu">
					<div class="swiper-brands container">
						<div class="swiper-container" id="swiper-brands">
							<div class="swiper-wrapper">
								@foreach($brands as $val)
								<a class="swiper-slide" href="{{ route('brands.show', $val['id']) }}"><img src="/uploads/{{ $val['image'] }}" alt=""></a>
								@endforeach
							</div>
						</div>
						<a href="javascript:;" class="swiper-brands-button-next"></a>
						<a href="javascript:;" class="swiper-brands-button-prev"></a>
					</div>
				</div>
			</li>
			<li><a href="{{ route('about') }}" class="{{ active_class(if_uri_pattern('about'), 'current', '') }}">{{ (Session::get('locale') == 'en') ? 'ABOUT US' : '关于我们' }}</a></li>
			<li><a href="{{ route('career') }}" class="{{ active_class(if_uri_pattern('career'), 'current', '') }}">{{ (Session::get('locale') == 'en') ? 'CAREER' : '招聘' }}</a></li>
		</ul>
	</div>
</div>
<div class="swiper-container swiper-top" id="swiper-top">
	<div class="swiper-wrapper">
		@foreach($slides as $slide)
			<div class="swiper-slide" style="background-image: url(/uploads/{{ (Session::get('locale') == 'en') ? $slide['en_image'] : $slide['image'] }});">
				@if(Route::currentRouteName() == 'product.show')
					<p class="container color-white text-center">{{ (Session::get('locale') == 'en') ? $product->en_title : $product->title }}</p>					
				@else
					<p class="container color-white text-center">{{ (Session::get('locale') == 'en') ? $slide['en_name'] : $slide['name'] }}</p>
				@endif				
			</div>
		@endforeach
	</div>
	<a href="javascript:;" class="swiper-button-next"></a>
	<a href="javascript:;" class="swiper-button-prev"></a>
</div>
<div class="content" id="content">
