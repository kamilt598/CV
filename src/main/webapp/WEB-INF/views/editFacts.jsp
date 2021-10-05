<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="dynamic/head2.jspf"%>

<nav id="navbar" class="nav-menu navbar">
  <ul>
    <li><a href='<c:url value="../index"/>' class="nav-link"><i class="bx bx-home"></i> <span>Home</span></a></li>
    <li><a href='<c:url value="../about"/>' class="nav-link"><i class="bx bx-user"></i> <span>About</span></a></li>
    <li><a href='<c:url value="../resume"/>' class="nav-link "><i class="bx bx-file-blank"></i> <span>Resume</span></a></li>
    <li><a href='<c:url value="../portfolio"/>' class="nav-link "><i class="bx bx-book-content"></i> <span>Portfolio</span></a></li>
    <li><a href='<c:url value="../services"/>' class="nav-link "><i class="bx bx-server"></i> <span>Services</span></a></li>
    <li><a href='<c:url value="../contact"/>' class="nav-link "><i class="bx bx-envelope"></i> <span>Contact</span></a></li>
    <sec:authorize access="!isAuthenticated()">
      <li><a href='<c:url value="../login"/>' class="nav-link "><i class="bx bx-log-in"></i> <span>Log In</span></a></li>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
      <li><a href='<c:url value="/logout"/>' class="nav-link "><i class="bx bx-log-out"></i> <span>Log Out</span></a></li>
    </sec:authorize>
  </ul>
</nav><!-- .nav-menu -->
</div>
</header><!-- End Header -->

<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs">
  <div class="container">

    <div class="d-flex justify-content-between align-items-center">
      <ol>
        <li><a href="/index">Home</a></li>
        <li><a href="/about">About</a></li>
        <li>Editing facts</li>
      </ol>
    </div>

  </div>
</section><!-- End Breadcrumbs -->

<!-- ======= Facts Section ======= -->
<section id="facts" class="facts">
  <form method="post" action='<c:url value="/editFacts/${facts.id}"/>'>
  <div class="container">

    <div class="section-title">
      <h2>Facts</h2>
      <div class="col-10">
        <i class="bi bi-chevron-right" style="color: #149ddd"></i><strong>Description:</strong>
            <textarea class="form-control"  rows="2"
                      name="description">${facts.description}</textarea>
      </div>
    </div>

    <div class="row no-gutters">

      <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up">
        <div class="count-box">
          <i class="bi bi-emoji-smile"></i>
            <span>
              <input class="form-control" type="text" placeholder="${facts.clients}"
                     name="clients" value="${facts.clients}">
            </span>
          <p><strong>Happy Clients</strong> consequuntur quae</p>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="100">
        <div class="count-box">
          <i class="bi bi-journal-richtext"></i>
            <span>
              <input class="form-control" type="text" placeholder="${facts.projects}"
                     name="projects" value="${facts.projects}">
            </span>
          <p><strong>Projects</strong> adipisci atque cum quia aut</p>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="200">
        <div class="count-box">
          <i class="bi bi-headset"></i>
            <span>
              <input class="form-control" type="text" placeholder="${facts.hours}"
                     name="hours" value="${facts.hours}">
            </span>
          <p><strong>Hours Of Support</strong> aut commodi quaerat</p>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="300">
        <div class="count-box">
          <i class="bi bi-people"></i>
            <span>
              <input class="form-control" type="text" placeholder="${facts.workers}"
                     name="workers" value="${facts.workers}">
            </span>
          <p><strong>Hard Workers</strong> rerum asperiores dolor</p>
        </div>
      </div>

    </div>
      <input class="btn btn-secondary pull-left" type="submit" value="Save"></input>
  </div>
  </form>
</section><!-- End Facts Section -->

    <%@include file="dynamic/footer.jspf"%>