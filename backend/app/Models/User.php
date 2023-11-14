<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use App\Models\Like;
use App\Models\Tweet;
use App\Models\Follower;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable implements JWTSubject
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'first_name',
        'last_name',
        'mobile_no',
        'username',
        'email',
        'password',
        'avatar',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }


    public function getJWTCustomClaims()
    {
        return ['email'=>$this->email,
        'username'=>$this->username];
    }

    public function setPasswordAttribute($value){
        $this->attributes['password'] = Hash::make($value);
    }

    public function tweets()
    {
        return $this->hasMany(Tweet::class)->withCount('likes');
    }

    public function likes()
    {
        return $this->hasMany(Like::class);
    }

    public function followers()
    {
        return $this->belongsToMany(User::class, 'followers', 'follow_id', 'user_id')
                    ->withPivot('follow_id', 'user_id')
                    ->withTimestamps();
    }

    public function following()
    {
        return $this->belongsToMany(User::class, 'followers', 'user_id', 'follow_id')
                    ->withPivot('follow_id', 'user_id')
                    ->withTimestamps();
    }

    // public function isFollowing($user_id = null)
    // {
    //     return $this->following()
    //         ->where('follow_id', $user_id ?: auth()->id() )
    //         ->exists();
    // }

    public function isFollowing()
    {
        return $this->hasOne(Follower::class,'follow_id','id')->where('user_id',auth()->user()->id);
    }

    public function getIsFollowedAttribute()
    {
        return $this->followers()
            ->where('follow_id', $this->getKey() )
            ->exists();
    }
}
