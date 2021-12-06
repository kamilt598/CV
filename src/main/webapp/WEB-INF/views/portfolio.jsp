<%@include file="dynamic/head.jspf"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav id="navbar" class="nav-menu navbar">
  <ul>
    <li><a href='<c:url value="index"/>' class="nav-link"><i class="bx bx-home"></i> <span>Home</span></a></li>
    <li><a href='<c:url value="about"/>' class="nav-link "><i class="bx bx-user"></i> <span>About</span></a></li>
    <li><a href='<c:url value="resume"/>' class="nav-link "><i class="bx bx-file-blank"></i> <span>Resume</span></a></li>
    <li><a href='<c:url value="portfolio"/>' class="nav-link active"><i class="bx bx-book-content"></i> <span>Portfolio</span></a></li>
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
   <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
      <div class="container">
        <div class="section-title">
          <h2>Portfolio</h2>
        </div>

        <div>
          <h2><i class="bi bi-chevron-right" style="color: #149ddd"></i><strong>CV application</strong></h2>
          <p>#Java #JSP #JDBC #Spring #Postgresql</p>
          <p>A website that allows you to view information about a person with the service of logging in and creating a new user as well as editing information stored in the database.</p>
          <a href="https://cv-kamilt598.herokuapp.com/">https://cv-kamilt598.herokuapp.com/</a>
        </div>
        <br>
        <div>
          <h2><i class="bi bi-chevron-right" style="color: #149ddd"></i><strong>Event Manager</strong></h2>
          <p>#Java #JSP #JDBC #Spring #Postgresql</p>
          <p>Application with various events supporting login and signing up for a selected event as well as creating new and editing current events.</p>
          <a href="https://eventmanager-dk.herokuapp.com/">https://eventmanager-dk.herokuapp.com/</a>
        </div>

      </div>
    </section><!-- End Portfolio Section -->
</main>


