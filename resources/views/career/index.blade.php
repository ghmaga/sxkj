@extends('layouts.app')
@section('title', 'Career')

@section('content')
<div class="container">
	<h2 class="title">WORKING GROUP</h2>
	<div class="career">
		<strong>Goals:</strong>
		To organize and conduct experiment platform evaluation and selection and to organize research in soft and hardware system integration solutions as well as verification of key technology  <br>
		and standard experiment; to export universal experiment platform sets and standard requirements and generate replicable innovative solutions; and to align with international <br>
		experiment platforms.
	</div>
	<h2 class="title">{{ (Session::get('locale') == 'en') ? 'POSITION' : '职位' }}</h2>
	<ul class="jobs">
		@foreach($jobs as $val)
		<li>
			<strong>
				@if(Session::get('locale') == 'en')
					{{ $val['en_title'] }}
				@else
					{{ $val['title'] }}
				@endif
			</strong>
			@if(Session::get('locale') == 'en')
				{!! $val['en_body'] !!}
			@else
				{!! $val['body'] !!}
			@endif
		</li>
		@endforeach
	</ul>
	<a href="mailto:HR@sinsitech.com" class="career-contact">Please contact with our HR@sinsitech.com</a>
</div>
@stop