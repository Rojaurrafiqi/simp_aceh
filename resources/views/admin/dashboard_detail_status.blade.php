@extends('layouts.template_admin')
@section('judulcontent2', 'Status')
@section('content')

@foreach ($mails as $m)
<form action="/admin/dashboard/detail/status/store" method="post">

    {{ csrf_field() }}

<input type="hidden" name="nomor_surat" value="{{$m->nomor_surat}}">

    <label>Status Surat</label>
    <select class="form-control" name="status">
    <option value="Disetujui" {{ $m->status == "Disetujui" ? 'selected' : '' }}>Disetujui</option>
    <option value="Ditolak" {{ $m->status == "Ditolak" ? 'selected' : '' }}>Ditolak</option>
    <option value="Disiarkan" {{ $m->status == "Disiarkan" ? 'selected' : '' }}>Disiarkan</option>
    <option value="Proses" {{ $m->status == "Proses" ? 'selected' : '' }}>Proses</option>
    <option value="Revisi" {{ $m->status == "Revisi" ? 'selected' : '' }}>Revisi</option>
</select>
<br/>


<div class="form-group">
    <label>Deskripsi</label>
    <textarea class="form-control" name="keterangan" rows="3">{{$m->keterangan}}</textarea>
</div>

<a href="/admin/dashboard/detail/{{$m->nomor_surat}}" class="btn btn-warning">Kembali</a>
<button type="submit" class="btn btn-primary">Submit</button>

</form>
@endforeach
@endsection