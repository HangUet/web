@extends('layouts.app')
@section('user_home')
<!-- Page Header-->
<header class="page-header">
  <div id="row row-flex">
    <div class="col-xs-12 col-md-12">
      <strong><label class="col-xs-12 col-md-10" style="font-size: 30px">Album Ảnh</label></strong>
      <a href="#" class="btn navbar-btn btn-outline-primary mt-3 mt-lg-0 ml-lg-3">Thêm mới</a>
    </div>
  </div>
</header>
<!-- section -->
<section class="forms">
  <div class="container" id="container" style="min-height: 400px">
    <div class="row">
      <div class="col-xs-12 col-md-3 text-center">
        <div class="folder">
          <div class="folder-header">
          <a class="sb-preview-img" href="#">
            <img class="folder-img-top" src="{{ asset('css/abc.jpg') }}" alt="Ảnh Album 1">
          </a>
          </div>
          <div class="folder-section">
            <h4>Album 1</h4>
          </div>
        </div>   
      </div>
      <div class="col-xs-12 col-md-3 text-center">
        <div class="folder">
          <div class="folder-header">
          <a class="sb-preview-img" href="#">
            <img class="folder-img-top" src="{{ asset('css/abc.jpg') }}" alt="Ảnh Album 1">
          </a>
          </div>
          <div class="folder-section">
            <h4>Album 1</h4>
          </div>
        </div>   
      </div>
    </div>
  </div>
</section>
@endsection
