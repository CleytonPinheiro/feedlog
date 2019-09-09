<?php

namespace App\Http\Controllers;
use App\Logs;
use Illuminate\Http\Request;

class LogsController
{
    public function index()
    {
        return Logs::all();
    }
    public function store(Request $request)
    {

            return response()
                 ->json(Logs::create(['id'=>$request->id,
                     'data_hora'=>$request->data_hora,
                     'usuario'=>$request->usuario,
                     'aplicacao'=>$request->aplicacao,
                     'tipo'=>$request->tipo,
                     'mensagem'=>$request->mensagem]),201
                 );}

}





