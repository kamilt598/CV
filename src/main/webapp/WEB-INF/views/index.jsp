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

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="hero-container" data-aos="fade-in">
      <h1>${index.get(0).name}</h1>
      <p>I'm <span class="typed" data-typed-items="${index.get(0).job}"></span></p>
      <sec:authorize access="hasRole('ADMIN')">
        <c:forEach items="${index}" var="title">
          <a href='<c:url value="/editIndex/${title.id}"/>'
             class="btn-right btn btn-secondary" role="button"><i class="bx bx-edit"></i>Edit</a>
        </c:forEach>
      </sec:authorize>
    </div>
  </section><!-- End Hero -->

<%@include file="dynamic/footer.jspf"%>
