@extends('layouts.app')
@section('title', 'Home')
@section('content')

<div class="container"><h2 class="title">{{ (Session::get('locale') == 'en') ?  'ABOUT ALL' : '关于我们' }}</h2></div>
<div class="special-box">
	<div class="special-left"></div>
	<div class="container special-content">
		<div class="word">
			@if(Session::get('locale') == 'en')
				Sintec service is established by operational group, discarding brand margin, eliminating barriers bottleneck, gathering advanced experiences of scientific research home and broad, developing real brand values, striving for proving the most effective hardware system and technical service, with many years’ experience of medical treatment, teaching and research work of medicine. Sintec is against the technical background of Well-known domestic and foreign manufacturers, based on specialized services team and attitude towards scientific research, making unremitting endeavor, launching domestic Standardized lab-plant service system. Since 2005, Sintec provides quality device supports and technical services to over 600 laboratories with assistances of various domestic R&D institutions. After years of hardening, we have set up national services network with centralizing in Beijing and sub-branches round in China, expecting more cooperation with sincere R&D facilities. Sintec will provide to all of you with remarkable qualities and professional services, sharing the most sincere belief with each scientific researchers to endeavor to work for ALL-WIN prospect.Norms of services: sincerity; specialty; excellence; intimation. <br>
				<br>
				<b>Science First!</b>
			@else
				森西科技有限公司是由从事多年科研、医疗、教学设备的运营团队共同组建的服务平台，摒弃品牌界限，消除地域阻碍，集合国内外先进的项目平台构建经验，发挥品牌价值，力求为科研工作者提供最完善的实验平台硬件系统及最专业的技术服务。森西人将以国内外知名厂家为技术背景，专业的服务团队为依托，审慎的科研态度为标准，不懈努力，打造国内实验平台的标准化构建及服务体系。2005年至今，森西服务团队及各地服务商在国内广大科研单位的支持下已经为超过600个实验室提供设备支持或技术服务；经过多年的打磨，我们已经建立了以北京为中心，多地分公司联动的全国服务网络，期待为更多科研客户提供贴心、专业的服务。森西公司将会用卓越的专业品质，贴心服务于每一位森西客户，持以真诚的信念与科研工作者合铸先锋。我们的服务准则是，真诚、专业、卓越、贴心！<br>
				<br>
				<b>Science First！</b>科技为先！
			@endif
			<div class="text-right"><a href="{{ route('about') }}" class="more1">{{ (Session::get('locale') == 'en') ?  'MORE ABOUT SINSITECH' : '关于我们' }}</a></div>
		</div>
		<h2 class="title">{{ (Session::get('locale') == 'en') ?  'POPULAR PORDUCT' : '产品' }}</h2>
		<a href="javascript:;" class="swiper-home-button-prev"></a>
		<a href="javascript:;" class="swiper-home-button-next"></a>
		<div class="swiper-container swiper-home" id="swiper-home">
			<div class="swiper-wrapper">
				@foreach($products as $product)
				<a href="{{ route('product.show', $product['id']) }}" class="swiper-slide">
					<div class="popular-title color-white">{{ (Session::get('locale') == 'en') ?  $product['en_title'] : $product['title'] }}</div>
					<div class="popular-image"><img src="uploads/{{ $product['image'] }}" alt=""></div>
					<div class="more2">{{ (Session::get('locale') == 'en') ?  'READ MORE' : '了解更多' }}</div>
				</a>
				@endforeach
			</div>
		</div>
	</div>
</div>
<div class="home-news">
	<div class="container">
		<h2 class="title"><a href="{{ route('news') }}" class="color-white">{{ (Session::get('locale') == 'en') ? 'NEWS' : '新闻' }}</a></h2>
		<dl>
			<dt><a href="{{ route('news.show', $news->id) }}"><img src="uploads/{{ $news->image }}" alt=""></a></dt>
			<dd class="color-white">
				<a href="{{ route('news.show', $news->id) }}" class="color-white">{{ (Session::get('locale') == 'en') ? $news->en_title : $news->title }}</a>
				@if(Session::get('locale') == 'en')
					{!! $news->en_description !!}
				@else
					{!! $news->description !!}
				@endif
			</dd>
		</dl>
	</div>
</div>
<script>
$('#swiper-top').addClass('swiper-top-home');
$('#content').addClass('content-home');
$('#swiper-home .swiper-slide:odd').addClass('nobg');
new Swiper('#swiper-home', {
	loop: true,
	autoplay: 4000,
	slidesPerView: 'auto',
	nextButton: '.swiper-home-button-next',
	prevButton: '.swiper-home-button-prev'
});
</script>
@stop