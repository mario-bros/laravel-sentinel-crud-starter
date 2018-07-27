<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Sentinel;
use App\User;
use App\UserVenueDetail;

class QrLoginController extends Controller
{
    public function index(Request $request)
	{
		return view('auth.QrLogin');
	}

	public function checkUserCertificate(Request $request)
	{
		return view('auth.checkUserCertificate', compact(''));
	}

    public function checkUserFirstSnack(Request $request)
    {
        return view('auth.checkUserFirstSnack');
    }

    public function checkUserSecondSnack(Request $request)
    {
        return view('auth.checkUserSecondSnack');
    }

    public function checkUserLunch(Request $request)
    {
        return view('auth.checkUserLunch');
    }

	public function indexoption2(Request $request) {
    	
		return view('auth.QrLogin2');
	}
	public function ViewUserQrCode($value='')
	{
		return view('backEnd.users.viewqrcode');
    }

    public function checkUser(Request $request) 
    {
        $result = 0;
        if ($request->data) {
            $user = User::where('QRpassword', $request->data)->first();
            if ($user) {
                Sentinel::authenticate($user);
                $result =1;
                }else{
                $result =0;
                }

            
        }
        
        return $result;
	}

	public function QrAutoGenerate(Request $request)
	{	
		$result=0;
		if ($request->action = 'updateqr') {
			$user = Sentinel::getUser();
			if ($user) {
				$qrLogin=bcrypt($user->personal_number.$user->email.str_random(40));
		        $user->QRpassword= $qrLogin;
		        $user->update();
		        $result=1;
			}
		
		}
		
        return $result;
	}

	public function userCertificateChecked(Request $request)
	{
		$result = 3;
		if ($request->data) {
			$userCertificateDone = UserVenueDetail::where('qr_code', $request->data)->where('receive_certificate_status', 1)->first();
			if ($userCertificateDone)
				return 1;

            $userCertificateChecked = UserVenueDetail::where('qr_code', $request->data)->where('receive_certificate_status', 0)->first();
            if ($userCertificateChecked) {
                $userCertificateChecked->receive_certificate_status = 1;
                $userCertificateChecked->save();
                return 2;
            }

		}

		return $result;
	}

    public function userFirstSnackChecked(Request $request)
    {
        $result = 3;
        if ($request->data) {
            $userFirstSnackDone = UserVenueDetail::where('qr_code', $request->data)->where('receive_first_snack_status', 1)->first();
            if ($userFirstSnackDone)
                return 1;

            $userFirstSnackChecked = UserVenueDetail::where('qr_code', $request->data)->where('receive_first_snack_status', 0)->first();
            if ($userFirstSnackChecked) {
                $userFirstSnackChecked->receive_first_snack_status = 1;
                $userFirstSnackChecked->save();
                return 2;
            }

        }

        return $result;
    }

    public function userSecondSnackChecked(Request $request)
    {
        $result = 3;
        if ($request->data) {
            $userFirstSnackDone = UserVenueDetail::where('qr_code', $request->data)->where('receive_second_snack_status', 1)->first();
            if ($userFirstSnackDone)
                return 1;

            $userFirstSnackChecked = UserVenueDetail::where('qr_code', $request->data)->where('receive_second_snack_status', 0)->first();
            if ($userFirstSnackChecked) {
                $userFirstSnackChecked->receive_second_snack_status = 1;
                $userFirstSnackChecked->save();
                return 2;
            }

        }

        return $result;
    }

    public function userLunchChecked(Request $request)
    {
        $result = 3;
        if ($request->data) {
            $userLunchDone = UserVenueDetail::where('qr_code', $request->data)->where('receive_lunch_status', 1)->first();
            if ($userLunchDone)
                return 1;

            $userLunchChecked = UserVenueDetail::where('qr_code', $request->data)->where('receive_lunch_status', 0)->first();
            if ($userLunchChecked) {
                $userLunchChecked->receive_lunch_status = 1;
                $userLunchChecked->save();
                return 2;
            }

        }

        return $result;
    }

}