@extends('backLayout.app')
@section('title')
    Edit User
@stop

@section('content')

    <div class="panel panel-default">
        <div class="panel-heading">Edit user: {{$user->name}}</div>

        <div class="panel-body">

            {!! Form::model($user, ['route' => ['user.update', $user->id], 'method' => 'PATCH', 'files' => true, 'class' => "form-horizontal"]) !!}
                @include('backEnd.users._form', ['model' => $user])
            {!! Form::close() !!}
        </div>
    </div>


@stop

@section('scripts')

@endsection