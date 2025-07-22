<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    //
    protected $table = 'companies';


    protected $fillables = [
        'company_name',
        'company_address',
        'company_number',
        'company_email',
        'owner_id',
        'contact_id',
    ];

    public function owner(){
     return $this->belongsTo(Owner::class, 'owner_id');
    }

    public function contact(){
     return $this->belongsTo(Contact::class, 'contact_id');
    }

    public function products(){
      return $this->hasMany(Product::class);
    }

}
