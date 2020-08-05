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

  <title>업체 승인페이지</title>
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
.col-6{
    margin:0px auto;
}
.page{
	text-align:center;
	padding:20px;
}
</style>
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
            <h1>업체관리</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  <form name="admCompAccept" action="admCompAccept.do">
    <div class="row">
    <div class="col-2">
       <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
       
         <a class="nav-link " id="v-pills-home-tab"  href="admCoManage.do" role="tab" aria-controls="v-pills-home">등록된 업체 목록</a>
         <a class="nav-link active" id="v-pills-home-tab"  href="admCoAdd.do" role="tab" aria-controls="v-pills-home">가입 신청 업체 목록</a>
       </div>
    </div>
    
    <div class="col-lg-9 mb-4">
        <div class="card bg-secondary text-white shadow">
            <div class="card-body"> 
                <div class="text-white-50 small"></div>
                    가입 신청 업체 목록           
                    </div>
                  </div>
    
     <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th></th>
                      <th>NO.</th>
                      <th>업체명</th>
                      <th>담당자</th>
                      <th>담장자 연락처</th>
                      <th>업체 이메일</th>
                      <th>사업자 등록증</th>
                      <th>법인등록번호</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:if test="${empty admCompWaitList }">
		             <tr>
						<td colspan="8" align="center">
							승인대기중인 업체가 없습니다.
						</td>
					</tr>
					</c:if>
					<c:forEach var="dto" items="${admCompWaitList}">
			               <tr>
			               <td><input type="checkbox" value="${dto.coIdx }" name="coIdx"></td>
			               <td>${dto.coIdx }</td>
			               <td>${dto.coName }</td>
		                   <td>${dto.coRep }</td>
		                   <td>${dto.coTel }</td>
			               <td>${dto.coEmail }</td> 
			               <td>${dto.coBsNum}</td>
			               <td>${dto.coCorNum }</td>
			             </tr>
			        </c:forEach>
                  </tbody>
                </table>
                <div>
                	<div align="right">
                	<button type="submit" class="btn btn-primary">업체승인</button>
                	</div>
                     <!-- 페이징 -->
			     <div class="page">
	 				${pageStr } 
				</div>
                </div>
                
                <!-- ------------------------------------------------------------------------ -->
              </div>
            </div>
          </div>
    
    </div>
    </form>
  <hr>
  <%@include file="../footer.jsp" %>
  </body>
  </html>