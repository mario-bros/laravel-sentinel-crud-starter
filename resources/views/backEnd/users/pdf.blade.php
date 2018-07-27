<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
</head>
<body>

<style>

</style>

<table class="table table-bordered">
    <tr>
        <td>
            Seminar Bisnis Inspiratif
        </td>
    </tr>
    <tr>
        <td>
            Sabtu, 28 Juli 2018
        </td>
    </tr>
</table>

<table class="table table-bordered">
    <tr>
        <td>Nama</td>
        <td>:</td>
        <td>{{$user->first_name}}</td>
    </tr>
    <tr>
        <td>Kelas</td>
        <td>:</td>
        <td>{{$user->user_event_detail->seat_class}}</td>
    </tr>
    <tr>
        <td>No Seat</td>
        <td>:</td>
        <td>{{$user->user_event_detail->seat_position }}</td>
    </tr>
    <tr>
        <td>QR Code</td>
        <td>:</td>
        <td><img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->color(38, 38, 38, 0.85)->backgroundColor(255, 255, 255, 0.82)->size(200)->generate($user->user_event_detail->qr_code)) !!} "></td>
    </tr>
</table>
</body>
</html>