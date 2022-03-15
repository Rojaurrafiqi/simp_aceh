@extends('layouts.template_admin')
@section('judulcontent2', 'Tambah Data Karyawan')
@section('content')

@foreach ($data_karyawan as $dk)
    

<form action="{{route('data_karyawan_editdata_store')}}" method="post">

    {{ csrf_field() }}
<input type="hidden" value="{{$dk->id_karyawan}}" name="id_karyawan">
<div class="form-group">
    <label>Nama Karyawan</label>
    <input type="text" class="form-control"  name="nama_karyawan" value="{{$dk->nama_karyawan}}">
</div>

<label>Jabatan</label>
<select class="form-control" name="jabatan">
    <option value="Manager" {{ $dk->jabatan == "Manager" ? 'selected' : '' }}>Manager</option>
    <option value="Kepala Bagian" {{ $dk->jabatan == "Kepala Bagian" ? 'selected' : '' }}>Kepala Bagian</option>
    <option value="Karyawan" {{ $dk->jabatan == "Karyawan" ? 'selected' : '' }}>Karyawan</option>
    <option value="Operator" {{ $dk->jabatan == "Operator" ? 'selected' : '' }}>Operator</option>
</select>

<br/>
<label>Status</label>
<select class="form-control" name="status">
    <option value="Ditempat" {{ $dk->status == "Ditempat" ? 'selected' : '' }}>Ditempat</option>
    <option value="Luar Kota" {{ $dk->status == "Luar Kota" ? 'selected' : '' }}>Luar Kota</option>
</select>

<br/>
<div class="form-group">
    <label>Handphone</label>
    <input type="text" class="form-control"  name="no_hp" value="{{$dk->no_hp}}">
</div>
<div class="form-group">
    <label>Alamat</label>
    <input type="text" class="form-control"  name="alamat" value="{{$dk->alamat}}">
</div>

<button type="submit" class="btn btn-primary">Tambah</button>
</form>
 <br/>
 <br/>
 <br/>
 @endforeach
@endsection