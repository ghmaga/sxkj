@extends('layouts.app')
@section('content')

<div class="container"><h2 class="title">ABOUT ALL</h2></div>
<div class="special-left"></div>
<div class="container special-content">
	<div class="word">
		Sinsitech Instruments, Inc. is a global leader in the development, manufacture and sale of life science instrumentation, including imaging & microscopy, multi-mode detection, liquid handling and automation systems. Our philosophy transcends conventional thinking and challenges the status quo. We develop fresh, original solutions by unifying concepts that often appear to be opposed. It means to shape and reshape. To engineer, build, deliver and support products that best serve the marketplace by providing what you need, when you need it. <br>
		<br>
		<b>Science First.</b> It’s the difference between leading and following.
		<div class="text-right"><a href="#" class="more1">MORE ABOUT SINSITECH</a></div>
	</div>
	<h2 class="title">POPULAR PORDUCT</h2>
	<a href="javascript:;" class="swiper-home-button-prev"></a>
	<a href="javascript:;" class="swiper-home-button-next"></a>
	<div class="swiper-container swiper-home" id="swiper-home">
		<div class="swiper-wrapper">
			<a href="#" class="swiper-slide">
				<div class="popular-title color-white">incuCyte S3</div>
				<div class="popular-image"><img src="image/1.png" alt=""></div>
				<div class="more2">READ MORE</div>
			</a>
			<a href="#" class="swiper-slide">
				<div class="popular-title color-white">AVATAR</div>
				<div class="popular-image"><img src="image/2.png" alt=""></div>
				<div class="more2">READ MORE</div>
			</a>
			<a href="#" class="swiper-slide">
				<div class="popular-title color-white">Que Screener</div>
				<div class="popular-image"><img src="image/3.png" alt=""></div>
				<div class="more2">READ MORE</div>
			</a>
			<a href="#" class="swiper-slide">
				<div class="popular-title color-white">incuCyte S3</div>
				<div class="popular-image"><img src="image/1.png" alt=""></div>
				<div class="more2">READ MORE</div>
			</a>
			<a href="#" class="swiper-slide">
				<div class="popular-title color-white">AVATAR</div>
				<div class="popular-image"><img src="image/3.png" alt=""></div>
				<div class="more2">READ MORE</div>
			</a>
			<a href="#" class="swiper-slide">
				<div class="popular-title color-white">Que Screener</div>
				<div class="popular-image"><img src="image/2.png" alt=""></div>
				<div class="more2">READ MORE</div>
			</a>
		</div>
	</div>
</div>
<div class="home-news">
	<div class="container">
		<h2 class="title color-white">NEWS</h2>
		<dl>
			<dt><a href="#"><img src="image/473x343.jpg" alt=""></a></dt>
			<dd class="color-white">
				<a href="#" class="color-white">Nature: the university of California, California, has developed a new CRISPR delivery system to create cancer-fighting T cells in just a week</a>
				Recently, nature published the results of a new study by researchers at the university of California, San Francisco, that developed a CRISPR/Cas9 delivery system based on electroporation technology, faster, safer and cheaper without virus transfection. Using this technique, the researchers were able to repair defective cells in patients with single-gene mutation, transfer more than 1kb of DNA sequence into T cells, create more targeted tcr-t cells for melanoma cells, and show better anti-cancer effect in the body. <br>
				With the new technology, the genetic modification of T cells can be completed in a week or so, much faster than the usual method of gene editing.
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
	slidesPerView: 'auto',
	nextButton: '.swiper-home-button-next',
	prevButton: '.swiper-home-button-prev'
});
</script>
@stop