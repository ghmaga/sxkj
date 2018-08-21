// JavaScript Document
var ee = 'webkitAnimationEnd mozAnimationEnd animationend', MAXFONT = 99, DPR = window.devicePixelRatio, meta_scale = 1 / DPR;
//$('#id_scale').after('<meta name="viewport" content="width=device-width, initial-scale=' + meta_scale + ', maximum-scale=' + meta_scale + ', minimum-scale=' + meta_scale + ', user-scalable=no, minimal-ui" />');
var ua = navigator.userAgent.toLowerCase(),
	iphone = ua.indexOf('iphone') != -1,
	android = ua.indexOf('iphone') != -1,
	ipad = ua.indexOf('iphone') != -1;
$(document).ready(function(){
	
});
$(window).resize(function(){
	
});
/*$(window).scroll(function(event) {
	var t = $(this).scrollTop();
	$('.animatebox').each(function(index, el) {
		var _this = $(this), offset = _this.attr('data-offset') || 520,
			y = _this.offset().top - offset;
		if(t > y){
			addAnimate(_this);
		}
	});
});*/
function addAnimate(ele){
	ele.find('[data-animate]').each(function(index, el) {
		var _this = $(this), cls = _this.attr('data-animate'), delay = _this.attr('data-delay') || 0;
		setTimeout(function(){
			_this.addClass(cls + ' animated');
		}, delay);
	});
}
function setFont(){
	MYFONT = $(window).width() * 0.037037037037037;
	/*
		0.046296296296296	base: 50px
		0.037037037037037	base: 40px
		0.027777777777778	base: 30px
		0.018518518518519	base: 20px
	*/
	if(MYFONT > MAXFONT) MYFONT = MAXFONT;
	$('html').css('font-size', MYFONT);
}
/*****resizeImage js Demo
	var bgImage = $('#flexslider .slides img'), bgImagew = 1920, bgImageh = 1080;
	$(function(){
		resizeImg();
		$(window).resize(function(){
			resizeImg();
		});
	});
*****/
function audioAutoPlay(id){
	var audio = document.getElementById(id),
		play = function(){
			audio.play();
			document.removeEventListener("touchstart",play, false);
		};
	audio.play();
	document.addEventListener("WeixinJSBridgeReady", function () {
		play();
	}, false);
	document.addEventListener('YixinJSBridgeReady', function() {
		play();
	}, false);
	document.addEventListener("touchstart",play, false);
}
function resizeImg(){
	var w = $(window).width(), h = $(window).height();
	var image_scale = bgImagew / bgImageh;
	var window_scale = w / h;
	if (image_scale > window_scale){
		var wid = Math.floor(h * image_scale);
		bgImage.width(wid).height(h).css({
			marginLeft: - (wid - w) / 2,
			marginTop: 0,
		});
	}else{
		var hei = Math.floor(w / image_scale);
		bgImage.width(w).height(hei).css({
			marginLeft: 0,
			marginTop: - (hei - h) / 2,
		});
	}
}
function writeCookie(name,value,expires,path,domain){
	var str=name+"="+escape(value);
	if(expires!=""){
		var date=new Date();
		date.setTime(date.getTime()+expires*24*3600*1000);
		str+=";expires="+date.toGMTString();
	}
	if(path!=""){
		str+=";path="+path;
	}
	if(domain!=""){
		str+=";domain="+domain;
	}
	document.cookie=str;
}
function getByteLen(val) {
	var len = 0;
	for (var i = 0; i < val.length; i++) {
		var a = val.charAt(i);
		if (a.match(/[^\x00-\xff]/ig) != null) {
			len += 2;
		}else{
			len += 1;
		}
	}
	return len;
}
function randomSort(a, b) {
	return Math.random()>.5 ? -1 : 1;
}
/* var arr = [1, 2, 3, 4, 5];
arr.sort(randomSort); */