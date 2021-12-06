<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="dynamic/head2.jspf"%>

<nav id="navbar" class="nav-menu navbar">
  <ul>
    <li><a href='<c:url value="../index"/>' class="nav-link"><i class="bx bx-home"></i> <span>Home</span></a></li>
    <li><a href='<c:url value="../about"/>' class="nav-link"><i class="bx bx-user"></i> <span>About</span></a></li>
    <li><a href='<c:url value="../resume"/>' class="nav-link "><i class="bx bx-file-blank"></i> <span>Resume</span></a></li>
    <li><a href='<c:url value="../portfolio"/>' class="nav-link "><i class="bx bx-book-content"></i> <span>Portfolio</span></a></li>
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
<main id="main">
<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs">
  <div class="container">

    <div class="d-flex justify-content-between align-items-center">
      <ol>
        <li><a href="/index">Home</a></li>
        <li><a href="/about">About</a></li>
        <li>Editing skills</li>
      </ol>
    </div>

  </div>
</section><!-- End Breadcrumbs -->

<!-- ======= Skills Section ======= -->
<section id="skills" class="skills section-bg">
  <form method="post" action='<c:url value="/editSkills/${skills.id}"/>'>
  <div class="container">

    <div class="section-title">
      <h2>Skills</h2>
      <div class="col-10">
        <i class="bi bi-chevron-right" style="color: #149ddd"></i><strong>Description:</strong>
            <textarea class="form-control"  rows="2"
                      name="description">${skills.description}</textarea>
      </div>
    </div>

    <div class="row skills-content">

      <div class="col-lg-6" data-aos="fade-up">

        <div class="progress">
          <span class="skill">Java <i class="val">
            <input class="form-control" type="text" placeholder="${skills.html}"
                   name="html" value="${skills.html}">
          </i></span>
        </div>

        <div class="progress">
          <span class="skill">GIT <i class="val">
            <input class="form-control" type="text" placeholder="${skills.css}"
                   name="css" value="${skills.css}">
          </i></span>
        </div>

        <div class="progress">
          <span class="skill">Spring <i class="val">
            <input class="form-control" type="text" placeholder="${skills.javascript}"
                   name="javascript" value="${skills.javascript}">
          </i></span>
        </div>

      </div>

      <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">

        <div class="progress">
          <span class="skill">SQL <i class="val">
            <input class="form-control" type="text" placeholder="${skills.php}"
                   name="php" value="${skills.php}">
          </i></span>
        </div>

        <div class="progress">
          <span class="skill">JDBC <i class="val">
            <input class="form-control" type="text" placeholder="${skills.wordpress}"
                   name="wordpress" value="${skills.wordpress}">
          </i></span>
        </div>

        <div class="progress">
          <span class="skill">JUnit <i class="val">
            <input class="form-control" type="text" placeholder="${skills.photoshop}"
                   name="photoshop" value="${skills.photoshop}">
          </i></span>
        </div>

      </div>

    </div>
    <input class="btn btn-secondary pull-left" type="submit" value="Save"></input>
  </div>
  </form>
</section><!-- End Skills Section -->
</main>
<%@include file="dynamic/footer.jspf"%>