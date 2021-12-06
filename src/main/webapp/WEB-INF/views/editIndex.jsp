<%@include file="dynamic/head2.jspf"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <form method="post" action='<c:url value="/editIndex/${index.id}"/>'>
    <div class="hero-container">
      <h1>
        <input class="form-control" type="text" placeholder="${index.name}"
               name="name" value="${index.name}">
      </h1>
      <p>I'm <span class="typed">
        <input class="form-control" type="text" placeholder="${index.job}"
               name="job" value="${index.job}">
      </span></p>
      <input class="btn btn-secondary pull-left" type="submit" value="Save"></input>
    </div>
    </form>
  </section><!-- End Hero -->

</main>
