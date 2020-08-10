<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
    <link href="css/clean-blog.min.css" rel="stylesheet">
<style>
body{
   font-family:sans-serif;
}
.nav nav-pills mb-3{
  -ms-flex-pack: center !important;
  justify-content: center !important;
   }
th,td{
   text-align:center;
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
   width: 251px; 
   height: 34px; 
   padding: 3px 4px 2px; 
   color: rgb(102, 102, 102); 
   background-color: rgb(255, 255, 255);
}
.review_info_main{
   margin-left:3%;
}

#work_img{
   width:250px; 
   height:200px;
}
.bt{
   padding-bottom: 12px;
}
</style>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
function remit(coIdx,coName, goMoney,count,moIdx){
    var param="coName="+coName+"&coIdx="+coIdx+"&goMoney="+goMoney+'&count='+count+'&moIdx='+moIdx;
    sendRequest('admremittance.do',param,remitResult,'GET');
 }
 
 function remitResult(){
    if(XHR.readyState==4){
       if(XHR.status==200){
          var data=XHR.responseText;
          var strArr=data.split(',');
          var admBankBook=strArr[0];
          var account=strArr[1];
          var coName=strArr[2];
          var goMoney=strArr[3];
          var count=strArr[4];
          var moIdx=strArr[5];
          var coIdx=strArr[6];
          
          var bankbookId='bankbook'+count;
          var conameId='coname'+count;
          var accountId='account'+count;
          var gomoneyId='gomoney'+count;
          var buttonId='button'+count;
         
          if(document.getElementById(count)){
            return false;
          }
          
          var bankbookNode=document.getElementById(bankbookId)    
          var bankbookTextNode=document.createTextNode('관리자 총 금액: '+admBankBook+'원');
          bankbookNode.appendChild(bankbookTextNode);
          bankbookNode.id=count;
          
          var conameNode=document.getElementById(conameId);
          var conameTextNode=document.createTextNode('업체명: '+coName);
          conameNode.appendChild(conameTextNode);
    
         
          var gomoneyNode=document.getElementById(gomoneyId);
          var newgomoneyNode=document.createElement('input');
          newgomoneyNode.setAttribute('type','text');
          newgomoneyNode.setAttribute('placeholder','입금금액');
          newgomoneyNode.setAttribute('size','15');
          
          gomoneyNode.appendChild(newgomoneyNode);
         
          var buttonNode=document.getElementById(buttonId);
          var newBTNode=document.createElement('input');
         newBTNode.setAttribute('type','button');
         newBTNode.setAttribute('class','btn btn-danger');
         newBTNode.setAttribute('value','송금');
         newBTNode.onclick=open;
 
         buttonNode.appendChild(newBTNode);
         
         function open(){
            location.href='comRemit.do?moIdx='+moIdx+'&coIdx='+coIdx+'&goMoney='+goMoney;
         }
       }
    }
 }

</script>
<%@include file="adm_header.jsp" %>
  <!-- Page Header -->
 
<body>
 <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>실적 관리</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
</head>
   <div class="row">
      <div class="col-2">
      <ul class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <li class="nav-item" role="presentation">
          <a class="nav-link active" id="pills-mypage-tab" data-toggle="pill" href="admStatus.do" role="tab" aria-selected="true">실적현황</a>
           <a class="nav-link" id="pills-mypage-tab" data-toggle="pill" href="finalList.do" role="tab" aria-selected="true">최종거래 완료목록</a>
        </li>
      </ul>
   </div>
   <!-- 실적조회 -->
      <div class="col-9">
          <div class="alert alert-secondary" role="alert">
         실적현황내역-이사
         </div>
         <p/><!-- Tasks Card Example -->
         
            <div class="col-xl-4 col-md-6 mb-4" style="float: left;">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1"><a href="emp_Contracting.jsp">진행중인 계약</a></div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${counting }건</div>
                        </div>
                        <div class="col">
                          <div class="progress progress-sm mr-2">
                            <div class="progress-bar bg-info" role="progressbar" style="width: ${counting*10}%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-4 col-md-6 mb-4" style="float: left;">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">총 거래 완료</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${counted }건</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Annual) Card Example -->
            <div class="col-xl-4 col-md-6 mb-4" style="display: inline-block; margin-bottom: 7%;" >
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">총거래금액</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">$ ${money}</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
              <div>
                <select name="dailyMonth"  style="width:100px;height:30px; margin-left:3%">
                 <option value="날짜별">날짜별</option>
               <option value="기간별">기간별</option>
                </select>
                <button type="button" class="btn btn-dark" style="margin-left:2%">확인</button>
                 </div>
                 <hr>
                 <div>
                 <table class="table">
                 <thead class="thead-light">
                   <tr>
                     <th scope="col">번호</th>
                     <th scope="col">고객명</th>
                     <th scope="col">업체명</th>
                     <th scope="col">계약가격</th>
                     <th scope="col">송금가격</th>
                     <th scope="col">날짜</th>
                     <th scope="col">송금</th>
                   </tr>
                 </thead>
                 <tbody>
                 <c:forEach var="dto" items="${list }" varStatus="status" >
                   <tr>
                     <td>1</td>
                     <td>${dto.moName }</td>
                     <td>${dto.coName }</td>
                     <td>${dto.moconfirmPrice }원</td>
                     <td>${dto.goMoney }원<br>(수수료 10%)</td>
                     <td>${dto.mctDate }</td>
                     <td><button type="button" class="btn btn-success" onclick="remit('${dto.coIdx}','${dto.coName }','${dto.goMoney }','${status.count }','${dto.moIdx }')">송금하기</button>
                     <br><br><div>
                           <div class="bt" id="bankbook${status.count }"></div>
                           <div class="bt" id="coname${status.count }"></div>
                           <div class="bt" id="account${status.count }"></div>
                           <div class="bt" id="gomoney${status.count }"></div>
                           <div class="bt" id="button${status.count }"></div>
                        </div></td>
                  </tr>
                  </c:forEach>
                 </tbody>
               </table>
                <!-- 페이징 -->
                 <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate" style="margin-left:27%;">
                 <ul class="pagination">
                 <li class="paginate_button page-item previous disabled" id="dataTable_previous">
                 <a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">이전</a>
                 </li><li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a>
                 </li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a>
                 </li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a>
                 </li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a>
                 </li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a>
                 </li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a>
                 </li><li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">다음</a>
                 </li>
                 </ul>
                 </div>
                 </div>
                 
         </div>
      </div>   
        <%@include file="../footer.jsp" %>
</body>
</html>