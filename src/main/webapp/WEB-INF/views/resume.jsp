<%@include file="dynamic/head.jspf"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav id="navbar" class="nav-menu navbar">
  <ul>
    <li><a href='<c:url value="index"/>' class="nav-link"><i class="bx bx-home"></i> <span>Home</span></a></li>
    <li><a href='<c:url value="about"/>' class="nav-link "><i class="bx bx-user"></i> <span>About</span></a></li>
    <li><a href='<c:url value="resume"/>' class="nav-link active"><i class="bx bx-file-blank"></i> <span>Resume</span></a></li>
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
   <!-- ======= Resume Section ======= -->
    <section id="resume" class="resume">
      <div class="container">

        <div class="section-title">
          <h2>Resume</h2>
        </div>

        <div class="row">
          <div class="col-lg-6" data-aos="fade-up">
            <h3 class="resume-title">Sumary</h3>

            <h3 class="resume-title">Education</h3>
            <div class="resume-item">
              <h4>Java Developer | "Java from the basics"</h4>
              <h5>322 hours | 11.2020 - 08.2021</h5>
              <p><em>Software Development Academy </em></p>
              <p># Java basics # Java Advanced</p>
              <p># Software testing</p>
              <p># Design patterns and good practices</p>
              <p># Databases - SQL # JDBC, Hibernate</p>
              <p># HTML, CSS and JavaScript</p>
              <p># Front-end technologies</p>
              <p># Framework Spring</p>
            </div>
            <div class="resume-item">
              <h4>Informatics</h4>
              <h5>2014 - 2020</h5>
              <p><em>Rzeszow University of Technology</em></p>
              <p>Information systems engineering</p>
            </div>
          </div>
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
            <h3 class="resume-title">Experience</h3>
            <div class="resume-item">
              <h4>Office worker</h4>
              <h5>October 2017 - now</h5>
              <p><em>DRAFT</em></p>
              <ul>
                <li>Customer service</li>
                <li>Operation and servicing of plotters and printers</li>
                <li>Training of staff and users on various computer programs</li>
                <li>Handling official matters in the field of construction</li>
              </ul>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Resume Section -->
</main>

