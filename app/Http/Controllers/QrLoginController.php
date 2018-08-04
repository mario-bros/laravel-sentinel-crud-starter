<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Sentinel;
use App\User;
use App\UserVenueDetail;
use App\UserRetreatDetail;

class QrLoginController extends Controller
{
    public function index(Request $request)
	{
		return view('auth.QrLogin');
	}

	public function checkUserFirstDinner(Request $request)
	{
		return view('auth.checkUserFirstDinner', compact(''));
	}

    public function checkUserSecondBreakfast(Request $request)
    {
        return view('auth.checkUserSecondBreakfast');
    }

    public function checkUserThirdLunch(Request $request)
    {
        return view('auth.checkUserThirdLunch');
    }

    public function checkUserFirstSnack(Request $request)
    {
        return view('auth.checkUserFirstSnack');
    }

    public function checkUserSecondSnack(Request $request)
    {
        return view('auth.checkUserSecondSnack');
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

	public function userFirstDinnerChecked(Request $request)
	{
		$result = 3;
		if ($request->data) {
			$userFirstDinnerDone = UserRetreatDetail::where('qr_code', $request->data)->where('first_dinner_status', 1)->first();
			if ($userFirstDinnerDone)
				return 1;

            $userFirstDinnerChecked = UserRetreatDetail::where('qr_code', $request->data)->where('first_dinner_status', 0)->first();
            if ($userFirstDinnerChecked) {
                $userFirstDinnerChecked->first_dinner_status = 1;
                $userFirstDinnerChecked->save();
                return 2;
            }

		}

		return $result;
	}

    public function userSecondBreakfastChecked(Request $request)
    {
        $result = 3;
        if ($request->data) {
            $userSecondBreakfastDone = UserRetreatDetail::where('qr_code', $request->data)->where('second_breakfast_status', 1)->first();
            if ($userSecondBreakfastDone)
                return 1;

            $userSecondBreakfastChecked = UserRetreatDetail::where('qr_code', $request->data)->where('second_breakfast_status', 0)->first();
            if ($userSecondBreakfastChecked) {
                $userSecondBreakfastChecked->second_breakfast_status = 1;
                $userSecondBreakfastChecked->save();
                return 2;
            }

        }

        return $result;
    }

    public function userThirdLunchChecked(Request $request)
    {
        $result = 3;
        if ($request->data) {
            $userThirdLunchDone = UserRetreatDetail::where('qr_code', $request->data)->where('third_lunch_status', 1)->first();
            if ($userThirdLunchDone)
                return 1;

            $userThirdLunchChecked = UserRetreatDetail::where('qr_code', $request->data)->where('third_lunch_status', 0)->first();
            if ($userThirdLunchChecked) {
                $userThirdLunchChecked->third_lunch_status = 1;
                $userThirdLunchChecked->save();
                return 2;
            }

        }

        return $result;
    }

    public function userFirstSnackChecked(Request $request)
    {
        $result = 3;
        if ($request->data) {
            $userFirstSnackDone = UserRetreatDetail::where('qr_code', $request->data)->where('first_snack_status', 1)->first();
            if ($userFirstSnackDone)
                return 1;

            $userFirstSnackChecked = UserRetreatDetail::where('qr_code', $request->data)->where('first_snack_status', 0)->first();
            if ($userFirstSnackChecked) {
                $userFirstSnackChecked->first_snack_status = 1;
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
            $userSecondSnackDone = UserRetreatDetail::where('qr_code', $request->data)->where('second_snack_status', 1)->first();
            if ($userSecondSnackDone)
                return 1;

            $userSecondSnackChecked = UserRetreatDetail::where('qr_code', $request->data)->where('second_snack_status', 0)->first();
            if ($userSecondSnackChecked) {
                $userSecondSnackChecked->second_snack_status = 1;
                $userSecondSnackChecked->save();
                return 2;
            }

        }

        return $result;
    }

}