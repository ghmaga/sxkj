	<div class="footer">
		<div class="container clear">
			<div class="footer-item float-left">
				@if(Session::get('locale') == 'en')
				<p>GET IN TOUCH <br><br>We want to hear from you.</p>
				<a href="tel:86-010-57206579" class="contact color-white"><span>CONTACT US</span><strong>86-010-57206579</strong></a>
				@else
				<p>保持联系<br><br>我们希望听到您的声音</p>
				<a href="tel:86-010-57206579" class="contact color-white"><span>联系我们</span><strong>86-010-57206579</strong></a>
				@endif
			</div>
			<div class="footer-item float-right">
				@if(Session::get('locale') == 'en')
				<p>Address</p>
				<div class="color-white">2/F, Zhonghuadizhi Building, <br>Heping Street, Chaoyang District, Beijing<br><a href="mailto:service@sinsitech.com" class="color-white">E-mail: service@sinsitech.com</a><br><a href="tel:400-6876366" class="color-white">Service: 400-6876366</a></div>
				@else
				<p>联系</p>
				<div class="color-white">地址：北京市朝阳区和平街13区中化地厦2层<br><a href="mailto:service@sinsitech.com" class="color-white">邮箱：service@sinsitech.com</a><br><a href="tel:400-6876366" class="color-white">客服：400-6876366</a></div>
				@endif
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
if($('#swiper-top .swiper-slide').length > 1){
	new Swiper('#swiper-top', {
		loop: true,
		autoplay: 4000,
		nextButton: '.swiper-button-next',
		prevButton: '.swiper-button-prev'
	});
}else{
	$('#swiper-top .swiper-button-prev, #swiper-top .swiper-button-next').hide();
}
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
		$('.layer, #loginbox').show();
	});
	$('.layer').click(function(event) {
		$('.layer, .login').hide();
	});
	$('.nologin').click(function(event) {
		$('.login-btn').trigger('click');
		return false;
	});
	$('.forgot-btn').click(function(event) {
		$(this).parents('form').hide();
		$('#forgotbox').show();
	});
	$('.reg-btn').click(function(event) {
		$(this).parents('form').hide();
		$('#regbox').show();
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