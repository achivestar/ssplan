<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<%
	pageContext.setAttribute("crcn", "\r\n");
	pageContext.setAttribute("br","<br>");
%>          
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>에스에스플랜 | 포트폴리오</title>
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
  <header id="header">
    <div class="d-flex flex-column">
      <div class="profile">
        <img
          src="/resources/assets/img/logo.jpg"
          alt=""
          class="img-fluid rounded-circle"
        />
        <h1 class="text-light"><a href="/">SSPLAN</a></h1>
        <div class="social-links mt-3 text-center">
          <!-- <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
          <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a> -->
          <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
          <!-- <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a> -->
        </div>
      </div>

      <nav id="navbar" class="nav-menu navbar">
        <ul>
          <li>
            <a href="/#hero" class="nav-link scrollto "
              ><i class="bx bx-home"></i> <span>Home</span></a
            >
          </li>
          <li>
            <a href="/#about" class="nav-link scrollto"
              ><i class="bx bx-user"></i> <span>About</span></a
            >
          </li>
          <!-- <li><a href="#resume" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>Resume</span></a></li> -->
          <li>
            <a href="/#services" class="nav-link scrollto"
              ><i class="bx bx-server"></i> <span>Business Area</span></a
            >
          </li>
          <li>
            <a href="/#portfolio" class="nav-link scrollto active"
              ><i class="bx bx-book-content"></i> <span>Portfolio</span></a
            >
          </li>
          <li>
            <a href="/#contact" class="nav-link scrollto"
              ><i class="bx bx-envelope"></i> <span>Contact</span></a
            >
          </li>
        </ul>
      </nav>
      <!-- .nav-menu -->
    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Portfolio</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Portfolio</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center">
				
				<c:if test="${not empty bannervo.savedFileName1}">
	                <div class="swiper-slide">
	                  <img src="${bannervo.savedFileName1}" alt="">
	                </div>
				</c:if>
				
				<c:if test="${not empty bannervo.savedFileName2}">
	                <div class="swiper-slide">
	                  <img src="${bannervo.savedFileName2}" alt="">
	                </div>
				</c:if>
				
				<c:if test="${not empty bannervo.savedFileName3}">
	                <div class="swiper-slide">
	                  <img src="${bannervo.savedFileName3}" alt="">
	                </div>
				</c:if>
      

              </div>
              <div class="swiper-pagination"></div>
              <div>
                 <textarea id="contents" class="form-control" name="contents" rows="10" style="background-color:#fff;border:none;resize:none" readonly>${bannervo.contents}</textarea>
              </div>
            </div>
          </div>
		<c:set var="category" value="${bannervo.category}"/>
		 <c:set var="regdate" value="${bannervo.regdate}"/>
          <div class="col-lg-4">
            <div class="portfolio-info">
              <h3>Project information</h3>
              <ul>
                <li><strong>Category</strong>: 
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
                
                </li>
                <li><strong>Client</strong>: ${bannervo.client }</li>
                <li><strong>Project date</strong>: ${fn:substring(regdate,0,10) }</li>
                <!-- <li><strong>Project URL</strong>: <a href="#">www.example.com</a></li> -->
              </ul>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>ssplan</span></strong>
      </div>
      <div class="credits">Designed by <a href="#none">ssplan</a></div>
    </div>
  </footer><!-- End  Footer -->

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