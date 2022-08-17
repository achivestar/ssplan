<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>         
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>      
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>에스에스플랜 | Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
 	<style>
    	table td.vt {
    		vertical-align:middle
    	}
    </style>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <br><br>
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin">
                
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
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="/admin/contact" >
                    <i class="fas fa-circle"></i>
                    <span>Contact</span>
                    <span class="position-relative px-1">
                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">9+</span>
                    </span>
                </a>

            </li>

   

           

            <!-- Divider -->
            <hr class="sidebar-divider">

           
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                      
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                           
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>


                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
  
                      
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">로그아웃</span>
                               
                            </a>
                            
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <div class="alert alert-info" role="alert">
						포트폴리오
						<p class="float-right"><a href="/admin">Home</a> / <a href="#none" style="font-weight:bold">Portfolio</a></p>
   					</div>
                    
					<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						<a href="/admin/portfolioRegist" class="btn btn-primary mt-3 mb-3">포트폴리오 등록</a>
					</div>	
					  <table class="table">
						  <thead class="table-success text-dark text-center">
						    <tr>
						      <th scope="col">#</th>
						      <th scope="col">제목</th>
						      <th scope="col">종류</th>
						      <th scope="col">썸네일</th>
						      <th scope="col">등록일</th>
						      <th scope="col">관리</th>
						    </tr>
						  </thead>
						  <tbody class="text-dark text-center">
						   <c:if test="${empty galleryList}">
						        <tr><td colspan="5" class="text-center vt">등록된 포트폴리오 갤러리가 없습니다.</td></tr>
							</c:if>
						    <c:forEach items="${galleryList}" var="galleryList" varStatus="status">	
						       <c:set var="regdate" value="${galleryList.regdate}"/>
						       <c:set var="subject" value="${galleryList.subject}"/>
						       <c:set var="category" value="${galleryList.category}"/>
						       <tr>
							      <td class="vt" scope="row">${galleryList.idx}</td>
							      <td class="vt"><a href="/admin/portfolioModify?idx=${galleryList.idx}">${fn:substring(subject,0,30)}...</a></td>
							      <td class="vt" scope="row">
							       <c:choose>
							         <c:when test = "${category == 1}">
							           	현수막
							         </c:when>
							         <c:when test = "${category == 2}">
							            간판
							         </c:when>
							         <c:when test = "${category == 3}">
							            조형물
							         </c:when>
							         <c:when test = "${category == 4}">
							            행사.전시
							         </c:when>
							         <c:when test = "${category == 5}">
							            기타
							         </c:when>
							      </c:choose>
							      </td>
							      <td class="vt">
								      <c:if test="${not empty galleryList.thumburl}">
								     	 <img src="${galleryList.thumburl }"  style="width:80px;height:50px"/>
								      </c:if>
							      </td>
							      <td class="vt">${fn:substring(regdate,0,10) }</td>
							      <td class="vt"><a href="/admin/portfolioModify?idx=${galleryList.idx}" class="btn btn-info">관리</a></td>
							    </tr>
							</c:forEach>	   
						  </tbody>
						</table>
						<nav aria-label="Page navigation example">
						  <ul class="pagination justify-content-center">
						    <li class="page-item disabled">
						      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
						    </li>
						    <li class="page-item"><a class="page-link" href="#">1</a></li>
						    <li class="page-item"><a class="page-link" href="#">2</a></li>
						    <li class="page-item"><a class="page-link" href="#">3</a></li>
						    <li class="page-item">
						      <a class="page-link" href="#">Next</a>
						    </li>
						  </ul>
						</nav>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; kmcomm 2022</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/admin/js/sb-admin-2.min.js"></script>



</body>

</html>