<div class="header">
	<div class="top">
		<div class="container">
			@if(Session::get('locale') == 'en')
			<a href="{{ url('/changeLocale/zh') }}" class="color-white">CN</a>
			@else
			<a href="{{ url('/changeLocale/en') }}" class="color-white">EN</a>
			@endif
		</div>
	</div>
	<div class="container clear">
		<h1 class="logo"><a href="index.php"><img src="/image/logo.png" height="63" alt="森西科技"></a></h1>
		<a href="javascript:;" class="menu-link"></a>
		<a href="javascript:;" class="search"></a>
		<ul class="navigation">
			<li><a href="{{ route('home') }}" class="{{ active_class(if_uri_pattern('/'), 'current', '') }}">{{ (Session::get('locale') == 'en') ? 'HOME' : '主页' }}</a></li>
			<li><a href="{{ route('product') }}" class="{{ active_class(if_uri_pattern('product'), 'current', '') }}">{{ (Session::get('locale') == 'en') ? 'PRODUCT' : '产品' }}</a></li>
			<li><a href="{{ route('brands') }}" class="{{ active_class(if_uri_pattern('brands'), 'current', '') }}">{{ (Session::get('locale') == 'en') ? 'BRANDS' : '品牌' }}</a></li>
			<li><a href="{{ route('about') }}" class="{{ active_class(if_uri_pattern('about'), 'current', '') }}">{{ (Session::get('locale') == 'en') ? 'ABOUT US' : '关于我们' }}</a></li>
			<li><a href="{{ route('career') }}" class="{{ active_class(if_uri_pattern('career'), 'current', '') }}">{{ (Session::get('locale') == 'en') ? 'CAREER' : '招聘' }}</a></li>
		</ul>
	</div>
</div>
<div class="swiper-container swiper-top" id="swiper-top">
	<div class="swiper-wrapper">
		@foreach($slides as $slide)
		<div class="swiper-slide" style="background-image: url(/uploads/{{ $slide['image'] }});">
			<p class="container color-white text-center">{{ (Session::get('locale') == 'en') ? $slide['en_name'] : $slide['name'] }}</p>
		</div>
		@endforeach
	</div>
	<a href="javascript:;" class="swiper-button-next"></a>
	<a href="javascript:;" class="swiper-button-prev"></a>
</div>
<div class="content" id="content">