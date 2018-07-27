@extends('backLayout.app')

@section('title')
    Create user
@stop

@section('content')

    <div class="panel panel-default">
        <div class="panel-heading">Create user</div>

        <div class="panel-body">

            @if (count($errors) > 0)
                <div class="form-group">
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="alert alert-danger">
                            <strong>Upsss !</strong> There is an error...<br /><br />
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            @endif

            {!! Form::open(['route' => 'user.store', 'files' => true, 'class' => "form-horizontal"]) !!}
                @include('backEnd.users._form')
            {!! Form::close() !!}
        </div>
    </div>
@stop

@section('scripts')

@endsection