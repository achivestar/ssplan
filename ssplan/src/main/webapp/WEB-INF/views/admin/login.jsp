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

    <title>Login</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/admin/css/sb-admin-2.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>

<body class="">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5 ">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome!</h1>
                                    </div>
                                    <form class="user" action="/admin/loginPost" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Enter Id..."  name="uid">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Password" name="upw">
                                        </div>
      									<div class="form-group">
                                        <input class="btn-primary" type="submit" value="로그인" style="width:100%;border-radius:5px;padding:10px;border:1px solid #fff">
									    
									    </div>	
									    <div class="form-group">
									    	<a href="#none" data-bs-toggle="modal" data-bs-target="#exampleModal">비밀번호변경</a>
									    </div>
                                       
                                    </form>
                      
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
    
    
    
    <!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">비밀번호변경</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form id="form" method="post">
	        		<div class="mb-3">
					    <label for="exampleInputPassword1" class="form-label">현재 비밀번호 <span id="rupw" style="color:red;font-size:11px"></span></label>
					    <input type="password" class="form-control" id="upw" name="upw">
					</div>
					<div class="mb-3">
					    <label for="exampleInputPassword1" class="form-label">변경할 비밀번호 <span id="rcpw" style="color:red;font-size:11px"></span></label>
					    <input type="password" class="form-control" id="cpw" name="cpw">
					</div>
					<div class="mb-3">
					    <label for="exampleInputPassword1" class="form-label">변경할 비밀번호 재입력 <span id="rcpw2" style="color:red;font-size:11px"></span></label>
					    <input type="password" class="form-control" id="cpw2">
					</div>
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary" id="save">Save</button>
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
    $("#save").click(function(e){

    	if($("#upw").val()==""){
    		// alert("제목을 입력해 주세요.");
    		 $("#rupw").text("현재 비밀번호를 입력해 주세요.");
    		 $("#upw").focus();
    	     return false;
    	}else if($("#cpw").val()==""){
    	   	 $("#rcpw").text("변경할 비밀번호를 입력해 주세요.");
    		 $("#cpw").focus();
    	     return false;
    	}else if($("#cpw2").val()==""){
	   	   	 $("#rcpw2").text("변경할 비밀번호를 입력해 주세요.");
			 $("#cpw2").focus();
		     return false;
		}else if($("#cpw2").val()!=$("#cpw").val()){
	   	   	 $("#rcpw").text("변경할 비밀번호가 일치 하지 않습니다.")
	   	   	 $("#cpw").val("");
	   		 $("#cpw2").val("");
	   	   	 $("#cpw").focus();
		     return false;
		}else{
    		 var form = new FormData(document.getElementById('form'));
    			$.ajax({
    			    type: 'POST',
    				url: "/admin/changePw", 
    				data: form,
    				dataType: 'html',
    				processData: false, 
    				contentType: false, 		
    				enctype: 'multipart/form-data',
    				success: function(data){
    					//alert("공지글이 등록되었습니다.");
    					if(data=='success'){
    						alert('비밀번호가 변경 되었습니다.');
    						location.href="/admin";
    					}else if(data=='fail') {
    						alert('현재 비밀번호가 다릅니다. \n 관리자에게 문의하세요');
    						location.href-"/admin";
    					}
    					
    				}
    				,beforeSend : function(){
    					$(".spinner").removeClass("displayLoding");
    				},
    				complete:function(){
    					$(".spinner").addClass("displayLoding");	
    				},error : function(){
    					//alert("등록 실패!");
    					location.href="/admin";
    				}
    			}) ;
    			//$("#msform").submit();
    		}
    		

    	}) //save btn end
            
    </script>

</body>

</html>