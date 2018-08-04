<ul>
    <fieldset>
        <legend>User Details : </legend>

        <div class="form-group {{ $errors->has('first_name') ? 'has-error' : ''}}">
            {!! Form::label('first_name', 'First Name', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::text('first_name', null, ['class' => 'form-control']) !!}
                {!! $errors->first('first_name', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('last_name') ? 'has-error' : ''}}">
            {!! Form::label('last_name', 'Last name' , ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::text('last_name', null, ['class' => 'form-control']) !!}
                {!! $errors->first('last_name', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('email') ? 'has-error' : ''}}">
            {!! Form::label('email', 'Email', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::text('email', null, ['class' => 'form-control']) !!}
                {!! $errors->first('email', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('password') ? 'has-error' : ''}}">
            {!! Form::label('password', 'Password', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::password('password', ['class' => 'form-control']) !!}
                {!! $errors->first('password', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('password_confirmation') ? 'has-error' : ''}}">
            {!! Form::label('password_confirmation', 'Password Confirmation', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::password('password_confirmation', ['class' => 'form-control']) !!}
                {!! $errors->first('password_confirmation', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div id="role" class="form-group {{ $errors->has('role') ? 'has-error' : ''}}">
            {!! Form::label('role','User role', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::select('role', $roles, null, ['class' => 'form-control']) !!}
                {!! $errors->first('role', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

    </fieldset>

    <br/><br/><br/>

    <fieldset>
        <legend>Retreat Details : </legend>

        <div class="form-group {{ $errors->has('first_dinner_status') ? 'has-error' : ''}}">
            {!! Form::label('first_dinner_status', 'First Dinner Status', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::select('first_dinner_status', [0 => "Not yet", 1 => "Done"], @$user->user_retreat_detail->first_dinner_status, ['class' => 'form-control']) !!}
                {!! $errors->first('first_dinner_status', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('second_breakfast_status') ? 'has-error' : ''}}">
            {!! Form::label('second_breakfast_status', 'Second Breakfast Status', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::select('second_breakfast_status', [0 => "Not yet", 1 => "Done"], @$user->user_retreat_detail->second_breakfast_status, ['class' => 'form-control']) !!}
                {!! $errors->first('second_breakfast_status', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('third_lunch_status') ? 'has-error' : ''}}">
            {!! Form::label('third_lunch_status','Third Lunch Status?', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::select('third_lunch_status', [0 => "Not yet", 1 => "Done"], @$user->user_retreat_detail->third_lunch_status, ['class' => 'form-control']) !!}
                {!! $errors->first('third_lunch_status', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('first_snack_status') ? 'has-error' : ''}}">
            {!! Form::label('first_snack_status','First Snack Received ?', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::select('first_snack_status', [0 => "Not yet", 1 => "Done"], @$user->user_retreat_detail->first_snack_status, ['class' => 'form-control']) !!}
                {!! $errors->first('first_snack_status', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('second_snack_status') ? 'has-error' : ''}}">
            {!! Form::label('second_snack_status','Second Snack Received ?', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::select('second_snack_status', [0 => "Not yet", 1 => "Done"], @$user->user_retreat_detail->second_snack_status, ['class' => 'form-control']) !!}
                {!! $errors->first('second_snack_status', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('room_no') ? 'has-error' : ''}}">
            {!! Form::label('room_no','Room No', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::text('room_no', @$user->user_retreat_detail->room_no, ['class' => 'form-control']) !!}
                {!! $errors->first('room_no', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('description') ? 'has-error' : ''}}">
            {!! Form::label('description','Description', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::text('description', @$user->user_retreat_detail->description, ['class' => 'form-control']) !!}
                {!! $errors->first('description', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

    </fieldset>


    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-3">
            {!! Form::submit('Submit', ['class' => 'btn btn-success form-control']) !!}
        </div>
        <a href="{{route('user.index')}}" class="btn btn-default">Return to all users</a>
    </div>

</ul>