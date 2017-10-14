@extends('layouts.app')
@section('album_content')
<!-- Page Header-->
<header class="page-header">
  <div id="row row-flex">
    <div class="col-xs-12 col-md-12">
      <strong><label class="col-xs-12 col-md-10" style="font-size: 30px">Album 1</label></strong>
      <!-- album không có ảnh -->
      <a href="#" class="btn navbar-btn btn-outline-primary mt-3 mt-lg-0 ml-lg-3">Thêm mới</a>
    </div>
  </div>
</header>
<!-- section -->
<section class="forms">
  <div class="container" id="container" style="min-height: 400px">
    <div class="row">
      <div class="col-xs-12 col-md-3 text-center">
        <a class="sb-preview-img" href="#">
          <img class="folder-img-top" src="{{ asset('css/abc.jpg') }}" alt="Ảnh abc">
        </a>  
      </div>
      <div class="col-xs-12 col-md-3 text-center">
        <a class="sb-preview-img" href="#">
          <img class="folder-img-top" src="{{ asset('css/abc.jpg') }}" alt="Ảnh abc">
        </a>  
      </div>
    </div>
  </div>
</section>
@endsection
