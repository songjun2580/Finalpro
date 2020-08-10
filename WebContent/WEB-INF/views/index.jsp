<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이사만 해? 청소도 해!</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<!-- selectbox css href -->
<link rel="stylesheet" href="css/selectbox.css">
<style>
.login{
   width:300px;
   margin-left:10px;
}
#nav-home-tab{
   width:50%;   
}
#nav-profile-tab{
   width:50%;
}
.mainTop{
   width:100%;
   heigth:397px;
}
.welcome{
 padding-top:5%;"
}

#mpbt, #lobt{
   width:48%;
   padding: 9px 12px;
}

.mainImg{
   float:center; 
   margin-bottom:4%; 
   text-align:center;
   
}
.companylogin{
   width: 34%;
   padding:5px 14px;
   border: 1px solid #ccc;
   box-sizing: border-box;
}





</style>
<script>

   /**function getPosX(targetPos) {
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
<!-- 로그인 안했을때 -->
<c:if test="${empty sessionScope.uIdx && empty sessionScope.coIdx}">
   <div class="login" style="float:left; padding-left:1%; padding-top:2%;">
      <nav>
        <div class="nav nav-tabs" id="nav-tab" role="tablist" style="text-align:center;">
          <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">개인회원</a>
          <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">기업회원</a>
        </div>
      </nav>
        <div class="tab-content" id="nav-tabContent">
           <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" style="width:270px;">
            <div>
              <form name="userlogin" action="userLogin.do">
                <div class="form-group">
                  <label for="exampleDropdownFormEmail1" style="padding-top:5%;">아이디</label>
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
         <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
            <div>
               <form name="comLogin" action="comLogin.do">
                      <div class="form-group">
                        <label for="exampleDropdownFormEmail1">이메일</label>
                        <br>
                        
                        <!-- 기업 로그인 selectbox css -->
                        <input type="text" name="email_1" maxlength="15" size="8" placeholder="Email" class="companylogin">&nbsp;@
                              <span class="dropdown-el">
                            <input type="radio" name="email_2" value="naver.com" checked="checked" id="sort-relevance">
                            <label for="sort-relevance">naver.com</label>
                            <input type="radio" name="email_2" value="doum.net" id="sort-best">
                            <label for="sort-best">daum.net</label>
                            <input type="radio" name="email_2" value="gmail.com" id="sort-low">
                            <label for="sort-low">gmail.com</label>
                            <input type="radio" name="email_2e" value="nate.com" id="sort-high">
                            <label for="sort-high">nate.com</label>
                          </span>
                       <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
                          <script src="js/index.js"></script>
                       <!-- 기업 로그인 selectbox css -->
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
        </div> 
   </div>
</c:if>

<!-- 개인회원 로그인 성공 창 -->
<c:if test="${!empty sessionScope.uIdx && empty sessionScope.coIdx}">
   <div class="login" style="float:left; padding-left:1%; padding-top:2%;">
      <nav>
        <div class="nav nav-tabs" id="nav-tab" role="tablist" style="text-align:center;">
          <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">개인회원</a>
        </div>
      </nav>
        <div class="tab-content" id="nav-tabContent">        
           <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
           <label class="welcome">${sessionScope.uName}님 환영합니다.</label>
           <br>
           <button type="button" class="btn btn-primary" onclick="location.href='userInfoCheck.do'" id="mpbt">마이페이지</button>
           <button type="button" class="btn btn-secondary" onclick="location.href='userlogout.do'" id="lobt">로그아웃</button>
           </div>
        </div>
   </div> 
</c:if>   
<!-- 기업회원 로그인 성공 창 -->
<c:if test="${!empty sessionScope.coIdx && empty sessionScope.uIdx}">
   <div class="login" style="float:left; padding-left:1%; padding-top:2%;">
      <nav>
        <div class="nav nav-tabs" id="nav-tab" role="tablist" style="text-align:center;">
          <a class="nav-item nav-link active" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="true">기업회원</a>
        </div>
      </nav>
        <div class="tab-content" id="nav-tabContent">   
          <div class="tab-pane fade active show" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
         <label class="welcome"> 매일이사님 환영합니다.</label>
           <button type="button" class="btn btn-primary" id="mpbt" onclick="location.href='compMypage.do'">마이페이지</button>
           <button type="button" class="btn btn-secondary" onclick="location.href='comlogout.do'" id="lobt">로그아웃</button>
          </div>
        </div>
   </div>
</c:if>
   <div class="mainImg">
      <img src="<%=request.getContextPath()%>/resources/img/mainImg.png" style="width:1200px; height:800px;" onclick="test()" usemap="#Map">
      <map name="Map">
         <area shape="rect" coords="305,611,519,762" href="userMoveEstimateWrite.do"> 
         <area shape="rect" coords="690,612,905,761" href="userCleanEstimateWrite.do"> 
         </map>
   </div>
   
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
<%@include file="footer.jsp" %>
</body>
</html>