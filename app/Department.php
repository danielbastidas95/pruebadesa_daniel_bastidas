<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    public function municipalities()
    {
        return $this->hasMany(Municipality::class, 'idmuni');
    }
}
