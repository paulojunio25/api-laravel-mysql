<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BarberServices extends Model
{
    use HasFactory;

    protected $table = 'barbersservices';
    public $timestamps = false;
}
