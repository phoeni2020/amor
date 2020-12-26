<?php
namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\Input;
use Validator;


class UserAPIController extends Controller{
    
    public function login(Request $request){
    
                if ($res = auth()->attempt(['email' => $request->email, 'password' => $request->password])) {
                    // Authentication passed...
                    $user = auth()->user();
                    $user->api_token = str_random(60);
                    $user->save();
                    dd($res);
                    return response($user, 200);
                }
                    else{
                        return  response('No user has been found', 404);
                    }
               
    
    }
    public function regstier(Request $request){
        
    }

    
}