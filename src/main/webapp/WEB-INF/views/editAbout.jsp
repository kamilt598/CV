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
        <li>Editing information about </li>
      </ol>
    </div>

  </div>
</section><!-- End Breadcrumbs -->

   <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <form method="post" action='<c:url value="/editAbout/${about.id}"/>'>
      <div class="container">

        <div class="section-title">
          <h2>About</h2>
          <div class="col-10">
            <i class="bi bi-chevron-right" style="color: #149ddd"></i><strong>Description:</strong>
            <textarea class="form-control"  rows="2"
                    name="firstDescription">${about.firstDescription}</textarea>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-4" data-aos="fade-right">
            <img src="${about.image}" class="img-fluid" alt="">
            <i class="bi bi-chevron-right" style="color: #149ddd"></i><strong>Image:</strong>
            <input class="form-control" type="text" placeholder="${about.image}"
                   name="image" value="${about.image}">

          </div>
          <div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">
            <h3>
              <div class="col-10">
                <i class="bi bi-chevron-right" style="color: #149ddd"></i><strong>Title:</strong>
                <input class="form-control" type="text" placeholder="${about.title}"
                       name="title" value="${about.title}">
              </div>
            </h3>
            <p class="fst-italic">
            <div class="col-10">
            <i class="bi bi-chevron-right" style="color: #149ddd"></i><strong>Title description:</strong>
              <textarea class="form-control" rows="2"
                        name="titleDescription">${about.titleDescription}</textarea>
            </div>
            </p>
            <div class="row">
              <div class="col-lg-6">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>Birthday:</strong> <span>
                    <div class="col-12">
                        <input class="form-control" type="date" name="birthday"
                              value="${about.birthday}" placeholder="${about.birthday}">
                      </div>
                  </span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Website:</strong> <span>
                      <div class="col-10">
                        <input class="form-control" type="text" placeholder="${about.website}"
                               name="website" value="${about.website}">
                      </div>
                  </span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Phone:</strong> <span>
                    <div class="col-10">
                        <input class="form-control" type="text" placeholder="${about.phone}"
                               name="phone" value="${about.phone}">
                      </div>
                  </span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>City:</strong> <span>
                    <div class="col-10">
                        <input class="form-control" type="text" placeholder="${about.city}"
                               name="city" value="${about.city}">
                      </div>
                  </span></li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>Age:</strong> <span>
                    <div class="col-10">
                        <input class="form-control" type="text" placeholder="${about.age}"
                               name="age" value="${about.age}">
                      </div>
                  </span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Degree:</strong> <span>
                    <div class="col-10">
                        <input class="form-control" type="text" placeholder="${about.degree}"
                               name="degree" value="${about.degree}">
                      </div>
                  </span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>PhEmailone:</strong> <span>
                    <div class="col-10">
                        <input class="form-control" type="text" placeholder="${about.email}"
                               name="email" value="${about.email}">
                      </div>
                  </span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Freelance:</strong> <span>
                    <div class="col-10">
                        <input class="form-control" type="text" placeholder="${about.freelance}"
                               name="freelance" value="${about.freelance}">
                    </div>
                  </span></li>
                </ul>
              </div>
            </div>
            <p>
              <i class="bi bi-chevron-right" style="color: #149ddd"></i><strong>Text:</strong>
              <textarea class="form-control" rows="4"
                        name="secondDescription">${about.secondDescription}</textarea>
            </p>
          </div>
        </div>


        <input class="btn btn-secondary pull-left" type="submit" value="Save"></input>
      </div>
      </form>

    </section><!-- End About Section -->

    <%@include file="dynamic/footer.jspf"%>