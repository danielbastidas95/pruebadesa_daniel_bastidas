<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Third extends Model
{
    public function typeThird()
    {
        return $this->belongsTo(typeThird::class);
    }
}
