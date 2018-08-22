<div class="header">
	<div class="top">
		<div class="container">
			@if (App::isLocale('en'))
			<a href="{{ url('/changeLocale/zh') }}" class="color-white">CN</a>
			@else
			<a href="{{ url('/changeLocale/en') }}" class="color-white">EN</a>
			@endif
		</div>
	</div>
	<div class="container clear">
		<h1 class="logo"><a href="{{ route('home') }}"><img src="image/logo.png" height="63" alt="森西科技"></a></h1>
		<a href="javascript:;" class="search"></a>
		<ul class="navigation">
			 <li><a href="{{ route('home') }}" class="current">{{ (App::isLocale('en')) ? 'Home' : '主页' }}</a></li>
			 <li><a href="{{ route('product') }}">{{ (App::isLocale('en')) ? 'PRODUCT' : '产品' }}</a></li>
			 <li><a href="{{ route('brands') }}">{{ (App::isLocale('en')) ? 'BRANDS' : '品牌' }}</a></li>
			 <li><a href="{{ route('about') }}">{{ (App::isLocale('en')) ? 'ABOUT US' : '关于我们' }}</a></li>
			 <li><a href="{{ route('career') }}">{{ (App::isLocale('en')) ? 'CAREER' : '招聘' }}</a></li>
		</ul>
	</div>
</div>
<div class="swiper-container swiper-top" id="swiper-top">
	<div class="swiper-wrapper">
		<div class="swiper-slide" style="background-image: url('image/1.jpg');">
			<p class="container color-white text-center">{{ (App::isLocale('en')) ? 'pages title' : '页面主标题' }}</p>
		</div>
		<div class="swiper-slide" style="background-image: url('image/6.jpg');">
			<p class="container color-white">自定义标题 <br>带br可换行 <br> science robotics</p>
		</div>
	</div>
	<a href="javascript:;" class="swiper-button-next"></a>
	<a href="javascript:;" class="swiper-button-prev"></a>
</div>
<div class="content" id="content">