<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <br><br>
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin/index">
                
                    <img class="rounded-circle"
                                    src="/resources/assets/img/logo.jpg" style="width:60%">

            </a>
            <br><br>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">


            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                menu
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="/admin/notice" >
                    <i class="fas fa-circle"></i>
                    <span>공지사항</span>
                </a>

            </li>
            
             <li class="nav-item">
                <a class="nav-link" href="/admin/portfolio" >
                    <i class="fas fa-circle"></i>
                    <span>포트폴리오</span>
                </a>

            </li>

           <!--  <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-circle"></i>
                    <span>포트폴리오</span>
                </a>
                 <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">portfolio:</h6>
                        <a class="collapse-item" href="/admin/portfolio">포트폴리오 사진 업로드</a>
                        <a class="collapse-item" href="/admin/banner">롤링배너 업로드</a>
                    </div>
                </div> 
            </li> -->
            
             <li class="nav-item ">
                <a class="nav-link" href="/admin/contact" >
                    <i class="fas fa-circle"></i>
                    <span>Contact</span>
                    <span class="position-relative px-1">
                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">${contactCount}+</span>
                    </span>
                </a>

            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

           
        </ul>