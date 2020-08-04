<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이사 업체 검색</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>
.navbar-expand{ background-color: #007bff; }
.search img{
   margin-top:50px;
   margin-left:950px;
}
.search .search_engine{
   margin-left:930px;
   margin-bottom:70px;
 
}
#result_t{
   width:1200px;
   margin-left:500px;
   margin-top:100px;
   margin-bottom:150px;
}
#result_t td{
   padding:90px;
}
</style>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
document.addEventListener("DOMContentLoaded", function() {
    var elements = document.getElementsByTagName("INPUT");
    for (var i = 0; i < elements.length; i++) {
        elements[i].oninvalid = function(e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
                e.target.setCustomValidity("검색어를 입력해주세요");
            }
        };
        elements[i].oninput = function(e) {
            e.target.setCustomValidity("");
        };
    }
})
$(function(){
   $('#dropdown-item').click(function(){
      var getId=$(this).attr("id");
      window.alert(getId);
      
   });
});
</script>
<script type="text/javascript" src="js/httpRequest.js" ></script>
<script type="text/javascript">
window.onload=function(){//<body onload="show()">
   show();
}
function show(){
   sendRequest('getAddr.do',null,showResult,'GET');
}
function showResult(){
   if(XHR.readyState==4){
      if(XHR.status==200){
         var data=XHR.responseText;
         data=eval('('+data+')');
         var keys=Object.keys(data);//JSON Obejcts key "이름String" 배열 [seoul,kyeongki,Incheon]
         
         for(var i=0;i<keys.length;i++){
            var locationKey=data[keys[i]]// 찐 key 객체 배열  ex)seoul
            var locationNode=document.getElementById(keys[i]);//seoul div
            
            for(var j=0;j<locationKey.length;j++){
               var locationValue=Object.values(data[keys[i]]);//각 seoul의 value들(loc1,loc2)
               
               var locationDistrict=document.createElement('a');
               locationDistrict.className="dropdown-item";
               var locationTextNode=document.createTextNode(locationValue[j].loc2);//loc2 들 강남구
               locationDistrict.appendChild(locationTextNode);//지역명 담은 <a>태그생성
               locationNode.appendChild(locationDistrict);//드롭다운에 <a>태그 갖다 붙이기
               locationDistrict.href="moSearchEngine.do?mo_search="+locationValue[j].loc2;
            }
         }   
      }
   }
}
</script>
</head>
<body>
<%@include file="../header.jsp" %>
   <nav class="navbar navbar-expand-lg navbar-light bg-primary">
     <div class="collapse navbar-collapse" id="navbarNavDropdown" style="margin-left: 200px;">
       <ul class="navbar-nav">
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                서울
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="seoul"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                경기
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="kyeongki"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                인천
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Incheon"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                부산
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Busan"></div>
         </li>
         
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                대구
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Daegu"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                광주
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Gwangju"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                대전
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Daejeon"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                울산
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Ulsan"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                강원
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Kangwon"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                경남
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Kyeongnam"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                경북
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Kyeongbook"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                전남
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Jeonnam"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                전북
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Jeonbook"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                충남
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Chungnam"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                충북
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="ChungBook"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                제주
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Jeju"></div>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                세종
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" id="Sejong"></div>
         </li>
         
       </ul>
     </div>
   </nav>
   <div class="search">
      <img src="<%=request.getContextPath()%>/resources/img/logo.jpg" style="width:250px; heigth:250px;"><br>
      <form name="moSearchEngine" action="moSearchEngine.do">
         <div class="search_engine">
            <input type="text" name="mo_search" placeholder="지역  또는 업체명을 검색" required><input type="submit" value="검색하기 ">
         </div>
      </form>
   </div>
   <div class="result">
      <table id="result_t">
         <thead>
                    <tr>
                       <th style="text-align:center">업체명</th>
                       <th style="text-align:center">e-mail</th>
                       <th style="text-align:center">전화번호</th>
                       <th style="text-align:center">주소</th>
                    </tr>
           </thead>
         <tbody>
         <c:if test="${empty lists}">
               <tr>
                  <td colspan="4" align="center">관련된 검색 결과가 없습니다.</td>
               </tr>
         </c:if>
         <c:forEach var="dto" items="${lists}">
                    <tr>
                       <td align="center"><a href="userBlogView.do?coIdx=${dto.coIdx}">${dto.coName}</a></td>
                    <td align="center">${dto.coEmail}</td>
                     <td align="center">${dto.coTel}</td>
                     <td align="center">${dto.coAddr}</td>
                    </tr>
             </c:forEach>   
         </tbody>      
      </table>
   </div>
   
<%@include file="../footer.jsp" %>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>