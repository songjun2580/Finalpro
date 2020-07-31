<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>게시판 수정</title>

<style>

ul{
 list-style: none;
}

section {
  width: 65%;
  margin: 10px auto;}
  
 article {
    border: 1px solid grey;
    margin: 10px;
    padding: 10px;
  }

  h2 {
    font-size: 15px;
    margin: 3px;
  }

  .artb1 {
    float: right;
    margin-left: 5px;
  }



#art123 {
	width: 65%;
	border: 1px solid grey;
	padding: 10px;
	margin: 150px auto 0;
	}
	h1 {
		margin-top: 0;
	}
	label {
		display: block;
		margin-bottom : 5px;
	}
	textarea,
	input,
	.artb2 {
		display: block;
		width: 95%;
		margin-bottom: 10px;
	}
}

</style>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">

</head>

<body>
<%@include file="../header.jsp" %>
  <!-- Page Header -->
  <header class="masthead"  style="background-image: url('resources/img/honeytip.jpg'); background-size: 2000px 100%;">
    <div class="container">
      <div class="row">
        <div class="col-15 col-md-15 mx-auto">
          <div class="page-heading">
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  

<!-- end of top nav  -->

<div class="tab-content" id="pills-tabContent">
<!-- -직원정보수정 시작 -->
  <div class="tab-pane fade show active" id="pills-mypage" role="tabpanel" aria-labelledby="pills-mypage-tab"><!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class=" mx-auto" style="margin-right: 200px;">

      
  
  <!-- 2top nav -->
 <ul class="nav nav-tabs" style="margin-bottom:5%;">
  <li class="nav-item">
    <a class="nav-link active" href="#">가정이사 꿀팁</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">기업이사 꿀팁</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">생활정보 꿀팁</a>
  </li>
</ul>


<!--article management-->
<form class="form-inline my-2 my-lg-0">
	<div class="card" style="width: 20rem; margin-right: 25px; margin-bottom: 10px;">
	  <img src="<%=request.getContextPath()%>/resources/img/movetipOne.jpg" class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">알쓸이잡</h5>
	    <p class="card-text">알아두면 쓸데 정~말 많은 이사 잡학사전!</p>
	  </div>
	</div>
	
	<div class="card" style="width: 20rem; margin-right: 25px; margin-bottom: 10px;">
	  <img src="..." class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">Card title</h5>
	    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	  </div>
	</div>
	
	<div class="card" style="width: 20rem; margin-right: 25px; margin-bottom: 10px;">
	  <img src="..." class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">Card title</h5>
	    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	  </div>
	</div>


</form>

<!— end of article manage —>
      </div>
    </div>
  </div>
</div>
</div>
<!— 정보수정페이지끝 —>
  <hr>
  <%@include file="../footer.jsp" %>
</body>
 
</html>