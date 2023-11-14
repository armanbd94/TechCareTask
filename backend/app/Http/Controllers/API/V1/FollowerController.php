<?php

namespace App\Http\Controllers\API\V1;

use App\Models\User;
use App\Models\Follower;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FollowerController extends Controller
{
    public function followSuggestionList(Request $request)
    {
        $data['status'] = false;
        try {
            $me = auth()->user();
            $followingUser = $me->following()->pluck('follow_id')->toArray();
            $users = User::whereNotIn('id', array_merge($followingUser,[$me->id]))->withCount('isFollowing')->inRandomOrder()->limit(5)->get();
            if(!$users->isEmpty())
            {
                $data = [
                    'status' => true,
                    'message' => 'Found data',
                    'data' => $users
                ];
            }else{
                $data['message'] = 'No data found';
            }
        } catch (\Throwable $th) {
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }

    public function follow(int $id)
    {
        $data['status'] = false;
        try {
            $follow = Follower::updateOrCreate(['user_id'=>auth()->user()->id,'follow_id'=>$id],['user_id'=>auth()->user()->id,'follow_id'=>$id]);
            if($follow)
            {
                $data['status'] = true;
                $data['message'] = 'Successfully added in following list';
            }else{
                $data['message'] = 'Failed to add in following list';
            }
        } catch (\Throwable $th) {
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }

    public function unfollow(int $id)
    {
        $data['status'] = false;
        try {
            $unfollow = Follower::where(['user_id'=>auth()->user()->id,'follow_id'=>$id])->delete();
            if($unfollow)
            {
                $data['status'] = true;
                $data['message'] = 'Successfully removed from following list';
            }else{
                $data['message'] = 'Failed to remove from following list';
            }
        } catch (\Throwable $th) {
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }

    public function followerList(string $username,Request $request)
    {
        $data['status'] = false;
        try {
            $perPage = 10; // Number of items per page
            $page = isset($request->page) && !empty($request->page) ? $request->page : 1; // Current page
            $offset = ($page - 1) * $perPage;
            $user = User::where('username',$username)->first();
            $following = User::withCount('followers')->withCount('following')->withCount('tweets')->withCount('isFollowing')
            ->join('followers','users.id','followers.user_id')
            ->where('followers.follow_id',$user->id)
            ->offset($offset)
            ->limit($perPage)
            ->orderByDesc('users.id')
            ->get();


            // Follower::with('follower')->where('user_id',auth()->user()->id)
            // ->offset($offset)
            // ->limit($perPage)
            // ->orderByDesc('id')
            // ->get();
            if($following)
            {
                $data['status'] = true;
                $data['message'] = 'Found data';
                $data['data'] = $following;
            }else{
                $data['message'] = 'No data found';
            }
        } catch (\Throwable $th) {
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }
    public function followingList(string $username,Request $request)
    {
        $data['status'] = false;
        try {
            $perPage = 10; // Number of items per page
            $page = isset($request->page) && !empty($request->page) ? $request->page : 1; // Current page
            $offset = ($page - 1) * $perPage;
            $user = User::where('username',$username)->first();
            $following = User::withCount('followers')->withCount('following')->withCount('tweets')->withCount('isFollowing')
            ->join('followers','users.id','followers.follow_id')
            ->where('followers.user_id',$user->id)
            ->offset($offset)
            ->limit($perPage)
            ->orderByDesc('users.id')
            ->get();
            if($following)
            {
                $data['status'] = true;
                $data['message'] = 'Found data';
                $data['data'] = $following;
            }else{
                $data['message'] = 'No data found';
            }
        } catch (\Throwable $th) {
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }
}
