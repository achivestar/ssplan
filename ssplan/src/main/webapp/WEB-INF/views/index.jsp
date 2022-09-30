<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>         
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>         
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>에스에스플랜</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="/resources/assets/img/favicon-32x32.png" rel="icon">
    <link href="/resources/assets/img/apple-icon-180x180.png" rel="apple-touch-icon">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />

    <!-- Flaticon Font -->
    <link href="/resources/lib/flaticon/font/flaticon.css" rel="stylesheet" />
    <link rel="stylesheet" href="/resources/assets/owlcarousel/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="/resources/assets/owlcarousel/assets/owl.theme.default.min.css" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="/resources/assets/vendor/aos/aos.css" rel="stylesheet" />
    <link href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"  rel="stylesheet" />
    <link href="/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="/resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"/>
    <link href="/resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="/resources/assets/css/style.css" rel="stylesheet" />

    <style>
      .team-carousel .owl-nav,
      .service-carousel .owl-nav {
        position: absolute;
        width: 100%;
        height: 40px;
        top: 50%;
        left: 0;
        margin-top: -20px;
        padding: 0 45px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        z-index: 1;
      }

      .team-carousel .owl-nav .owl-prev,
      .team-carousel .owl-nav .owl-next,
      .service-carousel .owl-nav .owl-prev,
      .service-carousel .owl-nav .owl-next {
        width: 40px;
        height: 40px;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #fff;
        background: rgb(20 157 221);
        font-size: 22px;
        opacity: 1;
        transition: 0.3s;
      }

      .team-carousel:hover .owl-nav .owl-prev,
      .team-carousel:hover .owl-nav .owl-next,
      .service-carousel:hover .owl-nav .owl-prev,
      .service-carousel:hover .owl-nav .owl-next {
        opacity: 1;
      }
      
      table td.vt {
    		vertical-align:middle
       }
    </style>
  </head>

  <body>
    <!-- ======= Mobile nav toggle button ======= -->
    <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

    <!-- ======= Header ======= -->
     <%@include file="./include/header.jsp" %>
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section
      id="hero"
      class="d-flex flex-column justify-content-center align-items-center"
    >
      <div class="hero-container" data-aos="fade-in">
        <!-- <h1>SSPLAN</h1> -->
        <p style="color:rgb(20 157 221)">
           We're
          <span
            class="typed"
            data-typed-items="Designer, Developer"
          ></span>
        </p>
      </div>
    </section>
    <!-- End Hero -->

    <main id="main">
      <!-- ======= About Section ======= -->
      <section id="about" class="about">
        <div class="container">
          <div class="section-title">
            <h2>About</h2>
      
              <div class="alert alert-white" role="alert">
				  <h4 class="alert-heading"><span style="color:#149ddd">SSPLAN</span></h4>
				  <p style="line-height:2.5"><span style="font-size:20px">설</span>립 이래 개인 제작물 및 제주도의 다양한<br>
				  행사 및 축제는 물론 국내 대기업의 각종 행사에<br>
				  참여 하여 <span style="text-decoration:underline">전시기획 및 디자인 / 제작 설치하는<br>
				  종합광고 대행사 입니다.</span> <br>
				  제주도 내 이 분야 대표가 되기 위하여 항상<br>
	              노력하고 최선을 다하고 있습니다.</p>
				  <hr>
				  <p class="mb-0"  style="line-height:2.5"> 
				  <h4><span style="color:#149ddd">VALUE</span></h4>
				  <ul style="line-height:2.5">
				  	<li>고객의 만족</li>
				  	<li>우수한 품질</li>
				  	<li>최고의 노하우</li>
				  </ul></p>
				</div>
          </div>
        </div>
      </section>

      <!-- ======= Services Section ======= -->
      <section id="services" class="services">
        <div class="container">
          <div class="section-title">
            <h2>Business Area</h2>

          </div>

          <div class="row">
            <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up">
              <div class="icon"><i class="bi bi-briefcase"></i></div>
              <h4 class="title">DESIGN</h4>
              <p class="description">패키지디자인 기획 및 디자인 / 인쇄 제작</p>
            </div>
            <div
              class="col-lg-4 col-md-6 icon-box"
              data-aos="fade-up"
              data-aos-delay="100"
            >
              <div class="icon"><i class="bi bi-card-checklist"></i></div>
              <h4 class="title">EXHIBITION DESIGN</h4>
              <p class="description">MICE,국제회의,포럼,박람회,기업행사,전시기획 및 디자인 / 제작</p>
            </div>
            <div
              class="col-lg-4 col-md-6 icon-box"
              data-aos="fade-up"
              data-aos-delay="200"
            >
              <div class="icon"><i class="bi bi-bar-chart"></i></div>
              <h4 class="title">LEAFLET/BROCHURE DESIGN</h4>
              <p class="description">리플렛, 브로셔, 명함,  디자인 기획 / 인쇄</p>
            </div>
            <div
              class="col-lg-4 col-md-6 icon-box"
              data-aos="fade-up"
              data-aos-delay="300"
            >
              <div class="icon"><i class="bi bi-binoculars"></i></div>
              <h4 class="title">PRODUCE(제작물)</h4>
              <p class="description">행사,개인 현수막/베너/게시대
</p>
            </div>
            <div
              class="col-lg-4 col-md-6 icon-box"
              data-aos="fade-up"
              data-aos-delay="400"
            >
              <div class="icon"><i class="bi bi-brightness-high"></i></div>
              <h4 class="title">랩핑</h4>
              <p class="description">선거차량제작, 차량랩핑</p>
            </div>
            <div
              class="col-lg-4 col-md-6 icon-box"
              data-aos="fade-up"
              data-aos-delay="500"
            >
              <div class="icon"><i class="bi bi-calendar4-week"></i></div>
              <h4 class="title"><a href="">광고물(간판)
</a></h4>
              <p class="description">채널, 부식, 내부사인, 외부사인
</p>
            </div>
          </div>
        </div>
      </section>
      <!-- End Services Section -->

      <!-- ======= Portfolio Section ======= -->
      <section id="portfolio" class="portfolio section-bg">
        <div class="container">
          <div class="section-title">
            <h2>Portfolio</h2>
<!--             <p>
              SS
            </p> -->
          </div>

          <div class="row" data-aos="fade-up">
           <%--  <div class="col-lg-12 p-0 pt-5 mb-5 pt-lg-0">
              <div class="owl-carousel service-carousel position-relative">
              
              	<c:if test="${empty bannerList}">
				 <p class="text-center vt">등록된 배너정보가 없습니다.</p>
				</c:if>
					<c:forEach items="${bannerList}" var="bannerList" varStatus="status">	
		       <c:set var="regdate" value="${bannerList.regdate}"/>
		       <c:set var="subject" value="${bannerList.subject}"/>
              
              
                <div class="d-flex flex-column text-center bg mx-1">
                  <h3
                    class="display-3 font-weight-normal text-primary mb-3"
                  >
                    <a href="/bannerDetail?idx=${bannerList.idx}"><img src="${bannerList.thumburl1 }" /></a>
                  </h3>
                  <h5 class="mb-3"><a href="/bannerDetail?idx=${bannerList.idx}">${bannerList.subject }</a></h5>
                  <p class="m-0"><a href="/bannerDetail?idx=${bannerList.idx}">현수막류 설명문</a></p>
                </div>
                
                </c:forEach>
 
              
              </div>
            </div> --%>

            <div class="col-lg-12 d-flex justify-content-center mt-5">
              <ul id="portfolio-flters">
                <li data-filter="*" class="filter-active">All</li>
                <li data-filter=".filter-1">현수막</li>
                <li data-filter=".filter-2">간판</li>
                <li data-filter=".filter-3">조형물</li>
                <li data-filter=".filter-4">행사.전시</li>
                <li data-filter=".filter-5">ETC</li>
              </ul>
            </div>
          </div>

          <div
            class="row portfolio-container"
            data-aos="fade-up"
            data-aos-delay="100"
          >
          
          	<c:if test="${empty galleryList}">
				 <p class="text-center vt">등록된 포트폴리오가 없습니다.</p>
			</c:if>
			<c:forEach items="${galleryList}" var="galleryList" varStatus="status">	
		       <c:set var="regdate" value="${galleryList.regdate}"/>
		       <c:set var="subject" value="${galleryList.subject}"/>
				<div class="col-md-3 col-sm-6 col-xs-6 col-6 portfolio-item filter-${galleryList.category }">
	              <div class="portfolio-wrap">
	                <img
	                  src="${galleryList.thumburl }"
	                  class="img-fluid"
	                  alt=""
	                />
	                <div class="portfolio-links">
	                  <a
	                    href="${galleryList.savedFileName }"
	                    data-gallery="portfolioGallery"
	                    class="portfolio-lightbox"
	                    title="${galleryList.contents }"
	                    ><i class="bx bx-plus"></i
	                  ></a>
	                  <a href="${galleryList.url }"  target="_blank" title="More Details"
	                    ><i class="bx bxl-instagram"></i
	                  ></a>
	                </div>
	              </div>
	            </div>
			</c:forEach>	   
      
      
          </div>
        </div>
      </section>
      <!-- End Portfolio Section -->

      <!-- ======= Contact Section ======= -->
      <section id="contact" class="contact">
        <div class="container">
          <div class="section-title">
            <h2>Notice</h2>
            <p>
            
            </p>
          </div>

          <div class="row" data-aos="fade-in">
            <div class="col-lg-12 mt-5 mb-5 mt-lg-0 d-flex align-items-stretch">
              <table class="table" >
                <thead>
                  <tr class="text-dark text-center">
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                  </tr>
                </thead>
                <tbody class="text-dark text-center">
                 <c:if test="${empty noticeList}">
						        <tr><td colspan="3" class="text-center vt">등록된 공지글이 없습니다.</td></tr>
							</c:if>
						    <c:forEach items="${noticeList}" var="noticeList" varStatus="status">	
						       <c:set var="regdate" value="${noticeList.regdate}"/>
						       <c:set var="subject" value="${noticeList.subject}"/>
							    <tr>
							      <td class="vt"><a href="/noticeDetail?idx=${noticeList.idx}">${fn:substring(subject,0,30)}...</a></td>
							      <td class="vt">
								     관리자
							      </td>
							      <td class="vt">${fn:substring(regdate,0,20) }</td>
							    </tr>
				</c:forEach>	   
                </tbody>
              </table>
            </div>
          </div>

          <div class="row" data-aos="fade-in">
            <div class="col-lg-5 d-flex align-items-stretch">
              <div class="info">
                <div class="address">
                  <i class="bi bi-geo-alt"></i>
                  <h4>Location:</h4>
                  <p>제주시 우령안1길 12</p>
                </div>

                <div class="email">
                  <i class="bi bi-envelope"></i>
                  <h4>Email:</h4>
                  <p>info@example.com</p>
                </div>

                <div class="phone">
                  <i class="bi bi-phone"></i>
                  <h4>Call:</h4>
                  <p>+88 064)xxx-xxxx</p>
                </div>

                <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe> -->
                <div
                  id="daumRoughmapContainer1657782795905"
                  class="root_daum_roughmap root_daum_roughmap_landing"
                  style="width: 100%"
                ></div>
              </div>
            </div>

            <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
              <form id="form" class="php-email-form">
                <div class="row">
                  <div class="form-group col-md-6">
                    <label for="name">이름</label>
                    <input
                      type="text"
                      name="name"
                      class="form-control"
                      id="name"
                      required
                    />
                  </div>
                  <div class="form-group col-md-6">
                    <label for="name">Email</label>
                    <input
                      type="email"
                      class="form-control"
                      name="email"
                      id="email"
                      required
                    />
                  </div>
                </div>
                <div class="form-group">
                  <label for="name">제목</label>
                  <input
                    type="text"
                    class="form-control"
                    name="subject"
                    id="subject"
                    required
                  />
                </div>
                <div class="form-group">
                  <label for="name">Message</label>
                  <textarea
                    class="form-control"
                    name="message"
                    id="message"
                    rows="10"
                    required
                  ></textarea>
                </div>
                <div class="my-3">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">
                    Your message has been sent. Thank you!
                  </div>
                </div>
                <div class="text-center">
                  <input type="submit" id="save" value="Send Message" class="btn btn-primary">
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>
      <!-- End Contact Section -->
    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
     <%@include file="./include/footer.jsp" %>
    <!-- End  Footer -->

    <a
      href="#"
      class="back-to-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>

    <!-- Vendor JS Files -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="/resources/assets/vendor/purecounter/purecounter.js"></script>
    <script src="/resources/assets/vendor/aos/aos.js"></script>
    <script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="/resources/assets/vendor/typed.js/typed.min.js"></script>
    <script src="/resources/assets/vendor/waypoints/noframework.waypoints.js"></script>

    <!-- Template Main JS File -->
    <script src="/resources/assets/js/main.js"></script>

    <script
      charset="UTF-8"
      class="daum_roughmap_loader_script"
      src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"
    ></script>
    <script src="/resources/assets/owlcarousel/owl.carousel.min.js"></script>

    <!-- 3. 실행 스크립트 -->
    <script charset="UTF-8">
      new daum.roughmap.Lander({
        timestamp: "1657782795905",
        key: "2ayo4",
        mapWidth: "",
        mapHeight: "360",
      }).render();

      $(document).ready(function () {
    	  
        $(".owl-carousel").owlCarousel();
        

		 var regExp = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{2,4}$/;
		  // 검증에 사용할 정규식 변수 regExp에 저장
 
		$("#save").click(function(e){

				if($("#name").val()==""){
					alert("이름을 입력해 주세요");
					$("#name").focus();
					 return false;
				}else if($("#email").val()==""){
					alert("이메일을 입력해 주세요");
					$("#email").focus();
					 return false;
				}else if($("#email").val().match(regExp) == null){
					alert("이메일 양식을 지켜 주세요");
					$("#email").focus();
					 return false;
				}else if($("#subject").val()==""){
					 alert("제목을 입력해 주세요.");
					 $("#subject").focus();
				     return false;
				}else if($("#name").val()==""){
					alert("이름을 입력해 주세요");
					$("#name").focus();
					 return false;
				}else if($("#message").val()==""){
					alert("내용을 입력해 주세요");
					$("#message").focus();
					 return false;
				}else{
					 var form = new FormData(document.getElementById('form'));
						$.ajax({
						    type: 'POST',
							url: "/contactRegist", 
							data: form,
							dataType: 'html',
							processData: false, 
							contentType: false, 		
							enctype: 'multipart/form-data',
							success: function(data){
								if(data == 'success') {
									alert("문의가 등록되었습니다. \n 빠른 시일내에 이메일로 답변을 드리겠습니다.");
									location.href="/";
								}
								
							}
							,beforeSend : function(){
								$(".spinner").removeClass("displayLoding");
							},
							complete:function(){
								$(".spinner").addClass("displayLoding");	
							},error : function(data){
								if(data == 'error') {
									alert("문의 등록에 실패 했습니다. 다시 시도해 보세요.");
									location.href="/";
								}
								
							}
						}) ;
						//$("#msform").submit();
					}
						
				
				});//save btn end
		        
        
      });

      // Service carousel
      $(".service-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1500,
        dots: false,
        loop: true,
        nav: true,
        navText: [
          '<i class="fa fa-angle-left" aria-hidden="true"></i>',
          '<i class="fa fa-angle-right" aria-hidden="true"></i>',
        ],
        responsive: {
          0: {
            items: 2,
          },
          576: {
            items: 3,
          },
          768: {
            items: 3,
          },
          992: {
            items: 3,
          },
        },
      });
    </script>
  </body>
</html>
