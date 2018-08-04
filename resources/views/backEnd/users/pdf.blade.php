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
            Retreat Gekari Hope
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
        <td>Pelunasan</td>
        <td>:</td>
        <td>{{$user->user_retreat_detail->description}}</td>
    </tr>
    <tr>
        <td>Room No</td>
        <td>:</td>
        <td>{{$user->user_retreat_detail->room_no}}</td>
    </tr>
    <tr>
        <td>QR Code</td>
        <td>:</td>
        <td><img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->color(38, 38, 38, 0.85)->backgroundColor(255, 255, 255, 0.82)->size(200)->generate($user->user_retreat_detail->qr_code)) !!} "></td>
    </tr>
</table>
</body>
</html>