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

  <title>불편사항 신고 게시판</title>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>
header {
   position: fixed;
   width: 1155px;
   z-index: 9999;
   top: 0;
   background-color: white;
   margin: 0px auto;
}
body{
	padding-top:85px;
	width:1155px;
	margin:0px auto;
	font-family:sans-serif;
}
table{
   height:200px;
   margin: 0px auto;
}
td{
    height:100px;
}
</style>
<script>
function checkFile(Inputobj){
	var imageType = /image.*/;
	if(File&&FileReader){
		if (Inputobj.files && Inputobj.files[0]) {
			var files=Inputobj.files
			
			var preview_con= document.getElementById("preview_con"); 
	        var preview = document.getElementById("preview"); 
            var newDivNode = document.createElement('div');
            preview.remove();
            newDivNode.id='preview';
            newDivNode.style.width= 200+'px';
			newDivNode.style.height=200+'px';
			newDivNode.style.display='inline';
            preview_con.appendChild(newDivNode);
            
			for( var i=0; i<files.length;i++){
				var file = files[i];
				if (!file.type.match(imageType))
		                continue				
		            var img=document.createElement("img");
					img.id="imagePreview"+i;
					img.name="imagePreview";
					img.alt="image files";
					img.classList.add("obj")
					img.file=file;
					img.style.width= 200+'px';
					img.style.height=200+'px';
					document.getElementById('preview').appendChild(img);
					
					var reader = new FileReader();
					reader.onloadend = (function(aImg){
						return function(e){
							aImg.src=e.target.result;
						};
					})(img);
					reader.readAsDataURL(file);
			}
		}
	}
}
</script>
</head>
<body>
<%@include file="../header.jsp" %>
    <div class="row">
    <div class="col-2">
		<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			<a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="false" onclick="location.href='userInfoCheck.do'">정보수정</a>
			<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false" onclick="location.href='userMoveList.do'">이사내역 조회</a>
			<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false" onclick="location.href='userCleanChoice.do'">청소업체 선정</a>
			<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false" onclick="location.href='userCleanList.do'">청소내역 조회</a>
		</div>
    </div>
    <div class="col-9">
<form name="complaint" action="#">
<br><br>
   <section>
      <article>
            <form name="cpl" id="compForm" action="userCompWriteSubmit.do" method="post" enctype="multipart/form-data">
         <br><br>
                <h2 style="text-align: left;">불편사항 신고</h2>
                     <table border="1">
                    
                        <tr>
                           <td>
                              <input type="text" name="uName" value="${sessionScope.uName}" readonly="readonly">
                              <span><br>업체명 :${dto2.coName }</span>
                              <input type="hidden" name="moIdx" value=${param.moIdx }><!-- 넘겨온 견적서 moIdx로 무족권 변경해주기!! -->
                              <input type="text" name="coIdx" value=${dto2.coIdx }>
                           </td>
                           <td>
                              	<span>출발지:${dto.moSaddr }  &rarr; <br>도착지:${dto.moEaddr }</span>
                           </td>
                        </tr>
                        <tr>
                              <td colspan="2">사진 첨부하기 <input type="file" id="cplImg1" name="cplImgs"  style="float: right; marign-right: 150px;" onchange="checkFile(this)" multiple="multiple">
                        </tr>
                        <tr>
                             <td  colspan="2" id="preview_con">
	                   	 <div id="preview" style="width: 200px; height: 200px; display: inline;">
	                   	
	                   	 </div>	 
	                  </td>
	                  
                         </tr>
                        <tr>
                           <td>제목</td>
                           <td><input type="text" name="cplSubject" required size="80"></td>
                        </tr>
                        <tr>
                           
                        </tr>
                        <tr>
                           <td colspan="2" >내용</td>
                        </tr>
                        <tr>
                           <td colspan="2" >
                               <textarea rows="10" cols="115" placeholder="내용을 작성 해주세요" name="cplContent" style="resize:none"></textarea>
                           </td>
                        </tr>
                        <tr>
                           <td colspan="2" style="text-align: center;">
                              <input type="submit" value="작성 완료"> <input type="reset" value="다시 작성하기">
                           </td>
                        </tr>
                     </table>
		         </form>   
      </article>
   </section>
</form>   
</div>
</div>
<hr>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
<%@include file="../footer.jsp" %>
</body>
</html>