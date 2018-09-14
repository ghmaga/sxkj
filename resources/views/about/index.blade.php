@extends('layouts.app')
@section('title', 'About')

@section('content')
<div class="tab">
	<a href="{{ route('about') }}" class="{{ active_class(if_uri_pattern('about'), 'hover', '') }}">{{ (Session::get('locale') == 'en') ? 'ABOUT US' : '关于我们' }}</a>
	<a href="{{ route('news') }}" class="{{ active_class(if_uri_pattern('news'), 'hover', '') }}">{{ (Session::get('locale') == 'en') ? 'NEWS' : '新闻' }}</a>
</div>
<div class="about-blank"></div>
<div class="about-box"></div>
<div class="container">
	<img src="image/5.jpg" alt="" class="float-right">
	<h2 class="title">ABOUT US</h2>
	<div class="about">
		@if(Session::get('locale') == 'en')
			Sinsitech Instruments, Inc. is a global leader in the development, manufacture and sale of life science instrumentation, including imaging & microscopy, multi-mode detection, liquid handling and automation systems. Our philosophy transcends conventional thinking and challenges the status quo. We develop fresh, original solutions by unifying concepts that often appear to be opposed. It means to shape and reshape. To engineer, build, deliver and support products that best serve the marketplace by providing what you need, when you need it. <br>
			<br>
			Science First. It’s the difference between leading and following. <br>
		@else
			森西科技有限公司是由从事多年科研、医疗、教学设备的运营团队共同组建的服务平台，摒弃品牌界限，消除地域阻碍，集合国内外先进的项目平台构建经验，发挥品牌价值，力求为科研工作者提供最完善的实验平台硬件系统及最专业的技术服务。森西人将以国内外知名厂家为技术背景，专业的服务团队为依托，审慎的科研态度为标准，不懈努力，打造国内实验平台的标准化构建及服务体系。2005年至今，森西服务团队及各地服务商在国内广大科研单位的支持下已经为超过600个实验室提供设备支持或技术服务；经过多年的打磨，我们已经建立了以北京为中心，多地分公司联动的全国服务网络，期待为更多科研客户提供贴心、专业的服务。森西公司将会用卓越的专业品质，贴心服务于每一位森西客户，持以真诚的信念与科研工作者合铸先锋。我们的服务准则是，真诚、专业、卓越、贴心！<br>
			<br>
			<b>Science First！</b>科技为先！
		@endif
		<br>
		<br>
		TEL: 010-57206578, 010-57206576 <br>
		Hotline: 400-687-6366 <br>
		FAX: 010-84874116 <br>
		<a href="mailto:service@sinsitech.com">E-mail: service@sinsitech.com</a>
	</div>
	<h2 class="title">{{ (Session::get('locale') == 'en') ? 'Collaboratory' : '合作实验室' }}</h2>
	<ul class="partner">
		@foreach($links as $val)
			<li><a href="{{ $val['link'] }}"><img src="/uploads/{{ $val['image'] }}" alt=""></a></li>
		@endforeach
	</ul>
</div>
@stop