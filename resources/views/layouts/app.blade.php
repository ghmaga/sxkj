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
<link rel="stylesheet" type="text/css" href="css/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="css/website.css?v=<?php echo rand();?>" />
<script src="js/jquery.js"></script>
<script src="js/swiper.min.js"></script>
<script src="js/website.js"></script>
</head>

<body>
	@include('layouts._header')
      @yield('content')
    @include('layouts._footer')
</body>
</html>