<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    protected $table = 'products';


    protected $fillable = [
        'name',
        'name_fr',
        'gtin',
        'description',
        'description_fr',
        'brand_name',
        'country_origin',
        'gross_weight',
        'net_content',
        'weight_unit',
        'company_id',
    ];

    public function company(){
      return $this->belongsTo(Company::class);
    }

}
