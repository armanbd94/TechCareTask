<?php

namespace App\Http\Controllers\API\V1;

use App\Models\Like;
use App\Models\Tweet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class TweetController extends Controller
{
    public function tweetList(Request $request)
    {
        $data['status'] = false;
        try {
            $user_id = isset($request->user_id) && !empty($request->user_id) ? $request->user_id : null;
            $username = isset($request->username) && !empty($request->username) ? $request->username : null;
            $perPage = 10; // Number of items per page
            $page = isset($request->page) && !empty($request->page) ? $request->page : 1; // Current page
            $offset = ($page - 1) * $perPage;
            if($user_id || $username)
            {
                $tweets = Tweet::with('user')
                ->withCount('likes')->withCount('likedByMe')
                ->when($user_id,function($q) use ($user_id){
                    $q->where('user_id', $user_id);
                })
                ->when($username,function($q) use ($username){
                    $q->whereHas('user', function ($u) use ($username) {
                        $u->where('username',$username);
                    });
                })
                ->offset($offset)
                ->limit($perPage)
                ->orderByDesc('id')
                ->get();
            }else{
                $followingUser =array_merge(auth()->user()->following()->pluck('follow_id')->toArray(), [auth()->user()->id]);
                $tweets = Tweet::with('user')
                ->withCount('likes')->withCount('likedByMe')
                ->whereIn('user_id', $followingUser)
                ->offset($offset)
                ->limit($perPage)
                ->orderByDesc('id')
                ->get();
            }

            if(!$tweets->isEmpty())
            {
                $data = [
                    'status' => true,
                    'message' => 'Found data',
                    'data' => $tweets
                ];
            }else{
                $data['message'] = 'No data found';
            }
        } catch (\Throwable $th) {
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }

    public function store(Request $request)
    {
        $data['status'] = false;
        try {
            $tweet = Tweet::create(['user_id'=>auth()->user()->id,'tweet'=>$request->tweet]);
            if($tweet)
            {
                $data = [
                    'status' => true,
                    'message' => 'Tweet published',
                    'data' => Tweet::with('user')
                    ->withCount('likes')->withCount('likedByMe')->findOrFail($tweet->id)
                ];
            }else{
                $data['message'] = 'Failed';
            }
        } catch (\Throwable $th) {
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }

    public function show(int $id)
    {
        $data['status'] = false;
        try {
            $tweet = Tweet::with('user')
            ->withCount('likes')
            ->findOrFail($id);
            if($tweet)
            {
                $data = [
                    'status' => true,
                    'message' => 'Found data',
                    'data' => $tweet
                ];
            }else{
                $data['message'] = 'No data found';
            }
        } catch (\Throwable $th) {
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }

    public function destroy(int $id)
    {
        $data['status'] = false;
        DB::beginTransaction();
        try {
            $tweet = Tweet::with('likes')->findOrFail($id);
            if($tweet)
            {
                if(!$tweet->likes->isEmpty())
                {
                    $tweet->likes()->delete();
                }
                if($tweet->delete())
                {
                    $data = [
                        'status' => true,
                        'message' => 'Removed'
                    ];
                }else{
                    $data['message'] = 'Failed to remove';
                }

            }else{
                $data['message'] = 'No data found';
            }
            DB::commit();
        } catch (\Throwable $th) {
            DB::rollback();
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }

    public function likeTweet(Request $request)
    {
        $data['status'] = false;
        try {
            $tweet = $request->like_status == true ? Like::updateOrCreate(['user_id'=>auth()->user()->id,'tweet_id'=>$request->tweet_id],['user_id'=>auth()->user()->id,'tweet_id'=>$request->tweet_id]) : Like::where(['user_id'=>auth()->user()->id,'tweet_id'=>$request->tweet_id])->delete();
            if($tweet)
            {
                $data = [
                    'status' => true,
                    'message' => 'Like status updated',
                    'data' => $tweet
                ];
            }else{
                $data['message'] = 'Failed to update like status';
            }
        } catch (\Throwable $th) {
            $data['message'] = $th->getMessage();
        }
        return response()->json($data);
    }
}
