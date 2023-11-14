<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Follower extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'follow_id',
    ];

    public function following()
    {
        return $this->belongsTo(User::class,'follow_id','id');
    }

    public function follower()
    {
        return $this->belongsTo(User::class,'user_id','id');
    }

    
}
