<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>
body {
	width: 80%;
	margin: 0px auto;
}	
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
</style>
</head>
<body>

<%@include file="comp_Header.jsp" %>
    <div class="row">
      <div class="col-2">
      <ul class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <li class="nav-item" role="presentation">
          <a class="nav-link" id="pills-mypage-tab" data-toggle="pill" href="compMypage.do" role="tab" aria-selected="true">마이페이지</a>
        </li>
        <li class="nav-item" role="presentation">
          <a class="nav-link active" id="pills-record-tab" data-toggle="pill" href="empRecord.do" role="tab" aria-selected="false">실적조회</a>
        </li>
        <li class="nav-item" role="presentation">
          <a class="nav-link" data-toggle="pill" href="companyBlog.do" aria-selected="false">업체블로그</a>
        </li>
         <li class="nav-item" role="presentation">
          <a class="nav-link" id="pills-bid-tab" data-toggle="pill" href="empBid.do" role="tab" aria-selected="false">이사견적서조회</a>
        </li>
      </ul>
   </div> 
   <!-- 실적조회 -->
      <div>
       <div class="alert alert-secondary" role="alert">
         실 적 관 리 
      </div>
      <div>
      
      <div>
      <table border="0" cellspacing="0" cellpadding="0" class="__se_tbl_review" style="text-align: center;" >
      <tbody>
      <tr>
      <td style="top; width: 183px; height: 51px;" class="se2_editarea pcol2 m-tcol-c" rowspan="1" colspan="2" align="center">
         <button type="button" class="btn btn-secondary btn-lg" onclick="javascript:location.href='compRecord.do'">&nbsp;실적 현황 내용 보기&nbsp;</button>
         </td>
            <td style=width: 184px; height: 51px;" class="se2_editarea pcol2 m-tcol-c" rowspan="1" colspan="2" align="center">
            <button type="button" class="btn btn-secondary btn-lg" onclick="javascript:location.href='compTotalPrice.do'">&nbsp;총 실적 금액 확인하기&nbsp;</button>
         </td>
            
         </tr>
      <tr>
         <td colspan="12" style="font-size: 0px; width: 743px; height: 5px;">&nbsp;</td>
      </tr>
         </tbody>
         </table>
         <p/>
         <p/><!-- Tasks Card Example -->
         <div style="margin-left:10%;">
            <div class="col-xl-3 col-md-6 mb-4" style="float: left;">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1"><a href="emp_Contracting.jsp">진행중인 계약</a></div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">5건</div>
                        </div>
                        <div class="col">
                          <div class="progress progress-sm mr-2">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
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
            <div class="col-xl-3 col-md-6 mb-4" style="float: left;">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">총 거래 완료</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">10건</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Annual) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4" style="display: inline-block; margin-bottom: 7%;" >
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">총거래금액</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div> 
         </div>
      </div>
   </div>   
   </div>      
  <%@include file="../footer.jsp" %>
</body>
</html>