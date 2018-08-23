@extends('layouts.app')
@section('title', 'Brands')

@section('content')
<div class="container">
	<div class="tags">
		<a href="index.php">Home</a>
		&gt;
		<a href="brands.php">BRAND</a>
	</div>
	<h2 class="title">GYROS</h2>
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
					<a href="brand-detail.php" class="more4">LEARN MORE</a>
				</dd>
			</dl>
		</li>
		<li>
			<dl class="brand-item">
				<dt><img src="/image/p2.jpg" alt=""></dt>
				<dd>
					<ul class="product-item-point">
						<li>Automated digital microscopy up to 60x air; 60x and 100x oil immersion</li>
						<li>Fluorescence, brightfield, color brightfield and phase contrast imaging</li>
						<li>Label-free cell counting for cell proliferation studies</li>
						<li>Live cell assay support with environmental controls</li>
						<li>Compact design for quick installation and setup</li>
					</ul>
					<a href="brand-detail.php" class="more4">LEARN MORE</a>
				</dd>
			</dl>
		</li>
		<li>
			<dl class="brand-item">
				<dt><img src="/image/p3.jpg" alt=""></dt>
				<dd>
					<ul class="product-item-point">
						<li>Automated digital microscopy up to 60x air; 60x and 100x oil immersion</li>
						<li>Fluorescence, brightfield, color brightfield and phase contrast imaging</li>
						<li>Label-free cell counting for cell proliferation studies</li>
						<li>Live cell assay support with environmental controls</li>
						<li>Compact design for quick installation and setup</li>
					</ul>
					<a href="brand-detail.php" class="more4">LEARN MORE</a>
				</dd>
			</dl>
		</li>
	</ul>
	<div class="brand-page">
		<a href="#">1</a>
		<strong>2</strong>
		<a href="#">3</a>
		<a href="#">4</a>
		<a href="#">5</a>
	</div>
</div>
@stop