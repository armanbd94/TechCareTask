<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\V1\AuthController;
use App\Http\Controllers\API\V1\UserController;
use App\Http\Controllers\API\V1\TweetController;
use App\Http\Controllers\API\V1\FollowerController;


Route::prefix('v1')->group(function(){
    Route::post('register', [AuthController::class,'register']);
    Route::post('login', [AuthController::class,'login']);
    Route::middleware(['jwt.verify'])->group(function () {
        Route::post('refresh-token', [AuthController::class,'refresh']);
        Route::get('user/{username}', [UserController::class,'userProfile']);
        Route::get('search-user/{search_text}', [UserController::class,'findUser']);
        Route::get('{username}/follower', [FollowerController::class,'followerList']);
        Route::get('{username}/following', [FollowerController::class,'followingList']);
        Route::get('follow-suggestion-list', [FollowerController::class,'followSuggestionList']);
        Route::get('follow/{id}', [FollowerController::class,'follow']);
        Route::get('unfollow/{id}', [FollowerController::class,'unfollow']);
        Route::resource('tweet', TweetController::class);
        Route::get('tweets', [TweetController::class,'tweetList']);
        Route::post('like-tweet', [TweetController::class,'likeTweet']);
    });
});
