@extends('frontLayout.app')
@section('title')
    Starter Qr login
@stop

@section('styles')
@stop

@section('content')
    <!-- Header -->
    <div class="container-fluid header_se">
        <div class="col-md-2">
        </div>
        <div class="col-md-8">
            @if( !Sentinel::getUser() )
                <div class="row">
                    <div id="reader" class="center-block" style="width:400px;height:300px">
                    </div>
                </div>
                <div class="row">
                    <div id="message" class="text-center">
                    </div>
                </div>
            @else
                <h1>Hallo! {{Sentinel::getUser()->first_name}}</h1>
            @endif
        </div>
        <div class="col-md-2">
        </div>
    </div>
    <!-- /.Header -->
@endsection

@if( !Sentinel::getUser())
    @section('scripts')
        <script type="text/javascript" src="{{ URL::asset('/qr_login/jsqrcode-combined.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('/qr_login/html5-qrcode.min.js') }}"></script>

        <script type="text/javascript">
            $('#reader').html5_qrcode(function (data) {
                $('#message').html('<span class="text-success send-true">Scanning now....</span>')

                if (data != '') {

                    $.ajax({
                        type: "POST",
                        cache: false,
                        url: "{{action('QrLoginController@userSecondSnackChecked')}}",
                        data: {"_token": "{{ csrf_token() }}", data: data},
                        success: function (data) {

                            if (data == 1) {
                                return confirm('peserta ini sudah mendapatkan Makan 5')
                            } else if (data == 2) {
                                return confirm('peserta tercatat mendapatkan Makan 5')
                            } else {
                                return confirm('tidak ada peserta terdaftar menggunakan id qr code ini')
                            }
                            //
                        }
                    })

                } else {
                    return confirm('There is no data')
                }
            },
            function (error) {
                $('#message').html('Scaning now ....')
            },
            function (videoError) {
                $('#message').html('<span class="text-danger camera_problem"> there was a problem with your camera </span>');
            });
        </script>

    @endsection
@endif
