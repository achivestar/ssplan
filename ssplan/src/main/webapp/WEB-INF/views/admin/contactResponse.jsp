<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>         
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>       
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>에스에스플랜 | Contact</title>

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
                <div class="container-fluid">
                	<div class="alert alert-info" role="alert">
						contact
						<p class="float-right"><a href="/admin">Home</a> / <a href="#none" style="font-weight:bold">contact</a></p>
   					</div>

					<div class="row">
						
							<div class="mb-3 col-12">
							  <label class="form-label">이름 : ${contactvo.name }</label>
							
							</div>
							<div class="mb-3  col-12">
							  <label class="form-label">이메일 : ${contactvo.email }</label>
							
							</div>
							<div class="mb-3  col-12">
							  <label class="form-label">제목 : ${contactvo.subject }</label>
							
							</div>
							<div class="mb-3  col-12">
							  <label class="form-label">등록일 : ${contactvo.regdate }</label>
							
							</div>
							<div class="mb-3  col-12">
							  <label for="exampleFormControlTextarea1" class="form-label">문의 내용</label>
							  <p>${contactvo.message }</p>
							</div>
							
							
					</div>
					<hr>
					<div class="row">
						<div class="mb-3 col-12">
							<c:if test="${empty contactvo.getResponseMessage()}">
								아직 답변이 없습니다.
							</c:if>
							<c:if test="${not empty contactvo.getResponseMessage()}">
								답변내용 : ${contactvo.getResponseMessage() }<br>
								답변날짜 : ${contactvo.getResponsedate() }
							</c:if>
							
						</div>
					</div>
					<div class="row">
						<div class="mb-3 col-12">
							<form id="form" method="post">
							  <label for="response" class="form-label">답변 작성</label>
							  <textarea class="form-control" name="responseMessage" id="responseMessage" rows="8"></textarea>
							   <input type="hidden" name="idx" value="${contactvo.idx }" />
							   <input type="hidden" name="responseYn" value="1" />
							   <input type="hidden" name="email" value="${contactvo.email }" /> 
							  <input type="submit" value="작성완료" id="save" class="btn btn-primary mt-1" />
							</form>
						</div>
					</div>
			

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <%@include file="./include/footer.jsp" %>
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
    
     <script>
  $(document).ready(function(){
	
		$("#save").click(function(e){
			
			
			if($("#responseMessage").val()==""){
				 alert("답변 내용을 입력해 주세요.");
				 $("#responseMessage").focus();
			     return false;
			}else{
				 var form = new FormData(document.getElementById('form'));
					$.ajax({
					    type: 'POST',
						url: "/admin/contactResponse", 
						data: form,
						dataType: 'html',
						processData: false, 
						contentType: false, 		
						enctype: 'multipart/form-data',
						success: function(data){
							alert("답변이 등록되었습니다.");
							location.href="/admin/contact";
						}
						,beforeSend : function(){
							$(".spinner").removeClass("displayLoding");
						},
						complete:function(){
							$(".spinner").addClass("displayLoding");	
						},error : function(){
							alert("등록 실패!");
							location.href="/admin/contact";
						}
					}) ;
					//$("#msform").submit();
				}
				
		
		});//save btn end
		        
});
    </script>
    

</body>

</html>