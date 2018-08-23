@extends('layouts.app')
@section('title', 'Brands')

@section('content')
<div class="container">
	<div class="tags">
		<a href="index.php">Home</a>
		&gt;
		<a href="brands.php">BRAND</a>
	</div>
	<h2 class="title">SARTORIUS</h2>
	<ul class="brand-list">
		<li>
			<dl class="brand-item">
				<dt><img src="/image/p1.jpg" alt=""></dt>
				<dd>
					<ul class="product-item-point">
						<li>Automated digital microscopy up to 60x air; 60x and 100x oil immersion</li>
						<li>Fluorescence, brightfield, color brightfield and phase contrast imaging</li>
						<li>Label-free cell counting for cell proliferation studies</li>
						<li>Live cell assay support with environmental controls</li>
						<li>Compact design for quick installation and setup</li>
					</ul>
				</dd>
			</dl>
		</li>
	</ul>
	<h2 class="title">PRODUCT</h2>
	<div class="product-list">
		<a href="#">
			<div class="product-list-title">Product1</div>
			<div class="product-list-image"><img src="/image/3.jpg" alt=""></div>
			<div class="more5">SEE MORE</div>
		</a>
		<a href="#">
			<div class="product-list-title">Product2</div>
			<div class="product-list-image"><img src="/image/4.jpg" alt=""></div>
			<div class="more5">SEE MORE</div>
		</a>
		<a href="#">
			<div class="product-list-title">Product3</div>
			<div class="product-list-image"><img src="/image/5.jpg" alt=""></div>
			<div class="more5">SEE MORE</div>
		</a>
		<a href="#">
			<div class="product-list-title">Product4</div>
			<div class="product-list-image"><img src="/image/4.jpg" alt=""></div>
			<div class="more5">SEE MORE</div>
		</a>
		<a href="#">
			<div class="product-list-title">Product5</div>
			<div class="product-list-image"><img src="/image/5.jpg" alt=""></div>
			<div class="more5">SEE MORE</div>
		</a>
	</div>
</div>
@stop