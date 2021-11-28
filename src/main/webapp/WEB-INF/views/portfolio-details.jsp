<%@include file="dynamic/head.jspf"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

      <nav id="navbar" class="nav-menu navbar">
        <ul>
          <li><a href='<c:url value="index"/>' class="nav-link  active"><i class="bx bx-home"></i> <span>Home</span></a></li>
          <li><a href='<c:url value="about"/>' class="nav-link "><i class="bx bx-user"></i> <span>About</span></a></li>
          <li><a href='<c:url value="resume"/>' class="nav-link "><i class="bx bx-file-blank"></i> <span>Resume</span></a></li>
          <li><a href='<c:url value="portfolio"/>' class="nav-link "><i class="bx bx-book-content"></i> <span>Portfolio</span></a></li>
          <li><a href='<c:url value="contact"/>' class="nav-link "><i class="bx bx-envelope"></i> <span>Contact</span></a></li>
          <sec:authorize access="!isAuthenticated()">
            <li><a href='<c:url value="login"/>' class="nav-link "><i class="bx bx-log-in"></i> <span>Log In</span></a></li>
          </sec:authorize>
          <sec:authorize access="isAuthenticated()">
            <li><a href='<c:url value="/logout"/>' class="nav-link "><i class="bx bx-log-out"></i> <span>Log Out</span></a></li>
          </sec:authorize>
        </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Portfolio Details</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Portfolio Details</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper-container">
              <div class="swiper-wrapper align-items-center">

                <div class="swiper-slide">
                  <img src="resources/img/portfolio/portfolio-details-1.jpg" alt="">
                </div>

                <div class="swiper-slide">
                  <img src="resources/img/portfolio/portfolio-details-2.jpg" alt="">
                </div>

                <div class="swiper-slide">
                  <img src="resources/img/portfolio/portfolio-details-3.jpg" alt="">
                </div>

              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="portfolio-info">
              <h3>Project information</h3>
              <ul>
                <li><strong>Category</strong>: Web design</li>
                <li><strong>Client</strong>: ASU Company</li>
                <li><strong>Project date</strong>: 01 March, 2020</li>
                <li><strong>Project URL</strong>: <a href="#">www.example.com</a></li>
              </ul>
            </div>
            <div class="portfolio-description">
              <h2>This is an example of portfolio detail</h2>
              <p>
                Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

<%@include file="dynamic/footer.jspf"%>