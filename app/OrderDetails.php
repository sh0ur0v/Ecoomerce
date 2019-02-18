<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderDetails extends Model
{
    protected $table='tbl_order_details';
   
    
    public function product(){
        return $this->belongsTo('App\Product', 'product_id','order_details_id');
    }
}
