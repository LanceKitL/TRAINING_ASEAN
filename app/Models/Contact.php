<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    //    //
    protected $table = 'contacts';

    protected $fillable = [
        'name',
        'mobile_number',
        'email',
    ];


    public function company(){
      return $this->belongsTo(Company::class);
    }
}
