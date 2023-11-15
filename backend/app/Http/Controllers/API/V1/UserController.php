<?php

namespace App\Http\Controllers\API\V1;

use App\Models\User;
use App\Models\Follower;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class UserController extends Controller
{

    public function findUser(string $search_text,Request $request)
    {
        $data['status'] = false;
        try {
            $perPage = isset($request->per_page) && !empty($request->per_page) ? $request->per_page : 10; // Number of items per page
            $page = isset($request->page) && !empty($request->page) ? $request->page : 1; // Current page
            $offset = ($page - 1) * $perPage;
            $users = User::where(function($q) use ($search_text){
                $q->where('username','LIKE',"%{$search_text}%")
                ->orWhere('email','LIKE',"%{$search_text}%");
            })->offset($offset)
            ->limit($perPage)
            ->orderBy('username')
            ->get();
            if($users)
            {
                $data['status'] = true;
                $data['message'] = 'Found Data';
                $data['data'] = $users;
            }else{
                $data['message'] = 'No Data Found';
            }
        } catch (\Throwable $th) {
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }

    public function userProfile(string $username)
    {
        $data['status'] = false;
        try {
            $user = User::withCount('followers')->withCount('following')->withCount('tweets')
            ->withCount('isFollowing')
            ->where('username',$username)
            ->first();
            if($user)
            {
                $data = [
                    'status' => true,
                    'message' => 'Found data',
                    'data' => $user
                ];
            }else{
                $data['message'] = 'No data found';
            }
        } catch (\Throwable $th) {
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }




}
