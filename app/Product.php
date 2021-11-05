<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'code',
        'name',
        'stock',
        'image',
        'sell_price',
        'status',
        'category_id',
        'provider_id',
    ];
    public function add_stock($quantity){
       
        $this->increment('stock', $quantity);

    }
    public function subtract_Stock($quantity){
       
        $this->decrement('stock', $quantity);

    }

    public function category(){
        return $this->belongsTo(Category::class);
    }
    public function provider(){
        return $this->belongsTo(Provider::class);
    }
    
}
