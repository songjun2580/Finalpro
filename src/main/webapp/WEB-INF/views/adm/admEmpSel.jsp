<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>adm_header</title>
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
table{
   margin:0px auto;
   width:200px;
}
h2{
   text-align:center;
}
.search{
   text-align:right;
}
.rewrite{
   text-align:center;
}
.page{
   text-align:center;
   padding:20px;
   
}



#nav1 ul {
	list-style: none;
	position: relative;
	display: inline-table;
}

#nav1 ul ul {
	display: none;
}

#nav1 ul li:hover > ul {
	display: block;
}

#nav1 ul li {
	float: left;
	width: 200px;
	text-align: left;
	border-bottom: 3px solid #2ecc71; 
}
	
#nav1 ul li:hover {
	background: #f2f2f2;
}

#nav1 ul li a {
	display: block; 
	padding: 15px 10px;
	color: #2a2a2a; 
	text-decoration: none;
}
					
#nav1 ul ul {
	border-radius: 0px; 
	padding: 0;
	position: absolute; 
	top: 100%;
}

#nav1 ul ul li {
	float: none;
	border-bottom: 2px solid #eaeaea; 
	position: relative;
}

#nav1 ul ul li a {
	padding: 15px 10px;
	color: #838383;
}	

#nav1 ul ul li a:hover {
	background: #47d583;
	color: #fff;
}	

#down-triangle {
	float: right;
	width: 0; 
 	height: 0;
 	margin-top: 10px;
 	border-top: 10px solid #2ecc71;
  border-left: 10px solid transparent; 
  border-right: 10px solid transparent; 
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
            <h1>사원관리</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
<div class="row">
  <div class="col-2">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <a class="nav-link active" id="v-pills-home-ta" data-toggle="dropdown" href="admEmpSel.do" role="button" aria-haspopup="true">사원관리</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="">실적 조회</a>
      <a class="dropdown-item" href="admEmpSel.jsp">파견사원 조회</a>
    </div>
      <a class="nav-link" id="v-pills-home-tab"  href="admEmpUpd.do" role="tab" aria-controls="v-pills-home">사원 수정</a>
      <a class="nav-link" id="v-pills-home-tab"  href="admEmpAdd.do" role="tab" aria-controls="v-pills-home">사원 등록</a>
    </div>
  </div>
  <div class="col-9">
      <div class="card bg-secondary text-white shadow" style="margin-bottom: 8%;">
         <div class="card-body">
                         파견사원 관리
         </div>
      </div>
      
   <div style="margin-bottom: 6%;">
   <nav style="float: left;" id="nav1">
	<ul id="nav1 ul">
		<li><a href="#">분류하기<div id="down-triangle"></div></a>
			<ul>
				<li ><a href="#">실적순</a></li>
				<li ><a href="#">직급순</a></li>
				<li ><a href="#">연봉순</a></li>
			</ul>
		</li>
	 </ul>
	</nav>
	  <div class="search" align="left">
	         <input type="text" name="search">
	         <input type="button" value="검색">
	  </div>
  </div>



   <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>선택</th>
                      <th>사원번호</th>
                      <th>사원이름</th>
                      <th>직급</th>
                      <th>연봉</th>
                      <th>입사날짜</th>
                      <th>월간실적</th>
                      <th>전체실적</th>
                      <th>사원파견</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td align="center"><input type="checkbox" style="height: 40px;width: 25px;"></td>
                      <td align="center" >1</td>
                      <td>홍길동</td>
                      <td>사원</td>
                      <td>30,000,000</td>
                      <td>2020-03-01</td>
                      <td>1건</td>
                      <td><a class="btn btn-primary" href="#" role="button">조회</a></td>
                      <td><a class="btn btn-primary" href="#" role="button">고객매칭</a></td>
                    </tr>
                    <tr>
                      <td align="center"><input type="checkbox" style="height: 40px;width: 25px;"></td>
                      <td align="center" >2</td>
                      <td>도우너</td>
                      <td>대리</td>
                      <td>40,000,000</td>
                      <td>2019-03-01</td>
                      <td>35건</td>
                      <td><a class="btn btn-primary" href="#" role="button">조회</a></td>
                      <td><a class="btn btn-primary" href="#" role="button">고객매칭</a></td>
                    </tr>
                  </tbody>
                </table>
                
                <div align="right" style="margin-top: 3%;">
				      <button type="button" class="btn btn-secondary">사원정보 수정	</button>
				    </div>
                <div style="margin-top: 5%;" align="center">
                	
                     <!-- 페이징 -->
			     <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate" align="center">
			     <ul class="pagination" style="margin-left: 33%;">
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
</div>
  <%@include file="../footer.jsp" %>
</body>
</html>