<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>에스에스플랜 | 공지사항관리</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
    
    <link href="/resources/admin/summernote/summernote.min.css" rel="stylesheet">
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
						공지사항등록
						<p class="float-right"><a href="/admin">Home</a> / <a href="#none" style="font-weight:bold">Notice</a></p>
   					</div>
                	
                	<form id="form" method="post" enctype="multipart/form-data">
						<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						    <input type="button" class="btn btn-secondary mx-1" id="list" value="목록">
							<input type="button" class="btn btn-primary" id="save" value="저장">
						</div>	
						
						<div class="mb-3">
						  <label for="noticeSubject" class="form-label text-info fw-bold">제목</label>
						  <input type="text" class="form-control" id="noticeSubject" name="subject" placeholder="">
						</div>
						<div class="mb-3">
						  <label for="summernote" class="form-label text-info fw-bold">내용</label>
						  <textarea id="summernote" class="form-control" name="content"></textarea>
						</div>
						<input type="hidden" name="thumburl" id="thumburl" />
						
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


      <script src="/resources/admin/summernote/summernote.min.js"></script>
  <script>
$(document).ready(function() {
	// 툴바생략

	var setting = {
            height : 400,
            minHeight : null,
            maxHeight : null,
            focus : true,
            lang : 'ko-KR',
            //콜백 함수
            callbacks : { 
            	onImageUpload : function(files, editor, welEditable) {
            // 파일 업로드(다중업로드를 위해 반복문 사용)
            for (var i = files.length - 1; i >= 0; i--) {
           		 uploadImageFile(files[i],
            this);
            		}
            	}
            }
     };
	
	
     $('#summernote').summernote(setting);
});
        
$("#list").click(function(){
	location.href="/admin/notice";	
});

$("#save").click(function(e){

	if($("#noticeSubject").val()==""){
		 alert("제목을 입력해 주세요.");
		 $("#noticeSubject").focus();
	     return false;
	}else if($("#summernote").val()==""){
		 alert("내용을 입력해 주세요.");
		 $("#summernote").focus();
	     return false;
	}else{
		 var form = new FormData(document.getElementById('form'));
			$.ajax({
			    type: 'POST',
				url: "/admin/noticeRegist", 
				data: form,
				dataType: 'html',
				processData: false, 
				contentType: false, 		
				enctype: 'multipart/form-data',
				success: function(data){
					alert("공지글이 등록되었습니다.");
					location.href="/admin/notice";
				}
				,beforeSend : function(){
					$(".spinner").removeClass("displayLoding");
				},
				complete:function(){
					$(".spinner").addClass("displayLoding");	
				},error : function(){
					alert("등록 실패!");
					location.href="/admin/noticeRegist";
				}
			}) ;
			//$("#msform").submit();
		}
		

	}) //save btn end
        
      function uploadImageFile(file, el) {
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url : "/admin/uploadNoticeImageFile",
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function(data) {
			$(el).summernote('editor.insertImage', data.url);
			$("#thumburl").val(data.url);
		}
	});
	
}
    </script>

</body>

</html>