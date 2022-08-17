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

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
         <%@include file="./include/sidebar.jsp" %>
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
                <div class="container-fluid" >
                   
                    <div class="alert alert-info" role="alert">
						공지사항 등록 현황 <br>
						<span class="badge rounded-pill bg-info">${noticeCount }</span>건 등록 중 <a href="#" class="alert-link"><span class="float-right">더보기</span></a> 
   					</div>
                   
                    <table class="table mb-5">
						  <thead class="table-success text-dark text-center">
						    <tr>
						      <th scope="col">#</th>
						      <th scope="col">제목</th>
						      <th scope="col">썸네일</th>
						      <th scope="col">작성일</th>
						      <th scope="col">관리</th>
						    </tr>
						  </thead>
						  <tbody class="text-dark text-center">
						  	<c:if test="${empty noticeList}">
						        <tr><td colspan="5" class="text-center vt">등록된 공지글이 없습니다.</td></tr>
							</c:if>
						    <c:forEach items="${noticeList}" var="noticeList" varStatus="status">	
						       <c:set var="regdate" value="${noticeList.regdate}"/>
						       <c:set var="subject" value="${noticeList.subject}"/>
							    <tr>
							      <td class="vt" scope="row">${noticeList.idx}</td>
							      <td class="vt"><a href="/admin/noticeModify?idx=${noticeList.idx}">${fn:substring(subject,0,30)}...</a></td>
							      <td class="vt">
								      <c:if test="${not empty noticeList.thumburl}">
								     	 <img src="${noticeList.thumburl }"  style="width:80px;height:50px"/>
								      </c:if>
							      </td>
							      <td class="vt">${fn:substring(regdate,0,10) }</td>
							      <td class="vt"><a href="/admin/noticeModify?idx=${noticeList.idx}" class="btn btn-info">관리</a></td>
							    </tr>
							</c:forEach>	   
						  </tbody>
						</table>
					
					
					<div class="alert alert-primary" role="alert">
						포트폴리오 등록 현황 <br>
						<span class="badge rounded-pill bg-primary">${galleryCount }</span>건 등록 중 <a href="#" class="alert-link"><span class="float-right">더보기</span></a> 
   					</div>
                     <table class="table mb-5">
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
					
					<div class="alert alert-warning" role="alert">
						롤링배너 등록 현황 <br>
						<span class="badge rounded-pill bg-warning">${bannerCount }</span>건 등록 중 <a href="#" class="alert-link"><span class="float-right">더보기</span></a> 
   					</div>
                    <table class="table mb-5">
						  <thead class="table-success text-dark text-center">
						    <tr>
						      <th scope="col">#</th>
						      <th scope="col">제목</th>
						      <th scope="col">썸네일</th>
						      <th scope="col">작성일</th>
						      <th scope="col">관리</th>
						    </tr>
						  </thead>
						  <tbody class="text-dark text-center">
						  	<c:if test="${empty bannerList}">
						        <tr><td colspan="5" class="text-center vt">등록된 배너가 없습니다.</td></tr>
							</c:if>
						    <c:forEach items="${bannerList}" var="bannerList" varStatus="status">	
						       <c:set var="regdate" value="${bannerList.regdate}"/>
						       <c:set var="subject" value="${bannerList.subject}"/>
							    <tr>
							      <td class="vt" scope="row">${bannerList.idx}</td>
							      <td class="vt"><a href="/admin/bannerModify?idx=${bannerList.idx}">${fn:substring(subject,0,30)}...</a></td>
							      <td class="vt">
								      <c:if test="${not empty bannerList.thumburl1}">
								     	 <img src="${bannerList.thumburl1 }"  style="width:80px;height:50px"/>
								      </c:if>
							      </td>
							      <td class="vt">${fn:substring(regdate,0,10) }</td>
							      <td class="vt"><a href="/admin/bannerModify?idx=${bannerList.idx}" class="btn btn-info">관리</a></td>
							    </tr>
							</c:forEach>	   
						  </tbody>
						</table>
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

    <!-- Page level plugins -->
    <script src="/resources/admin/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/resources/admin/js/demo/chart-area-demo.js"></script>
    <script src="/resources/admin/js/demo/chart-pie-demo.js"></script>

</body>

</html>