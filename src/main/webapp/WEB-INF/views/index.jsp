<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이사만 해? 청소도 해!</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>
header {
   position: fixed;
   width: 1500px;
   z-index: 9999;
   top: 0;
   background-color: white;
   margin: 0px auto;
}
body{
	padding-top:85px;
	width:1500px;
	margin:0px auto;
}
.login{
   width:230px;
   margin-left:10px;
}
#nav-home-tab{
   width:50%;   
}
#nav-profile-tab{
   width:50%;
}
.mainTop{
   padding-top:20px;
   width:1500px;
   heigth:397px;
}
</style>
<script>
/**
   function getPosX(targetPos) {
      var currentLeft = 0;
      if (targetPos.offwetParent)
         while (1) {
            currentLeft += obj.offsetLeft;
            if (!targetPos.offsetParent)
               break;
            targetPos = targetPos.offsetParent;
         }
      else if (targetPos.x)
         currentLeft += targetPos.x;
      return currentLeft;
   }
   function getPosY(targetPos) {
      var currentTop = 0;
      if (targetPos.offsetParent)
         while (1) {
            currentTop += targetPos.offsetTop;
            if (!targetPos.offsetParent)
               break;
            targetPos = targetPos.offsetparent;
         }
      else if (targetPos.y)
         currentTop += targetPos.y;
      return currentTop;
   }
   
   function test() {
         alert("현재 좌표는 " + event.offsetX + "/" + event.offsetY)
      }
*/
</script>
</head>
<body>
<%@include file="header.jsp" %>
<div class="mainTop">
   <div class="login" style="float:left;">
      <nav>
        <div class="nav nav-tabs" id="nav-tab" role="tablist" style="text-align:center;">
          <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">개인회원</a>
          <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">기업회원</a>
        </div>
      </nav>
      
        <div class="tab-content" id="nav-tabContent">
        <c:if test="${!empty sessionScope.uIdx}">
           <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
           <label>${sessionScope.uName}님 환영합니다.</label><br>
           <button type="button" class="btn btn-primary" onclick="location.href='userInfoCheck.do'">마이페이지</button>
           <button type="button" class="btn btn-secondary" onclick="location.href='userlogout.do'">로그아웃</button>
           </div>
        </c:if>
        
        <c:if test="${empty sessionScope.uIdx }">
           <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
            <div>
              <form name="userlogin" action="userLogin.do">
                <div class="form-group">
                  <label for="exampleDropdownFormEmail1">아이디</label>
                  <input type="text" class="form-control" id="exampleDropdownFormEmail1" name="usId" placeholder="ID" required>
                </div>
                <div class="form-group">
                  <label for="exampleDropdownFormPassword1">비밀번호</label>
                  <input type="password" class="form-control" id="exampleDropdownFormPassword1" name="uPwd" placeholder="Password">
                </div>
                <div class="form-group">
                  <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="dropdownCheck">
                    <label class="form-check-label" for="dropdownCheck">
                     로그인 상태 유지하기
                    </label>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary">로그인</button>
              </form>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="userJoin.do">회원가입</a>
              <a class="dropdown-item" href="#">비밀번호 찾기</a>
            </div>
        </div>
        </c:if>
        
         <c:if test="${!empty sessionScope.coIdx}">
          <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
           <label>${sessionScope.coName}님 환영합니다.</label>
           <button type="button" class="btn btn-primary">마이페이지</button>
           <button type="button" class="btn btn-secondary" onclick="location.href='comlogout.do'">로그아웃</button>
           </div>
        </c:if>
        <c:if test="${empty sessionScope.coIdx}">
        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
              <div>
              <form name="comLogin" action="comLogin.do">
                <div class="form-group">
                  <label for="exampleDropdownFormEmail1">이메일</label><br>
                  <input type="text" name="email_1" maxlength="20" size="9" placeholder="moveclean">@
                        <select name="email_2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                </div>
                <div class="form-group">
                  <label for="exampleDropdownFormPassword1">비밀번호</label>
                  <input type="password" class="form-control" id="exampleDropdownFormPassword1" name="coPwd" placeholder="Password">
                </div>
                <div class="form-group">
                  <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="dropdownCheck">
                    <label class="form-check-label" for="dropdownCheck">
                      로그인 상태 유지하기
                    </label>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary">로그인</button>
              </form>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="compSign.do">회원가입</a>
              <a class="dropdown-item" href="#">비밀번호 찾기</a>
            </div>
        </div>
        </c:if>
      </div>
   </div>
   <div class="mainImg" style="float:right; width:800; height:373;" >
      <img src="<%=request.getContextPath()%>/resources/img/mainImg.png" style="width:850px; height:373px;" onclick="test()" usemap="#Map">
      <map name="Map">
         <area shape="rect" coords="257,230,392,297" href="http://www.naver.com" target="_blank"> 
         <area shape="rect" coords="424,230,561,298" href="http://www.google.com" target="_blank"> 
         </map>
   </div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>

<%@include file="footer.jsp" %>
</body>
</html>