<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<%@include file="adm_header.jsp" %>
  <!-- Page Header -->
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
 	<div class="row">
		<div class="col-2">
		<ul class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" id="pills-mypage-tab" data-toggle="pill" href="admStatus.do" role="tab" aria-selected="true">실적현황보기</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link active" id="pills-record-tab" data-toggle="pill" href="admProfit.do" role="tab" aria-selected="false">총 금액 실적</a>
		  </li>
		</ul>
	</div> 
	<!-- 실적조회 -->
		<div class="col-9">
		 <div class="alert alert-secondary" role="alert">
			실 적 관 리 
		</div>
		<div>
		
		<div>
			<p/>
			<p/><!-- Tasks Card Example -->
			
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
	</div>			
	  <%@include file="../footer.jsp" %>
</body>
</html>