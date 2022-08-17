<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>          
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>에스에스플랜 | 공지사항</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/assets/img/favicon-32x32.png" rel="icon">
  <link href="/resources/assets/img/apple-icon-180x180.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/resources/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: iPortfolio - v3.7.0
  * Template URL: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

  <!-- ======= Header ======= -->
   <%@include file="./include/header.jsp" %>
   <!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>공지사항</h2>
          <ol>
            <li><a href="/">Home</a></li>
            <li><span class="fw-bold">Notice</span></li>
          </ol>
        </div>
        
        
        

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-12">
            <div class="portfolio-info">
              <h3>${noticevo.subject }</h3>
              <p>${noticevo.content }</p>
              <ul class="mt-5">
                <li><strong>date</strong>: ${noticevo.regdate }</li>
              </ul>
              
               
            </div>
           
          </div>

        </div>
        
        <div class="row text-center gy-4 mt-5">
	         <div class="col-lg-12">
	         	 <div class="btn-group" role="group" aria-label="Basic outlined example">
	         	 	<c:if test="${not empty isPrev}">
	    				<c:forEach items="${isPrev}" var="isPrev">
	    					<c:set var="regdate" value="${isPrev.regdate}"/>
			    			<c:set var="TextValue" value="${isPrev.subject}"/>
						  <a href="/noticeDetail?idx=${isPrev.idx}" class="btn btn-outline-secondary" role="group">이전<br> 
						  ${fn:substring(TextValue,0,20)}</a>
						  
					  </c:forEach>
					</c:if>
					<a href="/notice" class="btn btn-outline-secondary" role="group">목록</a>
					 <c:if test="${not empty isNext}">
	    				<c:forEach items="${isNext}" var="isNext">
	    					<c:set var="regdate" value="${isNext.regdate}"/>
			    			<c:set var="TextValue" value="${isNext.subject}"/>
						  <a href="/noticeDetail?idx=${isNext.idx}" class="btn btn-outline-secondary" role="group">다음<br> 
						  ${fn:substring(TextValue,0,20)}</a>
						  
					  </c:forEach>
					</c:if>
				</div>
	          </div>
        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
   <%@include file="./include/footer.jsp" %>
   <!-- End  Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/resources/assets/vendor/purecounter/purecounter.js"></script>
  <script src="/resources/assets/vendor/aos/aos.js"></script>
  <script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/resources/assets/vendor/typed.js/typed.min.js"></script>
  <script src="/resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="/resources/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/resources/assets/js/main.js"></script>

</body>

</html>