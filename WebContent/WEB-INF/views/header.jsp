<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style>
    .nav-link{
       font-size: 20px;
    }
    </style>
<header>
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
     <a class="navbar-brand" href="index.do">
        <img src="<%=request.getContextPath()%>/resources/img/companyLogo.png" style="width:100px; heigth:100px;">
     </a>
    <c:if test="${!empty sessionScope.uIdx && empty sessionScope.coIdx || !empty sessionScope.coIdx && empty sessionScope.uIdx}">
     <div class="collapse navbar-collapse" id="navbarNavDropdown" style="margin-left: 50%;">
       <ul class="navbar-nav">
         <li class="nav-item">
             <a class="nav-link" href="userInfoCheck.do"><b>${sessionScope.uName}${sessionScope.coName}님 로그인 중</b></a>
         </li>
         <li class="nav-item active">
           <a class="nav-link" href="index.do" >Home <span class="sr-only">(current)</span></a>
         </li>
         <li class="nav-item">
           <a class="nav-link" href="userMoveEstimateWrite.do">이사견적</a>
         </li>
         <li class="nav-item">
           <a class="nav-link" href="userCleanEstimateWrite.do">청소견적</a>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                업체검색
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
             <a class="dropdown-item" href="userMoveCoSearch.do">이사업체 검색</a>
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
   </c:if>
   <c:if test="${empty sessionScope.uIdx && empty sessionScope.coIdx}">
     <div class="collapse navbar-collapse" id="navbarNavDropdown" style="margin-left: 60%;">
       <ul class="navbar-nav">
         <li class="nav-item active">
           <a class="nav-link" href="index.do" >Home <span class="sr-only">(current)</span></a>
         </li>
         <li class="nav-item">
           <a class="nav-link" href="userMoveEstimateWrite.do">이사견적</a>
         </li>
         <li class="nav-item">
           <a class="nav-link" href="userCleanEstimateWrite.do">청소견적</a>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                업체검색
           </a>
           <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
             <a class="dropdown-item" href="userMoveCoSearch.do">이사업체 검색</a>
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
   </c:if>
   </nav>
</header>