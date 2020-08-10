<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<title>청소 견적서 작성</title>
<link rel="stylesheet" href="../webjars/bootstrap/4.3.1/css/bootstrap.css">
<!-- 주소 css -->
<link rel="stylesheet" href="../webapp/css/addrlinkSample.css">
<style>
body{
   padding-top:85px;
   width:1155px;
   margin:0px auto;
}
.question{
   font-weight: bold;
   margin-bottom:10px;
}
.bodyContent{
   margin-left:50px;
}
</style>
</head>
<body>
   <label style="font-weight:bold; font-size:30px;">청소 견적 신청</label>
   <hr>
   <form name="userCleanEstPopup" action="">
      <div class="bodyContent">
         <div style="margin-bottom: 20px;">
            <label class="question">청소날</label><br>
            <input type="text" value="${dto.clDate}" readonly>
         </div>
         <div style="margin-bottom: 20px;">
            <label class="question">신청인 성함</label><br>
            <input type="text" value="${dto.clName}" readonly>
         </div>
         <div style="margin-bottom: 20px;">
            <label class="question">신청인 연락처</label><br>
            <input type="text" value="${dto.clTel}" readonly>
         </div>
         <div style="margin-bottom: 20px;">
            <table>
            <tr>
            <tr>
               <td>도로명주소</td>
               <td><input type="text" value="${dto.clRoadAddr}" readonly></td>
            </tr>
            <tr>
               <td>상세주소</td>
               <td><input type="text" value="${dto.clAddrDetail}" readonly style="width:400px;"></td>
            </tr>   
            </table>
         </div>
         
         <div style="margin-bottom: 20px;">
            <label class="question">원하는 업체 소재지</label><br> <!-- ajax활용해서 변경!! -->
            <input type="text" value="${dto.clCoAddr}" readonly>
         </div>
         <div style="margin-bottom: 10px;">
            <label class="question">청소 종류</label><br>
               <input type="text" value="${dto.clType1}" readonly><br>
            <label class="question">부가서비스</label><br>
               <input type="text" value="${dto.clType2}" readonly>
         </div>
         <div style="text-align:center; margin-bottom: 10px;"><button type="submit" class="btn btn-primary" style="width:150px;">승인하기</button></div>
      </div>
   </form>
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>