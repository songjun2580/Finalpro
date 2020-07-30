<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>게시판 수정</title>
<script>
$(document).ready(function() {

    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    $(".file-upload").on('change', function(){
        readURL(this);
    });
});
</script>
<style>
body{
	font-family:sans-serif;
}
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
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">

</head>

<body>
<%@include file="adm_header.jsp" %>
  <!-- Page Header -->
  <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>게시판 수정</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  


  <div class="row">
  <div class="col-3">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical" style="width:300px;">
      <a class="nav-link" id="v-pills-home-tab"  href="admBbsQnA.do" role="tab" aria-controls="v-pills-home" >Q&A게시판 관리</a>
      <a class="nav-link active" id="v-pills-profile-tab"  href="admBbsTip.do" role="tab" aria-controls="v-pills-profile" >꿀팁 관리</a>
    </div>
  </div>
<!-- end of top nav  -->

<div class="tab-content" id="pills-tabContent">
<!-- -직원정보수정 시작 -->
  <div class="tab-pane fade show active" id="pills-mypage" role="tabpanel" aria-labelledby="pills-mypage-tab"><!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class=" mx-auto" style="margin-right: 200px;">

      
  
  <!-- 2top nav -->
 <ul class="nav nav-tabs">
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

       <!--직원정보 해더 블록  -->
        <div class="jumbotron jumbotron-fluid" style="width: 1000px; height: 214px;padding-bottom: 30px;margin-bottom: 50px;padding-top: 15px;margin-top: 50px;">
		  <div class="container" style="width: 800px;height: 228px;padding-bottom: 0px;padding-top: 15px;">
		  	<p class="lead" style=" text-align: center;">여러분의 궁금한것을 대신 알려드립니다!</p>
		    <h1 class="display-4"  style=" text-align: center;">꿀팁 게시판</h1>
		  </div>
		</div>
	<form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" style="margin-left: 65%">
      <button class="btn btn-secondary" type="submit">Search</button>
      
<!--article management-->
<div class="card" style="width: 18rem; margin-right: 25px; margin-bottom: 10px;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">수정하기</a>
  </div>
</div>

<div class="card" style="width: 18rem; margin-right: 25px; margin-bottom: 10px;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">수정하기</a>
  </div>
</div>

<div class="card" style="width: 18rem; margin-right: 25px; margin-bottom: 10px;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">수정하기</a>
  </div>
</div>

<div class="card" style="width: 18rem; margin-right: 25px; margin-bottom: 10px;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">수정하기</a>
  </div>
</div>

<div class="card" style="width: 18rem; margin-right: 25px; margin-bottom: 10px;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">수정하기</a>
  </div>
</div>
</form>

<!-- end of article manage -->
      </div>
    </div>
  </div>
</div>
</div>
</div>
<!-- 정보수정페이지끝 -->
  <hr>
  <%@include file="../footer.jsp" %>
</body>
 
</html>