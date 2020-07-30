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
  <script type="text/javascript" src="js/httpRequest.js"></script>
  <script>
  //가입 완료
  function show(){
	  window.alert('가입 완료 되었습니다!');
	  location.href="index.jsp"
	  
  }
  // 이메일 직접입력폼
  function emailInput(){
	  var e_sub_val=document.getElementById('email_sub_val');
	  var e_sub=document.getElementById('email_sub');
	  e_sub.value=e_sub_val.value;
	  if(e_sub.value != ''){
		  e_sub.setAttribute('readonly','readonly');
	  }else{
		  e_sub.removeAttribute('readonly');
	  }
  }
  //인증 이메일 보내기
  function emailAuth(){
		var uEmail2=document.getElementById('email_sub').value;
		var uEmail1=document.getElementById('email_main').value;
		var param="uEmail1="+uEmail1+"&uEmail2="+uEmail2;
		sendRequest('emailAuth.do',param,emailResult,'GET');
	}
	function emailResult(){
		if(XHR.readyState==4){
			if(XHR.status==200){
				var data=XHR.responseText;
				document.all.ckEmailMsg.innerText=data;
				
			}
		}	
	}
	//이메일 인증번호 확인
	function emailNumAuth(){
		var userkey=document.getElementById('userkey').value;
		param="userkey="+userkey;
		sendRequest('emailNumAuth.do',param,emailNumResult,'GET');
	}
	function emailNumResult(){
		if(XHR.readyState==4){
			if(XHR.status==200){
				var data=XHR.responseText;
				document.all.ckEmailNumMsg.innerHTML=data;
			}
		}	
	}
  
  //업체타입
  function cotype1(){
	  var cotype=document.getElementById('cotype');
	  var showtype=document.getElementById('showType');
	  showtype.value=cotype.options[cotype.selectedIndex].text;
  }
  //핸드폰 번호 자동이동
  function telMove(){
	   var telSize=document.join.ptel2.value.length;
	   if(telSize==4){
	      document.join.ptel.focus();
	   }
  }
	// 주소 팝업
  	function goPopup(){	
		var pop = window.open("jusoPopupCo.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	}
  	// 주소 값  가져오기
	function jusoCallBack(coSaddr, cozipNo, coRaddr, corDaddr){	//출발지 주소
		var addr=coSaddr+coRaddr;
		document.getElementById('moSaddr').value=addr;
		document.getElementById('szipNo').value=cozipNo;
		document.getElementById('deAddr').value=corDaddr;
		document.join.coAddr.value=coSaddr+' , '+corDaddr;
	}
  	
	

	
  </script>
 </head>
 <%@include file="comp_Header.jsp" %>
 <body>
 <article>
	<section>
	<form name="join">
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
			<p><input type="text" class="signInputBox" size="25" name="coName"></p> 
			</td>
		</tr>
		<tr>
		<td class="signTableName"><p>&nbsp;*업체 종류</p>
		</td>
			<td class="signTableInput" colspan="3" rowspan="1">
			<!-- input Box -->
			<p>
			<input type="text" class="signInputBox" size="10" id="showType" readonly value="이사업체">
			<select name="coType" id="cotype" onchange="cotype1()">
				<option value="1" selected>이사업체</option>
				<option value="2">청소업체</option>
			</select>
			</p> 			
			</td>
		</tr>
		<tr><td class="signTableName"><p>&nbsp;*대표자명</p></td>
		<td class="signTableInput" colspan="3" rowspan="1">
		<p><input type="text" class="signInputBox" size="25" name="coRep"></p></td>
		
		
		</tr>
		<tr><td class="signTableName"><p>&nbsp;*사업자등록번호&nbsp;</p></td>
		<td class="signTableInput" colspan="3" rowspan="1">
		<p><input type="text" class="signInputBox" size="25" name="coBsNum"></p>
		</td>
		
		
		</tr>
			<tr>
			<td class="signTableName"><p>&nbsp;&nbsp;법인 등록번호</p></td>
			<td class="signTableInput" colspan="3" rowspan="1">
		<p>
			<input type="text" class="signInputBox" size="25" name="coCorNum">
		</p>
		</td>
		
		
		</tr>
		<tr>
			<td class="signTableName" rowspan="2" colspan="1"><p>&nbsp;*회사주소&nbsp;</p></td>
			<td class="signTableInput" colspan="3" rowspan="1">
			<p>
			<input type="text" id="szipNo" size="15" placeholder="우편번호"  class="signInputBox" readonly required>
			<input type="text" id="moSaddr" size="50" placeholder="주소입력" class="signInputBox" readonly required>
			 &nbsp;&nbsp;&nbsp; <input type="button" value="주소 검색" onclick="goPopup()">
			 <input type="hidden" name="coAddr">
			</p>
		</td>
		</tr>
		<tr>
		<td class="signTableInput" colspan="3" rowspan="1">
		<p><input type="text" class="signInputBox" size="50" id="deAddr" placeholder="상세주소입력" name=><br></p>
		</td>
		</tr>
			<tr>
			<td class="signTableName" rowspan="2" colspan="1"><p>&nbsp;*이메일</p></td>
			<td class="signTableInput" colspan="3" rowspan="1">
			<p> <input type="text" class="signInputBox" id="email_main" size="25"> @
				<input type="text" class="signInputBox"  id="email_sub">
				<select id="email_sub_val" class="signInputBox" onchange="emailInput()">
				<option value="naver.com">naver.com</option>
				<option value="daum.net">daum.net</option>
				<option value="gmail.com">gmail.com</option>
				<option value="" selected>직접입력</option>
				</select>
				<input type="button" value="이메일 인증하기" onclick="emailAuth();" class="signInputBox">
				<span id="ckEmailMsg"></span>
				</p></td>
			</tr>
			<tr>
				<td class="signTableInput" colspan="3" rowspan="1">
				
					<p><b class="signInputBox">이메일 인증번호:</b> <input type="text" id="userkey" size="7">
						<input type="button" value="인증확인" onclick="emailNumAuth();" class="signInputBox" ><br>
						<span id="ckEmailNumMsg"></span>
						<input type="hidden" id="email" name="coEmail">
					</p>
				</td>
			</tr>	
			</p>
			</td>
			<tr>
				<td class="signTableName" rowspan="1" colspan="1"><p>&nbsp;*휴대폰번호</p>
			</td>
				<td class="signTableInput" colspan="3" rowspan="1">
			<p>
				<select name="ptel1" class="signInputBox">
                  <option value="010" selected>010
                  <option value="011">011
                  <option value="012">012
               </select>&nbsp;-&nbsp;
               <input type="text" id="tel" name="ptel2" onkeyup="telMove()" size="5" maxlength="4" required class="signInputBox">&nbsp;-&nbsp;
               <input type="text" id="tel" name="ptel" size="5" maxlength="4" required class="signInputBox">
               <input type="hidden" name="coPwd">     
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
		
			<button type="submit"  class="btn btn-secondary btn-lg" style="margin-left:40%;" onclick="show()">가입완료</button>
		</form>	
  </section>
 </article>
</body>
  <%@include file="../footer.jsp" %>
</html>