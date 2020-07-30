<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="#"><img src="<%=request.getContextPath()%>/resources/img/logo.jpg" style="width:50px; heigth:50px;"></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavDropdown" style="margin-left: 200px;">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">이사견적</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">청소견적</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          	업체검색
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	          <a class="dropdown-item" href="#">이사업체 검색</a>
	          <a class="dropdown-item" href="#">청소업체 검색</a>
	        </div>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">이사꿀팁</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">자주묻는질문</a>
	      </li>
	    </ul>
	  </div>
	</nav>
</header>