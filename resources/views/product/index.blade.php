@extends('layouts.app')
@section('title', 'Product')

@section('content')
<div class="container">
	<div class="tags">
		<a href="index.php">Home</a>
		&gt;
		<a href="product.php">PRODUCT</a>
	</div>
	<div class="product-tags">
		<a href="#"><span class="product-tag-icon"><img src="image/p1.png" alt=""></span>Drug Discovery</a>
		<a href="#"><span class="product-tag-icon"><img src="image/p2.png" alt=""></span>Immunology</a>
		<a href="#"><span class="product-tag-icon"><img src="image/p3.png" alt=""></span>Genomics</a>
		<a href="#"><span class="product-tag-icon"><img src="image/p4.png" alt=""></span>Molecular Biology</a>
		<a href="#"><span class="product-tag-icon"><img src="image/p5.png" alt=""></span>Precision Medicine</a>
		<a href="#"><span class="product-tag-icon"><img src="image/p6.png" alt=""></span>Common Instruments</a>
		<a href="#"><span class="product-tag-icon"><img src="image/p7.png" alt=""></span>Zoopery Instrumens</a>
		<a href="#"><span class="product-tag-icon"><img src="image/p8.png" alt=""></span>Cell Biology</a>
		<a href="all.php"><span class="product-tag-icon"><img src="image/p0.png" alt=""></span>View all Products</a>
	</div>
	<h2 class="title">GYROS</h2>
	<div class="product-item">
		<dl>
			<dt><img src="image/3.jpg" alt=""></dt>
			<dd>
				<ul class="product-item-point">
					<li>Automated digital microscopy up to 60x air; 60x and 100x oil immersion</li>
					<li>Fluorescence, brightfield, color brightfield and phase contrast imaging</li>
					<li>Label-free cell counting for cell proliferation studies</li>
					<li>Live cell assay support with environmental controls</li>
					<li>Compact design for quick installation and setup</li>
				</ul>
				<a href="product-detail.php" class="more1">LEARN MORE</a>
			</dd>
		</dl>
		<dl>
			<dt><img src="image/4.jpg" alt=""></dt>
			<dd>
				<ul class="product-item-point">
					<li>Automated digital microscopy up to 60x air; 60x and 100x oil immersion</li>
					<li>Fluorescence, brightfield, color brightfield and phase contrast imaging</li>
					<li>Label-free cell counting for cell proliferation studies</li>
					<li>Live cell assay support with environmental controls</li>
					<li>Compact design for quick installation and setup</li>
				</ul>
				<a href="product-detail.php" class="more1">LEARN MORE</a>
			</dd>
		</dl>
	</div>
</div>
@stop