<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" id="id_scale" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, target-densitydpi=medium-dpi, minimal-ui">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-control" content="no-cache">
<meta http-equiv="Cache" content="no-cache">
<meta name="description" content="">
<meta name="keywords" content="">
<title>@yield('title', '森西科技')</title>
<link rel="stylesheet" type="text/css" href="/css/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="/css/website.css?v=<?php echo rand();?>" />
<script src="/js/jquery.js"></script>
<script src="/js/swiper.min.js"></script>
<script src="/js/website.js"></script>
</head>

<body ontouchstart>
<div class="layer"></div>
<form class="login" id="loginbox" method="POST" action="{{ route('login') }}">
	 {{ csrf_field() }}
	<img src="image/logo.png" height="63" alt="">

	<input type="email" class="text" name="email" value="{{ old('email') }}" required autofocus placeholder="EMAIL">

	<input type="password" class="text" name="password" required placeholder="PASSWORD">

	<div class="text-right"><a href="javascript:;" class="forgot-btn">Forgot password</a></div>

	<label>
		<input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }} /> remember me
	</label>
	<input type="submit" value="LOGIN" />
	<div class="regbox">Don't have an account? <a href="javascript:;" class="reg-btn">Join</a></div>
</form>
<form class="login reg" id="regbox" method="POST" action="{{ route('register') }}">

	{{ csrf_field() }}


	<img src="image/logo.png" height="63" alt="">

	<input type="text" class="text" placeholder="USERNAME" name="name" value="{{ old('name') }}" required autofocus>

	<input type="email" class="text" placeholder="EMAIL" name="email" value="{{ old('email') }}" required>

	<input type="password" class="text" placeholder="PASSWORD" name="password" required>
	<!-- <input type="password" class="text" placeholder="CONFIRM_PASSWORD" name="password_confirmation" required> -->

	<input type="submit" value="JOIN" />
</form>
@if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
@endif
<form class="login forgot" id="forgotbox" method="POST" action="{{ route('password.email') }}">
	{{ csrf_field() }}
	<img src="image/logo.png" height="63" alt="">
	<div class="fgtext">Forgot your password?</div>
	<input type="email" class="text" placeholder="EMAIL" name="email" value="{{ old('email') }}" required>
	<input type="submit" value="Send Password Reset Link" />
</form>
	@include('layouts._header')
      @yield('content')
    @include('layouts._footer')
</body>
</html>