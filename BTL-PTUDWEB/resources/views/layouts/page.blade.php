@extends('layouts.app')
@section('page')
<div class="page form-page">
  <!-- Main Navbar-->
  <header class="header">
    <nav class="navbar">
      <!-- Search Box-->
      <div class="search-box">
        <button class="dismiss"><i class="icon-close"></i></button>
        <form id="searchForm" action="#" role="search">
          <input type="search" placeholder="Tìm kiếm..." class="form-control">
        </form>
      </div>
      <div class="container-fluid">
        <div class="navbar-holder d-flex align-items-center justify-content-between">
          <!-- Navbar Header-->
          <div class="navbar-header">
            <!-- Navbar Brand -->
            <a href="#" class="navbar-brand">
              <div class="brand-text brand-big hidden-lg-down">
                <strong>UET GRAM</strong>
              </div>
              <div class="brand-text brand-small">
                <strong>UETG</strong>
              </div>
            </a>
            <!-- Toggle Button-->
            <a id="toggle-btn" href="#" class="menu-btn active">
              <span></span>
              <span></span>
              <span></span>
            </a>
          </div>
          <!-- Navbar Menu -->
          <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center" style="padding-right: 0">

            <!-- Search-->
            <li class="nav-item d-flex align-items-center">
              <a id="search" href="#"><span class="glyphicon glyphicon-search"></span></a>
            </li>
            <!-- Logout    -->
            <li class="nav-item">
              <a href="#" class="nav-link logout">
                Đăng xuất
                <i class="fa fa-sign-out"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <div class="page-content d-flex align-items-stretch"> 
    <!-- Side Navbar -->
    <nav class="side-navbar">
      <!-- Sidebar Header-->
      <div class="sidebar-header d-flex align-items-center">
        <div class="avatar"><img src="#" alt="avatar" class="img-fluid rounded-circle"></div>
        <div class="title">
          <h1 class="h4">Name</h1>
          <p>User</p>
        </div>
      </div>
      <!-- Sidebar Navidation Menus-->
        <ul class="list-unstyled">
          <li class="active"> <a href="#"><i class="icon-home"></i>Trang chủ</a></li>
          <li><a href="#"><i class="icon-interface-windows"></i>Đăng nhập</a></li>
        </ul>

    </nav>
    <div class="content-inner">
      @yeild('user_home')
      <!-- Page Footer -->
      <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p>Nhóm 3</p>
            </div>
            <div class="col-sm-6 text-right">
              <p>Design by: Nhóm 3</p>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
</div>
@endsection
