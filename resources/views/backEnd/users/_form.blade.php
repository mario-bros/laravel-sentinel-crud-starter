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
        <legend>Venue Details : </legend>

        <div class="form-group {{ $errors->has('seat_class') ? 'has-error' : ''}}">
            {!! Form::label('seat_class', 'Seat Class', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::select('seat_class', ['economy' => "Economy", 'regular' => "Regular", 'vip' => "VIP", 'vvip' => "VVIP"], @$user->user_event_detail->seat_class, ['class' => 'form-control']) !!}
                {!! $errors->first('seat_class', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('seat_position') ? 'has-error' : ''}}">
            {!! Form::label('seat_position', 'Seat Position', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::text('seat_position', @$user->user_event_detail->seat_position, ['class' => 'form-control']) !!}
                {!! $errors->first('seat_position', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('receive_certificate_status') ? 'has-error' : ''}}">
            {!! Form::label('receive_certificate_status','Certificate Received ?', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::select('receive_certificate_status', [0 => "Not yet", 1 => "Done"], @$user->user_event_detail->receive_certificate_status, ['class' => 'form-control']) !!}
                {!! $errors->first('receive_certificate_status', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('receive_first_snack_status') ? 'has-error' : ''}}">
            {!! Form::label('receive_first_snack_status','First Snack Received ?', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::select('receive_first_snack_status', [0 => "Not yet", 1 => "Done"], @$user->user_event_detail->receive_first_snack_status, ['class' => 'form-control']) !!}
                {!! $errors->first('receive_first_snack_status', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('receive_second_snack_status') ? 'has-error' : ''}}">
            {!! Form::label('receive_second_snack_status','Second Snack Received ?', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::select('receive_second_snack_status', [0 => "Not yet", 1 => "Done"], @$user->user_event_detail->receive_first_snack_status, ['class' => 'form-control']) !!}
                {!! $errors->first('receive_second_snack_status', '<p class="help-block">:message</p>') !!}
            </div>
        </div>

        <div class="form-group {{ $errors->has('receive_lunch_status') ? 'has-error' : ''}}">
            {!! Form::label('receive_lunch_status','Lunch Received ?', ['class' => 'col-md-4 control-label']) !!}
            <div class="col-sm-6">
                {!! Form::select('receive_lunch_status', [0 => "Not yet", 1 => "Done"], @$user->user_event_detail->receive_lunch_status, ['class' => 'form-control']) !!}
                {!! $errors->first('receive_lunch_status', '<p class="help-block">:message</p>') !!}
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