<?php

namespace App\Http\Controllers\API\V1;

use App\Http\Controllers\Controller;

class APIController extends Controller
{
    public function sendResponse(bool $status,$msg = '',?array $data)
    {
        if ($data === null) {
            return response()->json([
                'status' => $status,
                'message' => $msg
            ]);
        }
        return response()->json([
            'status' => $status,
            'message' => $msg,
            'data' => $data,
        ]);
    }

}
