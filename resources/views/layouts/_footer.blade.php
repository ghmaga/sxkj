	<div class="footer">
		<div class="container clear">
			<div class="footer-item float-left">
				<p>GET IN TOUCH <br><br>We want to hear from you.</p>
				<a href="#" class="contact color-white">CONTACT US</a>
			</div>
			<div class="footer-item float-right">
				<p>Address</p>
				<div class="color-white">2/F, Zhonghuadizhi Building, <br>Heping Street, Chaoyang District, Beijing<br><a href="mailto:wangy@sinsitech.com" class="color-white">E-mail: wangy@sinsitech.com</a></div>
				<div class="share">
					<a href="#"></a>
					<a href="#"></a>
					<a href="#"></a>
					<a href="#"></a>
				</div>
			</div>
		</div>
		<div class="copy">Copyright @senxi. All Right Reserved.</div>
		<a href="javascript:;" class="gotop"></a>
	</div>
</div>
<script>
new Swiper('#swiper-top', {
	loop: true,
	autoplay: 4000,
	nextButton: '.swiper-button-next',
	prevButton: '.swiper-button-prev'
});
new Swiper('#swiper-brands', {
	slidesPerView: 4,
	slidesPerColumn: 2,
	spaceBetween: 22,
	nextButton: '.swiper-brands-button-next',
	prevButton: '.swiper-brands-button-prev'
});
$(function(){
	if(iphone || android || ipad){
		$('.header').addClass('mobile');
	}
	$(window).trigger('resize');
	$(window).trigger('scroll');
	$('.gotop').click(function(event) {
		$('html, body').animate({scrollTop: 0}, 300);
	});
	$('.menu-link').click(function(event) {
		$('.navigation').toggle();
	});
	$('.prodroplist a:not(".viewall")').mouseover(function(event) {
		$('.prodroplist-image').filter(':visible').hide();
		$('.prodroplist-image').eq($(this).index()).show();
	});
	$('.user').click(function(event) {
		$('.layer, .login').show();
	});
	$('.layer').click(function(event) {
		$('.layer, .login').hide();
	});
});
if($('.content-home').size() == 1){
	var contetTop = 747;
}else{
	var contetTop = 370;
}
$(window).scroll(function(event) {
	var before = $(window).scrollTop();
	$(window).scroll(function() {
		var after = $(window).scrollTop();
		if(after <= 100) return;
		if (before + 100 < after && before > 270) {
			$('.header.mobile').addClass('hide');
			before = after;
		}
		if (before - 100 > after) {
			$('.header.mobile').removeClass('hide');
			before = after;
		}
	});
});
$(window).scroll(function(event) {
	var t = $(this).scrollTop();
	if(t > contetTop){
		if($(this).width() > 768){
			$('.header').addClass('mini');
		}
	}else{
		if($(this).width() > 1024){
			$('.header').removeClass('mini');
		}
	}
});
</script>