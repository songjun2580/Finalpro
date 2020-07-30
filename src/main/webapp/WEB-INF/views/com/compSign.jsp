<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
  <link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
  <title>Document</title>
  <style>

.signInfo{
	text-align: right; 
	font-size: 10px;
 }
 .signTable{
 	background-color: rgb(199, 199, 199);
 	height: 200px;
	margin: 0px auto; 

 }
 .signTableName{
 	margin-left:2%;
 	font-size: 13px;
	width: 120px;  
	color: rgb(102, 102, 102); 
	background-color: rgb(235, 235, 235);
 }
 .signTableInput{
 	width: 760px; 
 	height: 30px;
 	background-color: rgb(255, 255, 255); 
 	color: rgb(102, 102, 102)" 
 }
 .signInputBox{
 	margin-left:2%;
 	padding-top:1px;
 	padding-bottm:1px;
 	
 }
  </style>
  <script>
  function show(){
	  window.alert('가입 완료 되었습니다!');
	  location.href="index.jsp"
	  
  }
  </script>
 </head>
 <%@include file="comp_Header.jsp" %>
 <body>
 	<p/>
 	 <h3>기업회원 정보 입력</h3>
 	 <p class="signInfo" align="right">정보를 입력하신 후 가입완료 버튼을 눌러주십시오.</p>
 	 <hr>
	   <p/>
	   <table class="signTable"  border="0" cellpadding="0" cellspacing="1">
	   	<tbody>
		<tr>
		<td class="signTableName"><p>&nbsp;*회사명</p>
		</td>
			<td class="signTableInput" colspan="3" rowspan="1">
			<!-- input Box -->
			<p><input type="text" class="signInputBox" size="25"></p> 
			</td>
		</tr>
		<tr><td class="signTableName"><p>&nbsp;*대표자명</p></td>
		<td class="signTableInput" colspan="3" rowspan="1">
		<p><input type="text" class="signInputBox" size="25"></p></td>
		
		
		</tr>
		<tr><td class="signTableName"><p>&nbsp;*사업자등록번호&nbsp;</p></td>
		<td class="signTableInput" colspan="3" rowspan="1">
		<p><input type="text" class="signInputBox" size="25"></p>
		</td>
		
		
		</tr>
			<tr>
			<td class="signTableName"><p>&nbsp;&nbsp;법인 등록번호</p></td>
			<td class="signTableInput" colspan="3" rowspan="1">
		<p>
			<input type="text" class="signInputBox" size="25">
		</p>
		</td>
		
		
		</tr>
		<tr>
			<td class="signTableName" rowspan="2" colspan="1"><p>&nbsp;*회사주소&nbsp;</p></td>
			<td class="signTableInput" colspan="3" rowspan="1">
			<p><input type="text" class="signInputBox" size="25" readonly> <input type="button" value="우편번호검색">
			</p>
		</td>
		</tr>
		<tr>
		<td class="signTableInput" colspan="3" rowspan="1">
		<p><input type="text" class="signInputBox" size="50" placeholder="상세주소입력"></p>
		</td>
		</tr>
			<tr>
			<td class="signTableName" rowspan="1" colspan="1"><p>&nbsp;*이메일</p>
			</td>
			<td class="signTableInput" colspan="3" rowspan="1">
			<p><input type="text" class="signInputBox" size="25">
				<select>
				<option value="@naver.com">@naver.com</option>
				<option value="@daum.net">@daum.net
				</select>
			<input type="button" value="이메일인증">
			</p>
			</td>
			<tr>
				<td class="signTableName" rowspan="1" colspan="1"><p>&nbsp;*휴대폰번호</p>
			</td>
				<td class="signTableInput" colspan="3" rowspan="1">
			<p>
				<input type="text" size="5" class="signInputBox">&nbsp;-&nbsp;<input type="text" size="10">&nbsp;-&nbsp;<input type="text" size="10">
			</p>
			</td>			
			</tr>
			<tr>
			<td class="signTableName" rowspan="1" colspan="1"><p>&nbsp;*비밀번호</p>
			</td>
			<td class="signTableInput" colspan="3" rowspan="1">
			<p><input type="password" class="signInputBox" size="25"></p>
			</td>
			</tr>
		</tbody>
		</table>
		<p/>
		<p/>
		
			<button type="button" class="btn btn-secondary btn-lg" style="margin-left:40%;" onclick="show()">가입완료</button>
	 </body>
  <%@include file="../footer.jsp" %>
</html>