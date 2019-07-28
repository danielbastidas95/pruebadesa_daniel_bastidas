<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TypeThird extends Model
{
    public function third()
    {
        return $this->hasMany(Third::class);
    }
}
