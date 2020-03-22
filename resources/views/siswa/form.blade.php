@extends('layouts.app')

@section('content')
<div class="table-responsive">
    <h1>Siswa</h1>
    <h1>form input</h1>
    <div class="row">
        <div class="col-md-6">
            <form action="/database/create" method="POST" enctype="multipart/form-data">
                @csrf
               
                <div class="form-group">
                    <label>Sekolah</label>
                    <select class="form-control" name="sekolah_id">
                        <option value="">Please Select</option>
                        @foreach ($sekolah as $resekolah)
                            <option value="{{$resekolah->id }}">{{$resekolah->nama_sekolah }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Nama</label>
                    <input type="text" name="name" class="form-control" 
                    placeholder="masukan nama">
                </div>
                <div class="form-group">
                    <label>Alamat</label>
                    <textarea class="form-control" name="alamat" cols="5" rows="5"></textarea>
                </div>
                <div class="form-group">
                    <label>No HP</label>
                    <input type="text" name="nohp" class="form-control" 
                    placeholder="masukan no HP">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
        <div class="col-md-6">

        </div>
    </div>
</div>
@endsection