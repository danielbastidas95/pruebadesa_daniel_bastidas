<?php

namespace App\Http\Controllers;

use App\TypeThird;
use Illuminate\Http\Request;

class TypeThirdController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $typeThird = TypeThird::get();
        echo json_encode($typeThird);
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\TypeThird  $typeThird
     * @return \Illuminate\Http\Response
     */
    public function show(TypeThird $typeThird)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\TypeThird  $typeThird
     * @return \Illuminate\Http\Response
     */
    public function edit(TypeThird $typeThird)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\TypeThird  $typeThird
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TypeThird $typeThird)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\TypeThird  $typeThird
     * @return \Illuminate\Http\Response
     */
    public function destroy(TypeThird $typeThird)
    {
        //
    }
}
