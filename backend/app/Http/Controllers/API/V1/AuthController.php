<?php

namespace App\Http\Controllers\API\V1;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\RegistrationRequest;
use App\Http\Controllers\API\V1\APIController;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;
use DB;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Facades\JWTAuth;

class AuthController extends APIController
{

    public function register(RegistrationRequest $request)
    {
        DB::beginTransaction();
        try {

            $user = User::create(collect($request->validated())
            ->only(['first_name','last_name', 'mobile_no','username','email', 'password'])
            ->all());
            $token = JWTAuth::fromUser($user);
            DB::commit();
            return $this->respondWithToken($token,$user);
        } catch (JWTException $th) {
            DB::rollback();
            return $this->sendResponse(false,$th->getMessage(),null);
        }
    }

    public function login(LoginRequest $request)
    {
        $data = collect($request->validated())->only(['email', 'password']);
        $token = null;
        try {
            if (!$token = JWTAuth::attempt($data->all())) {
                $msg = 'Invalid Email or Password.';
                return $this->sendResponse(false,$msg,null);
            }
            return $this->respondWithToken($token);
        } catch (\Throwable $th) {
            $msg = 'Could not create token.';
            return $this->sendResponse(false,$msg,null);
        }
    }

    public function me()
    {
        return response()->json(auth()->user());
    }

    public function logout()
    {
        Auth::logout();
        $msg = 'Logout successfully';
        return $this->sendResponse(true,$msg,null);
    }

    public function refresh()
    {
        return $this->respondWithToken(Auth::refresh());
    }

    protected function respondWithToken($token,$user=null)
    {
        return response()->json(
            [
                'status' => true,
                'access_token' => $token,
                'token_type' => 'bearer',
                'expires_in' => Auth::factory()->getTTL() * 60,
                'user' => $user ?? Auth::user()
            ]);
    }

}
