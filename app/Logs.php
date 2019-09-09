<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Logs extends Model
{
    protected $table='logdb';
    protected $fillable=['id','data_hora','usuario','aplicacao','tipo','mensagem'];



}
