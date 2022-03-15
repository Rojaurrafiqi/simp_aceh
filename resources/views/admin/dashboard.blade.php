@extends('layouts.template_admin')


@section('judulcontent2', 'dashboard / surat masuk')

@section('content')
                        <div class="row">
                            <!-- non aktif 
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Berita Masuk</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="{{ route('admin_dashboard') }}">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div> -->

                          

                            <div class="col-xl-3 col-md-6">
                                    <div class="card bg-primary text-white mb-4">
                                        <div class="card-body">Berita Masuk</div>
                                        <div class="card-footer d-flex align-items-center justify-content-between">
                                            <a class="small text-white  dropdown-toggle"  data-toggle="dropdown" >
                                                View Details
                                            </a>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="{{route('mail_disetujui')}}" type="button">Disetujui</a>
                                                <a class="dropdown-item" href="{{route('mail_ditolak')}}" type="button">Ditolak</a>
                                            </div>
                                        </div>
                                    </div>
                            </div>

                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Data Karyawan</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                       <a class="small text-white stretched-link" href="{{route('data_karyawan')}}">View Details <i class="small text-white fas fa-angle-right"></i></a> 
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Data Jurnalis Media</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                       <a class="small text-white stretched-link" href="{{route('data_jurnalis_media')}}">View Details <i class="small text-white fas fa-angle-right"></i></a> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4 mr-1">
                                    <div class="card-body">Rekap Laporan Berita Bulanan</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                       <a class="small text-white stretched-link" href="{{route('mail_rekap')}}">View Details <i class="small text-white fas fa-angle-right"></i></a> 
                                    </div>
                                </div>
                            </div>
                        </div>
                             {{-- <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Tanggal</th>
                                                <th>Judul Surat</th>
                                                <th>Pengirim</th>
                                                <th>Status</th>
                                                <th>Aksi</th>
                                               
                                            </tr>
                                        </thead>
                                      
                                        <tbody>
                                             <?php $no = 0;?>
                                            @foreach ($mails as $m)    
                                                <tr>
                                                    <?php $no++ ;?>
                                                    <td>{{ $no }}</td>
                                                    <td>{{$m->created_at}} </td>
                                                    <td>{{$m->judul_surat}}</td>
                                                    <td>{{$m->surat_dari}} </td>
                                                    <td>{{$m->status}} </td>
                                                    <td> 
                                                    <a href="/admin/dashboard/detail/{{$m->nomor_surat}}" >detail</a> |
                                                        <a href="/admin/dashboard/mail/hapus/{{$m->nomor_surat}}">hapus</a> 
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                                    {{ $mails->links() }} 
                                </div>

                                Halaman : {{ $mails->currentPage() }} <br/>
                                Jumlah Data : {{ $mails->total() }} <br/>
                                Data Per Halaman : {{ $mails->perPage() }} <br/>
                            
                            
                                
                            </div> --}}
 
@endsection