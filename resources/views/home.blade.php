@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                   <div class="container">
                       <div class="row">
                           <div class="col-md-6">
                                <h1><a href="/logic" class="btn btn-primary btn-lg" style="width:250px;">logic</a></h1> 
                           </div> 
                           <div class="col-md-6">
                                <h1><a href="/database" class="btn btn-primary btn-lg" style="width:250px;">database</a></h1> 
                           </div> 
                       </div>
                   </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
