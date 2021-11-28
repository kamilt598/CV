<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@include file="dynamic/head.jspf"%>


<nav id="navbar" class="nav-menu navbar">
  <ul>
    <li><a href='<c:url value="index"/>' class="nav-link"><i class="bx bx-home"></i> <span>Home</span></a></li>
    <li><a href='<c:url value="about"/>' class="nav-link active"><i class="bx bx-user"></i> <span>About</span></a></li>
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

   <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title">
          <h2>About</h2>
          <p>${about.get(0).firstDescription}</p>
        </div>

        <div class="row">
          <div class="col-lg-4" data-aos="fade-right">
            <img src="${about.get(0).image}" class="img-fluid" alt="">
          </div>
          <div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">
            <h3>${about.get(0).title}</h3>
            <p class="fst-italic">
              ${about.get(0).titleDescription}
            </p>
            <div class="row">
              <div class="col-lg-6">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>Birthday:</strong> <span><fmt:formatDate pattern = "dd-MM-yyyy"
                    value = "${about.get(0).birthday}" /></span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Website:</strong> <span>${about.get(0).website}</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Phone:</strong> <span>${about.get(0).phone}</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>City:</strong> <span>${about.get(0).city}</span></li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>Age:</strong> <span>${about.get(0).age}</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Degree:</strong> <span>${about.get(0).degree}</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>PhEmailone:</strong> <span>${about.get(0).email}</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Freelance:</strong> <span>${about.get(0).freelance}</span></li>
                </ul>
              </div>
            </div>
            <p>
              ${about.get(0).secondDescription}
            </p>
          </div>
        </div>

        <div style="float: right">
        <sec:authorize access="hasRole('ADMIN')">
          <c:forEach items="${about}" var="title">
            <a href='<c:url value="/editAbout/${title.id}"/>'
               class="btn-right btn btn-secondary" role="button"><i class="bx bx-edit"></i>Edit About</a>
          </c:forEach>
        </sec:authorize>
        </div>
      </div>
    </section>

        <!-- ======= Facts Section ======= -->
        <section id="facts" class="facts">
          <div class="container">

            <div class="section-title">
              <h2>Facts</h2>
              <p>${facts.get(0).description}</p>
            </div>

            <div class="row no-gutters">

              <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up">
                <div class="count-box">
                  <i class="bi bi-emoji-smile"></i>
                  <span data-purecounter-start="0" data-purecounter-end="${facts.get(0).clients}" data-purecounter-duration="1" class="purecounter"></span>
                  <p><strong>Happy Clients</strong> consequuntur quae</p>
                </div>
              </div>

              <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="100">
                <div class="count-box">
                  <i class="bi bi-journal-richtext"></i>
                  <span data-purecounter-start="0" data-purecounter-end="${facts.get(0).projects}" data-purecounter-duration="1" class="purecounter"></span>
                  <p><strong>Projects</strong> adipisci atque cum quia aut</p>
                </div>
              </div>

              <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="200">
                <div class="count-box">
                  <i class="bi bi-headset"></i>
                  <span data-purecounter-start="0" data-purecounter-end="${facts.get(0).hours}" data-purecounter-duration="1" class="purecounter"></span>
                  <p><strong>Hours Of Support</strong> aut commodi quaerat</p>
                </div>
              </div>

              <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch" data-aos="fade-up" data-aos-delay="300">
                <div class="count-box">
                  <i class="bi bi-people"></i>
                  <span data-purecounter-start="0" data-purecounter-end="${facts.get(0).workers}" data-purecounter-duration="1" class="purecounter"></span>
                  <p><strong>Hard Workers</strong> rerum asperiores dolor</p>
                </div>
              </div>

            </div>
            <div style="float: right">
              <sec:authorize access="hasRole('ADMIN')">
                <c:forEach items="${facts}" var="title">
                  <a href='<c:url value="/editFacts/${title.id}"/>'
                     class="btn-right btn btn-secondary" role="button"><i class="bx bx-edit"></i>Edit Facts</a>
                </c:forEach>
              </sec:authorize>
            </div>
          </div>
        </section><!-- End Facts Section -->



        <!-- ======= Skills Section ======= -->
        <section id="skills" class="skills section-bg">
          <div class="container">

            <div class="section-title">
              <h2>Skills</h2>
              <p>${skills.get(0).description}</p>
            </div>

            <div class="row skills-content">

              <div class="col-lg-6" data-aos="fade-up">

                <div class="progress">
                  <span class="skill">HTML <i class="val">${skills.get(0).html}%</i></span>
                  <div class="progress-bar-wrap">
                    <div class="progress-bar" role="progressbar" aria-valuenow="${skills.get(0).html}" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>

                <div class="progress">
                  <span class="skill">CSS <i class="val">${skills.get(0).css}%</i></span>
                  <div class="progress-bar-wrap">
                    <div class="progress-bar" role="progressbar" aria-valuenow="${skills.get(0).css}" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>

                <div class="progress">
                  <span class="skill">JavaScript <i class="val">${skills.get(0).javascript}%</i></span>
                  <div class="progress-bar-wrap">
                    <div class="progress-bar" role="progressbar" aria-valuenow="${skills.get(0).javascript}" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>

              </div>

              <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">

                <div class="progress">
                  <span class="skill">PHP <i class="val">${skills.get(0).php}%</i></span>
                  <div class="progress-bar-wrap">
                    <div class="progress-bar" role="progressbar" aria-valuenow="${skills.get(0).php}" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>

                <div class="progress">
                  <span class="skill">WordPress/CMS <i class="val">${skills.get(0).wordpress}%</i></span>
                  <div class="progress-bar-wrap">
                    <div class="progress-bar" role="progressbar" aria-valuenow="${skills.get(0).wordpress}" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>

                <div class="progress">
                  <span class="skill">Photoshop <i class="val">${skills.get(0).photoshop}%</i></span>
                  <div class="progress-bar-wrap">
                    <div class="progress-bar" role="progressbar" aria-valuenow="${skills.get(0).photoshop}" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>

              </div>

            </div>
            <div style="float: right">
              <sec:authorize access="hasRole('ADMIN')">
                <c:forEach items="${skills}" var="title">
                  <a href='<c:url value="/editSkills/${title.id}"/>'
                     class="btn-right btn btn-secondary" role="button"><i class="bx bx-edit"></i>Edit Skills</a>
                </c:forEach>
              </sec:authorize>
            </div>
          </div>
        </section><!-- End Skills Section -->

</main>

    <%@include file="dynamic/footer.jspf"%>