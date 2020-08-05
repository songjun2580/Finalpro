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

  <title>emp_header</title>
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
th,td{
	text-align:center;
}
</style>
<script>
function wrgUp(coIdx){	//경고
	location.href='wrgUp.do?coIdx='+coIdx;	
}
function compDelete(coIdx){	//업체삭제
	var result = confirm("경고::정말 삭제하시겠습니까?");
	if(result){
	    alert("삭제되었습니다");
	    location.href='compDelete.do?coIdx='+coIdx;
	}else{
	    alert("삭제에 실패하였습니다");
	}
}

function doOpenCheck(chk){	//체크박스 1개만 선택 함수
	var obj = document.getElementsByName("coIdx");
	for(var i=0; i<obj.length; i++){
	if(obj[i] != chk){
	obj[i].checked = false;
		}
	}
}

</script>
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
  <form name="admCoManage">
    <div class="row">
    <div class="col-2">
       <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
       
         <a class="nav-link active" id="v-pills-home-tab"  href="admCoManage.do" role="tab" aria-controls="v-pills-home">등록된 업체 목록</a>
         <a class="nav-link " id="v-pills-home-tab"  href="admCoAdd.do" role="tab" aria-controls="v-pills-home">가입 신청 업체 목록</a>
       </div>
    </div>
    
    <div class="col-lg-9 mb-4">
        <div class="card bg-secondary text-white shadow">
            <div class="card-body"> 
                <div class="text-white-50 small"></div>
                    등록된 업체 목록           
                    </div>
                  </div>
    
     <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>NO.</th>
                      <th>업체명</th>
                      <th>담당자</th>
                      <th>담장자 연락처</th>
                      <th>업체 이메일</th>
                      <th>사업자 등록증</th>
                      <th>법인등록번호</th>
                      <th>경고횟수</th>
                      <th>경고</th>
                      <th>삭제</th>
                      <th>상태</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:if test="${empty admCompList }">
		             <tr>
						<td colspan="11" align="center">
							등록된 업체가 없습니다.
						</td>
					</tr>
					</c:if>	
                    <c:forEach var="dto" items="${admCompList}">
                    <c:set var="coIdx" value="${dto.coIdx }"></c:set>
			               <tr>
			               <td>${dto.coIdx }</td>
			               <td>${dto.coName }</td>
		                   <td>${dto.coRep }</td>
		                   <td>${dto.coTel }</td>
			               <td>${dto.coEmail }</td> 
			               <td>${dto.coBsNum}</td>
			               <td>${dto.coCorNum }</td>
			               <td>${dto.coWrg }/3</td>
			               <td><button type="button" class="btn btn-primary" onClick="wrgUp(${dto.coIdx})">경고</button></td>
			              <td><button type="button" class="btn btn-danger" onClick="compDelete(${dto.coIdx})">업체삭제</button></td>
			               <c:choose>
			               <c:when test="${dto.coWrg le 2}">
			               <td>정상</td>
			               </c:when>
			               <c:otherwise>
			              <td>경고 배너</td>
			               </c:otherwise>
			               </c:choose>			          
			             </tr>
			        </c:forEach>
                  </tbody>
                </table>
                <div>
                     <!-- 페이징 -->
                     <div class="page" align="center">
	 					${pageStr } 
						</div>
			     </div>
                </div>     
                          
              </div>
            </div>
          </div>
    </form>
    
    <!-- ---------------------------------------------------------------------- -->
    
    <form name="compWrg">
    <div class="row">
    <div class="col-2">
       <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
       
         <a class="nav-link " id="v-pills-home-tab"  href="#" role="tab" aria-controls="v-pills-home">&nbsp;</a>
         <a class="nav-link " id="v-pills-home-tab"  href="#" role="tab" aria-controls="v-pills-home">&nbsp;</a>
       </div>
    </div>
    
    <div class="col-lg-9 mb-4">
        <div class="card bg-danger text-white shadow">
            <div class="card-body"> 
                <div class="text-white-50 small"></div>
                     경고업체          
                    </div>
                  </div>
    
     <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>NO.</th>
                      <th>업체명</th>
                      <th>담당자</th>
                      <th>담장자 연락처</th>
                      <th>업체 이메일</th>
                      <th>사업자 등록증</th>
                      <th>법인등록번호</th>
                      <th>경고횟수</th>
                      <th>경고시작 날짜</th>
                      <th>경고종료 날짜</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:if test="${empty admWrgList }">
		             <tr>
						<td colspan="11" align="center">
							경고업체가 없습니다
						</td>
					</tr>
					</c:if>	
                    <c:forEach var="dto2" items="${admWrgList}">
			               <tr>
			               <td>${dto2.coIdx }</td>
			               <td>${dto2.coName }</td>
		                   <td>${dto2.coRep }</td>
		                   <td>${dto2.coTel }</td>
			               <td>${dto2.coEmail }</td> 
			               <td>${dto2.coBsNum}</td>
			               <td>${dto2.coCorNum }</td>
			               <td>${dto2.coWrg }/3</td>
			               <td>${dto2.wrgTime }</td>
			               <td>${dto2.wrgEnd }</td>			                        
			             </tr>
			        </c:forEach>
                  </tbody>
                </table>
                <div>
                     <!-- 페이징 -->
                     <div class="page" align="center">
	 					${pageStr2 } 
						</div>
			     </div>
                </div>     
                          
              </div>
            </div>
          </div>
    </form>
  <hr>
  <%@include file="../footer.jsp" %>
  </body>
  </html>