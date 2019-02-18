<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'product';
    
    public function orderDetails(){
        return $this->hasMany('App\OrderDetails','product_id');
    }
        public function productImages(){
        return $this->hasOne('App\ProductImage','product_id');
    }
   
}
