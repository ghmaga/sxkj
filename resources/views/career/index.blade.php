@extends('layouts.app')
@section('title', 'Career')

@section('content')
<div class="container">
	<h2 class="title">{{ (Session::get('locale') == 'en') ? 'WORKING GROUP' : '加入我们' }}</h2>
	<div class="career">
		@if(Session::get('locale') == 'en')
			<strong>Goals:</strong>
			To organize and conduct experiment platform evaluation and selection and to organize research in soft and hardware system integration solutions as well as verification of key technology  <br>
			and standard experiment; to export universal experiment platform sets and standard requirements and generate replicable innovative solutions; and to align with international <br>
			experiment platforms.
		@else
			<strong style="font-size: 18px;">愿景：</strong>
			森西科技为包括我们的客户、商业伙伴，员工在内的所有人提供创造和实现他们美好梦想的机会。
		@endif
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
	<a href="mailto:HR@sinsitech.com" class="career-contact">{{ (Session::get('locale') == 'en') ? 'Please contact with our HR@sinsitech.com' : '请发送简历至HR@sinsitech.com' }}</a>
</div>
@stop