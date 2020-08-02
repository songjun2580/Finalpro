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

  <title>리뷰작성 게시판</title>
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
</style>
<script>
function checkFile(Inputobj){
	var imageType = /image.*/;
	if(File&&FileReader){
		if (Inputobj.files && Inputobj.files[0]) {
			var files=Inputobj.files
			
	        var preview = document.getElementById("preview_con"); 
            var newDivNode = document.createElement('p');
            newDivNode.id='preview';
            newDivNode.style.width= 200+'px';
			newDivNode.style.height=200+'px';
			newDivNode.style.display='inline';
            preview.appendChild(newDivNode);
            
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
					img.style.width= 600+'px';
					img.style.height=350+'px';
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
<%@include file="adm_header.jsp" %>
  <!-- Page Header -->
  <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>게시판 관리</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
<article>
	<section>
		<form name="BbsTip" action="admBbsTipWriteSubmit.do">
			<table border="1" style=" width:750px; margin: 0px auto;" >
				<tr>
					<td>
						<div>
							<label >제목</label>
							<div style="float: right;">
							<label for="seltype" >게시글 종류</label >
							<select id="seltype" style="margin-right: 150px;">
							<option value="1">가정이사 꿀팁</option>
							<option value="2">생활꿀팁</option>
							</select> 
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div>
							<label>이미지 올리기</label>
							<div style="float: right;">
							사진 첨부하기 &nbsp;&nbsp;&nbsp;
							<input type="file" id="revImg1" name="revImgs"  style="float: right;" onchange="checkFile(this)" multiple="multiple"  accept="image/*"> 
							</div>
						</div>
						
					</td>
				</tr>
				<tr>
					<td height="600px;">
						<div contenteditable="true" style="border: 1px solid gold; padding: 10px; height: 500px; min-height: 100px; overflow: auto;" id="preview_con">
							<p id="preview" style="width: 600px; height: 350px; display: inline;"></p>	
						</div>
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						<div >
							<input type="submit"  value="작성완료" > <input type="reset" value="다시 작성하기">
						</div>
					</td>
				</tr>
			</table>	
		</form>
	</section>
</article>
<hr>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
<%@include file="../footer.jsp" %>
</body>
</html>