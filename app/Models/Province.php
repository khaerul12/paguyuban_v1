<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Province extends Model
{
    use HasFactory;
    public $timestamps = false;


    protected $fillable = [
        'name',
        'count'
    ];


    public function address(): HasMany
    {
        return $this->hasMany(Address::class);
    }
}
