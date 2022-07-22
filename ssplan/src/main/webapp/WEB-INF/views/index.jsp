<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    </style>
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
            <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
            <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
            <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
            <!-- <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
          <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a> -->
          </div>
        </div>

        <nav id="navbar" class="nav-menu navbar">
          <ul>
            <li>
              <a href="#hero" class="nav-link scrollto active"
                ><i class="bx bx-home"></i> <span>Home</span></a
              >
            </li>
            <li>
              <a href="#about" class="nav-link scrollto"
                ><i class="bx bx-user"></i> <span>About</span></a
              >
            </li>
            <!-- <li><a href="#resume" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>Resume</span></a></li> -->
            <li>
              <a href="#services" class="nav-link scrollto"
                ><i class="bx bx-server"></i> <span>Business Area</span></a
              >
            </li>
            <li>
              <a href="#portfolio" class="nav-link scrollto"
                ><i class="bx bx-book-content"></i> <span>Portfolio</span></a
              >
            </li>
            <li>
              <a href="#contact" class="nav-link scrollto"
                ><i class="bx bx-envelope"></i> <span>Contact</span></a
              >
            </li>
          </ul>
        </nav>
        <!-- .nav-menu -->
      </div>
    </header>
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
            data-typed-items="Designer, Developer, Photographer"
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
            <p>회사 소개 문구 넣을 것.</p>
            <p>
              ex) 엠에스에드는 설립이래 개인 제작물 및 제주도 다양한 행사.축제
              그리고 국내 대기업의 각종 행사에.. 그리고…….. 제작 설치하는
              종합광고 대행사 입니다. 제주도 내 이 분야 대표가 되기 위하여 항상
              노력하고 최선을 다하고 있습니다. VALUE : 고객의 만족. 우수한 품질.
              최고의 노하우
            </p>
          </div>
        </div>
      </section>

      <!-- ======= Services Section ======= -->
      <section id="services" class="services">
        <div class="container">
          <div class="section-title">
            <h2>Business Area</h2>
            <p>
              사업 영역을 넣을 것. 표를 작성하든 이미지를 넣든 텍스트를 넣든
              자유롭게
            </p>
          </div>

          <div class="row">
            <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up">
              <div class="icon"><i class="bi bi-briefcase"></i></div>
              <h4 class="title"><a href="">사업영역1</a></h4>
              <p class="description">사업영역1 소개</p>
            </div>
            <div
              class="col-lg-4 col-md-6 icon-box"
              data-aos="fade-up"
              data-aos-delay="100"
            >
              <div class="icon"><i class="bi bi-card-checklist"></i></div>
              <h4 class="title"><a href="">사업영역2</a></h4>
              <p class="description">사업영역2 소개</p>
            </div>
            <div
              class="col-lg-4 col-md-6 icon-box"
              data-aos="fade-up"
              data-aos-delay="200"
            >
              <div class="icon"><i class="bi bi-bar-chart"></i></div>
              <h4 class="title"><a href="">사업영역3</a></h4>
              <p class="description">사업영역3 소개</p>
            </div>
            <div
              class="col-lg-4 col-md-6 icon-box"
              data-aos="fade-up"
              data-aos-delay="300"
            >
              <div class="icon"><i class="bi bi-binoculars"></i></div>
              <h4 class="title"><a href="">사업영역4</a></h4>
              <p class="description">사업영역4 소개</p>
            </div>
            <div
              class="col-lg-4 col-md-6 icon-box"
              data-aos="fade-up"
              data-aos-delay="400"
            >
              <div class="icon"><i class="bi bi-brightness-high"></i></div>
              <h4 class="title"><a href="">사업영역5</a></h4>
              <p class="description">사업영역5 소개</p>
            </div>
            <div
              class="col-lg-4 col-md-6 icon-box"
              data-aos="fade-up"
              data-aos-delay="500"
            >
              <div class="icon"><i class="bi bi-calendar4-week"></i></div>
              <h4 class="title"><a href="">사업영역6</a></h4>
              <p class="description">사업영역6 소개</p>
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
            <p>
              포트폴리오 대한 소개글 넣을 것 / 아니면 삭제해버려도 됨 / 밑에
              이미지들은 임의임
            </p>
          </div>

          <div class="row" data-aos="fade-up">
            <div class="col-lg-12 p-0 pt-5 mb-5 pt-lg-0">
              <div class="owl-carousel service-carousel position-relative">
                <div class="d-flex flex-column text-center bg mx-1">
                  <h3
                    class="display-3 font-weight-normal text-primary mb-3"
                  >
                    <a href="/portfolioDetail"><img src="/resources/assets/img/portfolio/portfolio-1.jpg" /></a>
                  </h3>
                  <h5 class="mb-3"><a href="/portfolioDetail">현수막류</a></h5>
                  <p class="m-0"><a href="/portfolioDetail">현수막류 설명문</a></p>
                </div>
                <div class="d-flex flex-column text-center bg mx-1">
                  <h3
                    class="display-3 font-weight-normal text-primary mb-3"
                  >
                  <a href="/portfolioDetail"><img src="/resources/assets/img/portfolio/portfolio-2.jpg" /></a>
                  </h3>
                  <h5 class="mb-3"><a href="/portfolioDetail">간판류</a></h5>
                  <p class="m-0"><a href="/portfolioDetail">간판류 설명문</a></p>
                </div>
                <div class="d-flex flex-column text-center bg mx-1">
                  <h3
                    class="display-3 font-weight-normal text-primary mb-3"
                  >
                  <a href="/portfolioDetail"><img src="/resources/assets/img/portfolio/portfolio-3.jpg" /></a>
                  </h3>
                  <h5 class="mb-3"><a href="/portfolioDetail">전시행사품</a></h5>
                  <p class="m-0"><a href="/portfolioDetail">전시행사품 설명문</a></p>
                </div>
                <div class="d-flex flex-column text-center bg mx-1">
                  <h3
                    class="display-3 font-weight-normal text-primary mb-3">
                  <a href="/portfolioDetail"><img src="/resources/assets/img/portfolio/portfolio-4.jpg" /></a>
                  </h3>
                  <h5 class="mb-3"><a href="/portfolioDetail">랩핑</a></h5>
                  <p class="m-0"><a href="/portfolioDetail">랩핑 설명문</a></p>
                </div>

              
              </div>
            </div>

            <div class="col-lg-12 d-flex justify-content-center mt-5">
              <ul id="portfolio-flters">
                <li data-filter="*" class="filter-active">All</li>
                <li data-filter=".filter-app">현수막</li>
                <li data-filter=".filter-card">간판</li>
                <li data-filter=".filter-web">조형물</li>
                <li data-filter=".filter-web2">행사.전시</li>
                <li data-filter=".filter-web3">ETC</li>
              </ul>
            </div>
          </div>

          <div
            class="row portfolio-container"
            data-aos="fade-up"
            data-aos-delay="100"
          >
            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
              <div class="portfolio-wrap">
                <img
                  src="/resources/assets/img/portfolio/portfolio-1.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-links">
                  <a
                    href="/resources/assets/img/portfolio/portfolio-1.jpg"
                    data-gallery="portfolioGallery"
                    class="portfolio-lightbox"
                    title="App 1"
                    ><i class="bx bx-plus"></i
                  ></a>
                  <a href="#none" title="More Details"
                    ><i class="bx bxl-instagram"></i
                  ></a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
              <div class="portfolio-wrap">
                <img
                  src="/resources/assets/img/portfolio/portfolio-2.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-links">
                  <a
                    href="/resources/assets/img/portfolio/portfolio-2.jpg"
                    data-gallery="portfolioGallery"
                    class="portfolio-lightbox"
                    title="Web 3"
                    ><i class="bx bx-plus"></i
                  ></a>
                  <a href="#none" title="More Details"
                    ><i class="bx bxl-instagram"></i
                  ></a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
              <div class="portfolio-wrap">
                <img
                  src="/resources/assets/img/portfolio/portfolio-3.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-links">
                  <a
                    href="/resources/assets/img/portfolio/portfolio-3.jpg"
                    data-gallery="portfolioGallery"
                    class="portfolio-lightbox"
                    title="App 2"
                    ><i class="bx bx-plus"></i
                  ></a>
                  <a href="#none" title="More Details"
                    ><i class="bx bxl-instagram"></i
                  ></a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-card">
              <div class="portfolio-wrap">
                <img
                  src="/resources/assets/img/portfolio/portfolio-4.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-links">
                  <a
                    href="/resources/assets/img/portfolio/portfolio-4.jpg"
                    data-gallery="portfolioGallery"
                    class="portfolio-lightbox"
                    title="Card 2"
                    ><i class="bx bx-plus"></i
                  ></a>
                  <a href="#none" title="More Details"
                    ><i class="bx bxl-instagram"></i
                  ></a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
              <div class="portfolio-wrap">
                <img
                  src="/resources/assets/img/portfolio/portfolio-5.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-links">
                  <a
                    href="/resources/assets/img/portfolio/portfolio-5.jpg"
                    data-gallery="portfolioGallery"
                    class="portfolio-lightbox"
                    title="Web 2"
                    ><i class="bx bx-plus"></i
                  ></a>
                  <a href="#none" title="More Details"
                    ><i class="bx bxl-instagram"></i
                  ></a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
              <div class="portfolio-wrap">
                <img
                  src="/resources/assets/img/portfolio/portfolio-6.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-links">
                  <a
                    href="/resources/assets/img/portfolio/portfolio-6.jpg"
                    data-gallery="portfolioGallery"
                    class="portfolio-lightbox"
                    title="App 3"
                    ><i class="bx bx-plus"></i
                  ></a>
                  <a href="#none" title="More Details"
                    ><i class="bx bxl-instagram"></i
                  ></a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-card">
              <div class="portfolio-wrap">
                <img
                  src="/resources/assets/img/portfolio/portfolio-7.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-links">
                  <a
                    href="/resources/assets/img/portfolio/portfolio-7.jpg"
                    data-gallery="portfolioGallery"
                    class="portfolio-lightbox"
                    title="Card 1"
                    ><i class="bx bx-plus"></i
                  ></a>
                  <a href="#none" title="More Details"
                    ><i class="bx bxl-instagram"></i
                  ></a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-card">
              <div class="portfolio-wrap">
                <img
                  src="/resources/assets/img/portfolio/portfolio-8.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-links">
                  <a
                    href="/resources/assets/img/portfolio/portfolio-8.jpg"
                    data-gallery="portfolioGallery"
                    class="portfolio-lightbox"
                    title="Card 3"
                    ><i class="bx bx-plus"></i
                  ></a>
                  <a href="#none" title="More Details"
                    ><i class="bx bxl-instagram"></i
                  ></a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
              <div class="portfolio-wrap">
                <img
                  src="/resources/assets/img/portfolio/portfolio-9.jpg"
                  class="img-fluid"
                  alt=""
                />
                <div class="portfolio-links">
                  <a
                    href="/resources/assets/img/portfolio/portfolio-9.jpg"
                    data-gallery="portfolioGallery"
                    class="portfolio-lightbox"
                    title="Web 3"
                    ><i class="bx bx-plus"></i
                  ></a>
                  <a href="#none" title="More Details"
                    ><i class="bx bxl-instagram"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- End Portfolio Section -->

      <!-- ======= Contact Section ======= -->
      <section id="contact" class="contact">
        <div class="container">
          <div class="section-title">
            <h2>Contact</h2>
            <p>
            
            </p>
          </div>

          <div class="row" data-aos="fade-in">
            <div class="col-lg-12 mt-5 mb-5 mt-lg-0 d-flex align-items-stretch">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td><a href="/noticeDetail">Test1</a></td>
                    <td>관리자</td>
                    <td>2022.07.19</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td><a href="/noticeDetail">Test2</a></td>
                    <td>관리자</td>
                    <td>2022.07.19</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td><a href="/noticeDetail">Test3</a></td>
                    <td>관리자</td>
                    <td>2022.07.17</td>
                  </tr>
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
              <form
                action="forms/contact.php"
                method="post"
                role="form"
                class="php-email-form"
              >
                <div class="row">
                  <div class="form-group col-md-6">
                    <label for="name">Your Name</label>
                    <input
                      type="text"
                      name="name"
                      class="form-control"
                      id="name"
                      required
                    />
                  </div>
                  <div class="form-group col-md-6">
                    <label for="name">Your Email</label>
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
                  <label for="name">Subject</label>
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
                  <button type="submit">Send Message</button>
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
    <footer id="footer">
      <div class="container">
        <div class="copyright">
          &copy; Copyright <strong><span>ssplan</span></strong>
        </div>
        <div class="credits">Designed by <a href="#none">ssplan</a></div>
      </div>
    </footer>
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
