<?php

namespace App\Http\Requests;

use App\Http\Requests\APIRequest;

class LoginRequest extends APIRequest
{
    public function authorize()
    {
        return true;
    }
    public function rules()
    {
        return [
            'email' => 'required|email',
            'password' => 'required|string|min:8|max:30'
        ];
    }
}
