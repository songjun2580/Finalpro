<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="index.html">${sessionScope.empName }님 로그인 중</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive" style="margin-left:900px;">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="emp_Mypage.do" style="font-size: 22px;">마이페이지</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="emp_Year.do" style="font-size: 22px;">실적 관리</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="emp_MoveCustomerList.do" style="font-size: 22px;">업체조회</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="empLogout.do" style="font-size: 22px;">로그아웃</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  </header>
  
   <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>


</body>

</html>
  