<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("crcn", "\r\n");
	pageContext.setAttribute("br","<br>");
%>     
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>에스에스플랜 | 배너관리</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
	
    <style>
 	 	.displayLoding {
				display:none;
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
						롤링배너등록
						<p class="float-right"><a href="/admin">Home</a> / <a href="#none" style="font-weight:bold">Banner</a></p>
   					</div>
                	
                	<form id="form" method="post" enctype="multipart/form-data">
						<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						    <input type="button" class="btn btn-secondary mx-1" id="list" value="목록">
							<input type="button" class="btn btn-primary" id="save" value="저장">
						</div>	
						
						<div class="mb-3">
						  <label for="subject" class="form-label text-info fw-bold">배너 제목</label>
						  <input type="text" class="form-control" id="subject" name="subject" placeholder="">
						</div>
						<div class="mb-3">
						  <label for="contents" class="form-label text-info fw-bold">내용</label>
						  <textarea id="contents" class="form-control" name="contents" rows="10"></textarea>
						</div>
						<hr>
						<div class="mb-3">
						  <label for="url" class="form-label text-info fw-bold">프로젝트 카테고리</label>
						  <br>
						  <div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="category" id="inlineRadio1" value="1">
							  <label class="form-check-label text-dark" for="inlineRadio1">현수막</label>
							</div>
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="category" id="inlineRadio2" value="2">
							  <label class="form-check-label text-dark" for="inlineRadio2">간판</label>
							</div>
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="category" id="inlineRadio3" value="3">
							  <label class="form-check-label text-dark" for="inlineRadio3">조형물</label>
							</div>
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="category" id="inlineRadio4" value="4">
							  <label class="form-check-label text-dark" for="inlineRadio4">행사.전시</label>
							</div>
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="category" id="inlineRadio5" value="5">
							  <label class="form-check-label text-dark" for="inlineRadio5">기타</label>
							</div>
						</div>
						<div class="mb-3">
						  <label for="client" class="form-label text-info fw-bold">고객사명</label>
						  <input type="text" class="form-control" id="client" name="client" placeholder="">
						</div>
	
						<div class="mb-3">
						  <label for="formFile" class="form-label text-info fw-bold">등록 이미지 (800x450) 사이즈 권장 </label>
						  <input class="form-control" type="file" id="thumb1" name="thumb1"><br>
						  <input class="form-control" type="file" id="thumb2" name="thumb2"><br>
						  <input class="form-control" type="file" id="thumb3" name="thumb3">
						</div>

                    </form>

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
	
  <script>
  $(document).ready(function(){
	
		$("#save").click(function(e){
			
			var fileCheck1 = document.getElementById("thumb1").value;
			var fileCheck2 = document.getElementById("thumb2").value;
			var fileCheck3 = document.getElementById("thumb3").value;
			
			if($("#subject").val()==""){
				 alert("제목을 입력해 주세요.");
				 $("#subject").focus();
			     return false;
			}else if($("#contents").val()==""){
				alert("간단한 부가설명을 입력해 주세요");
				$("#contents").focus();
				 return false;
			}else if($('input:radio[name=category]').is(':checked') == false){
				alert("노출할 카테고리를 선택해 주세요");
				 return false;
			}else  if(!fileCheck1){
		        alert("반드시 하나 이상의 이미지를 첨부해야 합니다.");
		        return false;
		    }else{
				 var form = new FormData(document.getElementById('form'));
					$.ajax({
					    type: 'POST',
						url: "/admin/bannerRegist", 
						data: form,
						dataType: 'html',
						processData: false, 
						contentType: false, 		
						enctype: 'multipart/form-data',
						success: function(data){
							alert("배너 1개 등록되었습니다.");
							location.href="/admin/banner";
						}
						,beforeSend : function(){
							$(".spinner").removeClass("displayLoding");
						},
						complete:function(){
							$(".spinner").addClass("displayLoding");	
						},error : function(){
							alert("등록 실패!");
							location.href="/admin/banner";
						}
					}) ;
					//$("#msform").submit();
				}
				
		
		});//save btn end
		        
});
    </script>

</body>

</html>