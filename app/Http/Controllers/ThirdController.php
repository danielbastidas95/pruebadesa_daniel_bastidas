<?php

namespace App\Http\Controllers;

use App\Third;
use Illuminate\Http\Request;

class ThirdController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $thirds = Third::all();
        
        return view('thirds', [
            'hirds'=>$thirds;
        ]);

        //mostrar los registros actuales de terceros

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $third = new Third();
        $third->tipoidentificacion = $request->input('tipoidentificacion');
        $third->numeroidentificacion = $request->input('numeroidentificacion');
        $third->tipotercero = $request->input('tipotercero');
        $third->nombre1 = $request->input('nombre1');
        $third->nombre2 = $request->input('nombre2');
        $third->apellido1 = $request->input('apellido1');
        $third->apellido2 = $request->input('apellido2');
        $third->iddepa = $request->input('iddepa');
        $third->idmuni = $request->input('idmuni');
        $person->save();
        echo json_encode($person);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Third  $third
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('thirds.show', compact('id'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Third  $third
     * @return \Illuminate\Http\Response
     */
    public function edit(Third $third)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Third  $third_id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $third_id)
    {
        $third = Third::find($third_id);
        $third->tipoidentificacion = $request->input('tipoidentificacion');
        $third->numeroidentificacion = $request->input('numeroidentificacion');
        $third->tipotercero = $request->input('tipotercero');
        $third->nombre1 = $request->input('nombre1');
        $third->nombre2 = $request->input('nombre2');
        $third->apellido1 = $request->input('apellido1');
        $third->apellido2 = $request->input('apellido2');
        $third->iddepa = $request->input('iddepa');
        $third->idmuni = $request->input('idmuni');
        $person->save();
        echo json_encode($person);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Third  $third
     * @return \Illuminate\Http\Response
     */
    public function destroy($third_id)
    {
        $third = Third::find($third_id);
        $third->delete();

    }
}
