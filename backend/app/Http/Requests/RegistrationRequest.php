<?php

namespace App\Http\Requests;

use App\Http\Requests\APIRequest;

class RegistrationRequest extends APIRequest
{

    public function authorize()
    {
        return true;
    }
    public function rules()
    {
        return [
            'first_name'  => 'required|string',
            'last_name'   => 'required|string',
            'username'    => 'required|min:5|max:50|unique:users,username',
            'mobile_no'   => 'required|unique:users,mobile_no',
            'email'       => 'required|email|max:100|unique:users,email',
            'password'    => 'required|string|min:8|max:30',
        ];
    }
}
