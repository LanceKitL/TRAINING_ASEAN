<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Owner extends Model
{
    //
    protected $table = 'owners';

    protected $fillable = [
        'name',
        'mobile_number',
        'email',
    ];


    public function company(){
      return $this->belongsTo(Company::class);
    }
}
