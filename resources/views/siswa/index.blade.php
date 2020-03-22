@extends('layouts.app')

@section('content')
<div class="table-responsive">
	
    @if(session('succes'))
	<div class="alert alert-success" role="alert">
	   {{session('succes')}}
	</div>
	@endif

    <h1>Siswa</h1>
    <a href="/database/create" class="btn btn-info mb-2">Input Siswa</a>
    <table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>#</th>
					<th>Name</th>
					<th>Alamat</th>
					<th>No HP</th>
					<th>Asal Sekolah</th>
				
				</tr>
			</thead>
			<tbody>
				@foreach($siswa as $resiswa)
				<tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{$resiswa->name}}</td>
                    <td>{{$resiswa->alamat}}</td>
                    <td>{{$resiswa->nohp}}</td>
                    <td>{{$resiswa->sekolah->nama_sekolah ?? null}}</td>
                    
				</tr>
			@endforeach
			</tbody>
		</table>
		{{$siswa->links()}}
    </div>
@endsection