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

  <title>adm_header</title>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">
<style>
body{
	font-family:sans-serif;
}

h2{
	text-align:center;
}
.rewrite{
	text-align:center;
}
.page{
	text-align:center;
	padding:20px;
}
</style>
</head>
<body>
<%@include file="adm_header.jsp" %>
 <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>불만사항 </h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
<div class="row">
  <div class="col-2">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <a class="nav-link active" id="v-pills-home-tab"  href="javascript:show();" role="tab" aria-controls="v-pills-home">이사업체</a>
    <a class="nav-link" id="v-pills-profile-tab"  href="admCcplList.jsp" role="tab" aria-controls="v-pills-profile">청소업체</a>
    </div>
  </div>
  <div class="col-lg-9">
	      <div class="card-body">
	                     불만사항 내역 보기<br><br>
	<div class="row">
    <div class="table-responsive">
    	<form>
	           <table class="table table-bordered" id="dataTable" style="width:80%; margin: 0px auto;">
	             <tbody>
		             <tr>
		               <td colspan="3">번호: <span>${dto.cplIdx }</span></td>
	                   <td colspan="3">날짜: <span>${dto.cplDate }</span></td>
		             </tr>
		             <tr>
		             <td colspan="6">작성자: <span>${dto.uName }</span></td>
	                 </tr>
		             <tr>
		             	<td colspan="6">제목: <span>${dto.cplSubject }</span></td>
		             </tr>
		             <tr>
		             <td colspan="6"><span>내용</span></td>
		             </tr>
		             <tr>
		             	<td colspan="6" style="height: 450px;"><p>이미지 보기</p>
		             		<div style="display: inline;">
		             		<c:forEach var="list" items="${imgList }">
		             		<c:if test="${empty list }">
		             			<div style="width: 150px;height: 150px;">
		             				<p style="">등록된 사진이 없습니다.</p>
		             			</div>
		             		</c:if>
		             			<div style="width: 150px;height: 150px; display: inline;">
		             				<img src="${pageContext.request.contextPath}/resources/upload/images/${list}" style="width:150px;height: 150px;">
		             			</div>	
		             		</c:forEach>             		
		             		</div>
		             	</td>
		             </tr>
		             <tr>
		             	<td colspan="6"><textarea rows="10" cols="100" readonly="readonly" style="resize: none; ">${dto.cplContent }</textarea> </td>
		             </tr>
	           </tbody>
	         </table>
	    </form>
	</div>
</div>
<div class="rewrite">
	<button type="submit" class="btn btn-primary">답변작성</button>
	<button type="reset" class="btn btn-primary">다시작성</button>
</div><br>
	      </div>
      </div><br>
	<br>

</div>

  <%@include file="../footer.jsp" %>
</body>
</html>