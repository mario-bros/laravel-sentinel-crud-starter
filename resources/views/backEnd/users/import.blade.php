@extends('backLayout.app')

@section('title')
Import user
@stop

@section('content')

<div class="panel panel-default">
    <div class="panel-heading">Import user</div>

    <div class="panel-body">

        {{ Form::open( ['url' => route('user.import'), 'class' => 'form-horizontal','files' => true] ) }}
            <ul>
                <div class="form-group {{ $errors->has('file') ? 'has-error' : ''}}">
                    {!! Form::label('file', 'File', ['class' => 'col-md-4 control-label']) !!}
                    <div class="col-sm-6">
                        {!! Form::file('file', ['class' => 'form-control']) !!}
                        {!! $errors->first('file', '<p class="help-block">:message</p>') !!}
                    </div>
                </div>
            
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-3">
                        {!! Form::submit('Submit', ['class' => 'btn btn-success form-control']) !!}
                    </div>
                    <a href="{{route('user.index')}}" class="btn btn-default">Return to all users</a>
                </div>
            

            </ul>
        
        {{ Form::close() }}

    </div>
</div>
@stop

@section('scripts')

@endsection