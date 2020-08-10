<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/selectbox.css">
<style>
.starrate span.ctrl { position:absolute; z-index:2;}
      .starrate { color:var(--secondary); cursor:pointer}
      .starrate.saved { color:var(--dark);}
      .starrate:hover { color:var(--primary);} .starrate.saved:hover { color:var(--orange);}
</style>
<style>
.nav nav-pills mb-3{
  -ms-flex-pack: center !important;
  justify-content: center !important;
   }
h4{
   font-size: 11px;
   font-family: Georgia, "Malgun Gothic", serif;
   font-weight: bold;
}

.best_comment{
   font-family: Georgia, "Malgun Gothic", serif;
   vertical-align: top; 
   width: 365px; 
   height: 60px;
}
.company_info{
   font-family: Georgia, "Malgun Gothic", serif;
   vertical-align: top; 
   width: 158px; 
   height: 162px;"
}

.move_addr_table{
   width: 97px; 
   height: 42px; 
   padding: 3px 4px 2px; 
   color: rgb(255, 255, 255); 
   text-align: left; 
   font-weight: normal; 
   background-color: rgb(51, 51, 51);"
}
.move_addr_content{
   width: 300px; 
   height: 34px; 
   padding: 3px 4px 2px; 
   color: rgb(102, 102, 102); 
   background-color: rgb(255, 255, 255);
}
.review_info_main{
   margin-left:%;
}

#work_img{
   width:250px; 
   height:200px;
}
.img{
   text-align:center; 
   width:200px; 
   height:200px;
   margin-left: 20px;
}
.newDivNode{
   width:250px;
   height:250px;
   border:1px solid black;
   display: block;
   padding:5px;
}
.imgSubject{
   margin-left: 20px;
   width:200px;
}
</style>
<script src="vendor/jquery/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   var val = parseFloat($(".starrate").data('val'));
   var result = val % 1;
   result  = Number(result .toFixed(3));
   var result2= Math.round(result);
   //var full= Number.isInteger(val);
   var stars = $("#starrate i");
   
   stars.slice(0,val).attr("class" , "fas fa-fw fa-star" );
   if(result2>0)  { stars.slice(val,val+1).attr("class" , "fas fa-fw fa-star-half-alt" ); val++ }
   stars.slice(val,5).attr("class" , "far fa-fw fa-star" );
});   

</script>
<script>
function preview(Inputobj,id){
      var imageType = /image.*/;
      if(File&&FileReader){
         if (Inputobj.files && Inputobj.files[0]) {
            var files=Inputobj.files;
           
               var preview = document.getElementById(id);
               var oldDivNode=document.getElementById('preview'+id);
               var newDivNode = document.createElement('div');
               oldDivNode.remove();//old div 날려버림
               newDivNode.id='preview'+id;
               newDivNode.className='newDivNode';
               preview.appendChild(newDivNode);
               
            for(var i=0; i<files.length;i++){
               var file = files[i];
               if (!file.type.match(imageType))        
                  continue;     
                  var img=document.createElement("img");
                  img.id="imagePreview"+i;
                  img.name="imagePreview";
                  img.alt="image files";
                  img.classList.add("obj")
                  img.file=file;
                  img.className="img";
                  img.setAttribute('onclick','document.all.file'+id+'.click();');
                  document.getElementById('preview'+id).appendChild(img);
                  var imgSubject=document.createElement('input');
                  imgSubject.name='bcSubject'+id;
                  imgSubject.className='imgSubject';
                  document.getElementById('preview'+id).appendChild(imgSubject);
                  
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
var SNS={
      facebook: function(link,title){
         link=encodeURIComponent(link);
         title=encodeURIComponent(document.title);
         
         var url='http://www.facebook.com/sharer.php?u=' + link + '&t='+ title;
         window.open(url,'','width=400,height=400,left=600');
      }
}

function snsSubmit(type,title,coIdx){ //페이스북 공유
   if(type=="twitter"){
      SNS.twitter(currentUrl,title);
   }else if(type=="facebook"){
      SNS.facebook("http://192.168.0.53:9090/finalproject/compBlog.do?coIdx="+coIdx,title);
   }
}

</script>
</head>
<body>
<div id="fb-root"></div>

<%@include file="../header.jsp" %>   
   <div class="row">
      <div class="col-2">
   <ul class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <li class="nav-item" role="presentation">
          <a class="nav-link" id="pills-mypage-tab" data-toggle="pill" href="compMypage.do" role="tab" aria-selected="true">마이페이지</a>
        </li>
        <li class="nav-item" role="presentation">
          <a class="nav-link" id="pills-record-tab" data-toggle="pill" href="compRecord.do" role="tab" aria-selected="false">실적조회</a>
        </li>
        <li class="nav-item" role="presentation">
          <a class="nav-link active" data-toggle="pill" href="compBlog.do?coIdx=${sessionScope.coIdx}" aria-selected="false">업체블로그</a>
        </li>
        <li class="nav-item" role="presentation">
		  <a class="nav-link" id="pills-bid-tab" data-toggle="pill" href="compBid.do" role="tab" aria-selected="false">견적서 조회(입찰)</a>
		</li>
		<li class="nav-item" role="presentation">
		  <a class="nav-link" id="pills-bid-tab" data-toggle="pill" href="comContract.do" role="tab" aria-selected="false">견적서 조회(확정)</a>
		</li>
      </ul>
   </div>
<!-- 업체블로그 -->
      <div class="col-9">
          <div class="alert alert-secondary" role="alert">${com_dto.coName}</div>
     <div class="container">
      <p/>
      <p/>
      <div class="review_all">
       <input type="text" id="testRate">
      <br>
       <table style="float: left; width:500px;">
            </tbody>
               <tr>
                  <td style="font-family: dotum; vertical-align: top; width: 400px; height: 150px;">
                     <table style="background-color: rgb(199, 199, 199);" class="move_addr_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="8">
                        <tbody>
                              <tr>
                                 <td class="move_addr_table">
                                   <p style="text-align: center;">&nbsp;별점</p>
                                 </td>
                                 <td class="move_addr_content">
                                    
                                    <div class="ml-auto">
                                     <div id="starrate" class="starrate" data-val="${avgRate}" data-max="5">
                                        <span class="ctrl"></span>
                                          <span class="cont m-1">
                                          <i class="fas fa-fw fa-star"></i> 
                                          <i class="fas fa-fw fa-star"></i> 
                                          <i class="fas fa-fw fa-star"></i> 
                                          <i class="far fa-fw fa-star"></i> 
                                          <i class="far fa-fw fa-star"></i>
                                          </span>
                                          ${avgRate}&nbsp;점
                                       </div>
                                
                                  </div> 
                                 </td>
                              </tr>
                              <tr>
                                 <td class="move_addr_table">
                                    <p style="text-align: center;">&nbsp;업체주소</p>
                                 </td>
                                 <td class="move_addr_content">
                                    <p>${com_dto.coAddr}</p>
                                 </td>
                              </tr>
                              <tr>
                                 <td class="move_addr_table">
                                    <p style="text-align: center;">&nbsp;업체 이메일</p>
                                 </td>
                                 <td class="move_addr_content">
                                    <p>${com_dto.coEmail}</p>
                                 </td>
                              </tr>
                              <tr>
                                 <td class="move_addr_table">
                                    <p style="text-align: center;">&nbsp;연락처</p>
                                 </td>
                                 <td class="move_addr_content">
                                    <p>${com_dto.coTel}</p>
                                 </td>
                              </tr>
                          </tbody>
                        </table>
                     </td>
                  </tr>
               </tbody>
            </table>
           </td>
      <c:if test="${empty best_review}">
            <td rowspan="3" class="best_comment">BEST 후기글&nbsp;<br></td>
            <table border="0" cellspacing="0" cellpadding="0" class="review" >
               <tr>
                  <td colspan="3" rowspan="1">
                     <img src="" style="width:200px; height:200px;" alt="이미지">
                  </td>
               </tr>
               <tbody>
                  <tr>
                     <td style="font-family: dotum; vertical-align: top; width: 367px;height:200px;" class="review_contents" colspan="1" rowspan="1">
                            작성된 리뷰가 존재하지 않습니다.
                      </td>
                  </tr>
               </tbody>
            </table>
      </c:if>
      <c:if test="${not empty best_review}">    
           <td rowspan="3" class="best_comment">BEST 후기글&nbsp;<br></td>
            <table border="0" cellspacing="0" cellpadding="0" class="review">
               <tr>
                  <td colspan="3" rowspan="1">
                     <img src="${pageContext.request.contextPath}/resources/upload/images/${best_review.revImg}" style="width:200px; height:200px;" alt="현장 이미지">
                  </td>
               </tr>
               <tbody>
                  <tr>
                     <td style="font-family: dotum; vertical-align: top; width: 367px;" class="review_contents" colspan="1" rowspan="1">
                         ${best_review.revContent}<br>
                          (${best_review.uName} 님)
                      </td>
                  </tr>
               </tbody>
            </table>
       </c:if>
         <p/>
         <p/>
        
         </div>
         <hr>
         <div class="review_info_main">   
       <form name="coBlogImg" action="coBlogImgUpdate.do" method="post" enctype="multipart/form-data">
         현장 사진  <input type="submit" value="이미지 저장"><!-- <input type="button" value="이미지 삭제하기" onclick="deleteImg();">-->
            <input type="hidden" name="coIdx" size="10" value="${sessionScope.coIdx}">
            <input type="hidden" value="${dto.bcImg1}" name="bcImg1">
            <input type="hidden" value="${dto.bcImg2}" name="bcImg2">
            <input type="hidden" value="${dto.bcImg3}" name="bcImg3">
            <div class="row">
                
                 <div class="col-md-4" id="1">
                    <input type="file" name="file1"  style="display: none;" onchange="preview(this,1)"> 
                    <div>
                       <div style="text-align:center; border:1px solid black; padding: 5px; width:250px;height:250px;" id="preview1">
                          <a onclick="document.all.file1.click();">
                             <img src="${pageContext.request.contextPath}/resources/upload/images/${dto.bcImg1}" style="width:200px; height:200px;" alt="현장 이미지">
                           </a>   
                             <input type="text" value="${dto.bcSubject1}" name="bcSubject1" style="width:210px;">
                       </div>
                       
                    </div>
                 </div>
                 <div class="col-md-4" id="2">    
                    <input type="file" name="file2" style="display: none;" onchange="preview(this,2)"> 
                    <div>
                       <div style="text-align:center; border:1px solid black; padding: 5px; width:250px;height:250px;" id="preview2">
                          <a onclick="document.all.file2.click();">
                             <img src="${pageContext.request.contextPath}/resources/upload/images/${dto.bcImg2}" style="width:200px; height:200px;" alt="현장 이미지">
                          </a>      
                             <input type="text" value="${dto.bcSubject2}" name="bcSubject2" style="width:210px;">
                       </div>
                    </div>
                 </div>
                 <div class="col-md-4" id="3">
                       <input type="file" name="file3"  style="display: none;" onchange="preview(this,3)"> 
                    <div>
                       <div style="text-align:center; border:1px solid black; padding: 5px; width:250px;height:250px;" id="preview3">
                          <a onclick="document.all.file3.click();">
                             <img src="${pageContext.request.contextPath}/resources/upload/images/${dto.bcImg3}" style="width:200px; height:200px;" alt="현장 이미지">
                          </a>
                             <input type="text" value="${dto.bcSubject3}" name="bcSubject3" style="width:210px;">
                       </div>
                       
                    </div>
                </div>
            </div>
         </form>   
         <hr style="margin-top:50px;">
         <div align="">
         </div>
         <div align="">
            <table border="0" cellspacing="0" cellpadding="0" class="review_info_main">
               <tbody>
                  <tr>
                   <td style="font-family: dotum; vertical-align: top; width: 743px; height: 143px;" class="se2_editarea pcol2 m-tcol-c" colspan="1" rowspan="1">
                    <table border="0" cellspacing="0" cellpadding="0" class="__se_tbl_review">
                        <tbody>
                           <c:if test="${empty review_lists}">
                              <tr>
                                 <td><label>작성된 리뷰가 존재하지 않습니다.</label></td>
                              </tr>
                           </c:if>
                           <c:forEach var="review" items="${review_lists}">
                              <tr>
                                 <td style="font-family: dotum; vertical-align: top; width: 188px; height: 157px;" class="se2_editarea pcol2 m-tcol-c">
                                    <img src="${pageContext.request.contextPath}/resources/upload/images/${review.revImg}" style="width:200px; height:200px;" alt="현장 이미지">
                                 </td>
                                 <td style="font-size: 0px; width: 5px; height: 159px;" class="">&nbsp;</td>
                                 <td style="font-family: dotum; vertical-align: top; width: 550px; height: 157px; padding-left: 15px;" class="se2_editarea pcol2 m-tcol-c">
                                     제목:&nbsp;${review.revSubject} &nbsp;&nbsp;평점:${review.revRate}
                                     작성자:&nbsp;${review.uName} <br>지역:&nbsp;${review.moSaddr}&nbsp;→&nbsp;${review.moEaddr}
                                      <p/><p/>
                                      &nbsp;&nbsp;${review.revContent} 
                                   </td>
                              </tr>
                           </c:forEach>
                         </tbody>
                      </table>
                   </td>
                </tr>
               <tbody> 
             </table> 
               <br>
                  <!-- 페이징 -->
              <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate" style="margin-left:45%;">
                 <ul class="pagination">
                    <li class="paginate_button page-item previous disabled" id="dataTable_previous">
                       <a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">이전</a>
                    </li>
                    <li class="paginate_button page-item active">
                       <a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a>
                    </li>
                    <li class="paginate_button page-item ">
                       <a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a>
                    </li>
                    <li class="paginate_button page-item ">
                       <a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a>
                    </li>
                    <li class="paginate_button page-item ">
                       <a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a>
                    </li>
                    <li class="paginate_button page-item ">
                       <a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a>
                    </li>
                    <li class="paginate_button page-item ">
                       <a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a>
                    </li>
                    <li class="paginate_button page-item next" id="dataTable_next">
                       <a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">다음</a>
                    </li>
                 </ul>
              </div>
            
           
            
            </div>
            </div>
            </p>
            </div>
            </div>
            </div>
            
</body>
  <%@include file="../footer.jsp" %>
</html>