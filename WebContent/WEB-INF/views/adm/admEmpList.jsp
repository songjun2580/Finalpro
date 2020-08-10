<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
tbody{
	text-align: center;
}
.button{
	margin-left: 400px;
}
</style>
<script type="text/javascript">	
function doOpenCheck(chk){	//체크박스 1개만 선택 함수
	var obj = document.getElementsByName("empIdx");
	for(var i=0; i<obj.length; i++){
	if(obj[i] != chk){
	obj[i].checked = false;
		}
	}
}
</script>
</head>
<body>
<form name="admEmpList" action="moveEstimateMatch.do">
<div class="card-body">
              <div class="table-responsive">
              <h2>${moIdx}번 견적서</h2>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <input type="hidden" value="${moIdx}" name="moIdx">
                  <thead>
                    <tr>
                      <th>선택</th>
                      <th>사원 번호</th>
                      <th>사원 이름</th>
                      <th>휴대폰 번호</th>
                      <th>사원 정보</th>
                    </tr>
                  </thead>
                  <tbody>                 
                  <c:forEach var="dto" items="${admEmpList}">
                    <tr>
                      <td><input type="checkbox" name="empIdx" value="${dto.empIdx}" style="height: 40px;width: 25px;" onclick="doOpenCheck(this);"></td>
                      <td>${dto.empIdx}</td>
                      <td>${dto.empName}</td>
                      <td>${dto.empTel}</td>
                      <td><a class="btn btn-primary" href="#" role="button">조회</a></td>
                     <td></td>
                    </tr>
                    </c:forEach>                   
                  </tbody>
                </table>
     		</div><br><br>
     		<div class="button">
                 <button type="submit" name="MoveEstimateMatch">고객매칭</button>
            </div>
</div>
</form>
</body>
</html>