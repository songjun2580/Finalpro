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

  <title>월간 실적</title>
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
</style>
</head>
<body>
<%@include file="emp_header.jsp" %>
   <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>월별 실적</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
    <div class="row">
    <div class="col-2">
	    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
	      <a class="nav-link" id="v-pills-home-tab"  href="emp_Year.do" role="tab" aria-controls="v-pills-home" aria-selected="false">연간 실적</a>
	      <a class="nav-link active" id="v-pills-home-tab"  href="emp_Month.do" role="tab" aria-controls="v-pills-home" aria-selected="ture">월간 실적</a>
	    <a class="nav-link" id="v-pills-profile-tab"  href="emp_Contracting.do" role="tab" aria-controls="v-pills-profile" aria-selected="true">진행중인 계약</a>
	    </div>
    </div>
    <div class="col-9">
    <div class="card bg-secondary text-white shadow">
	      <div class="card-body">
	                  7월달
	        <div class="text-white-50 small"></div>
	      </div>
      </div><br>
	<div class="row">

<!-- Tasks Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1"><a href="emp_Contracting.do">진행중인 계약</a></div>
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
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">거래 완료</div>
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
            <div class="col-xl-3 col-md-6 mb-4">
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
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>NO.</th>
                      <th>고객명</th>
                      <th>업체명</th>
                      <th>날짜</th>
                      <th>금액</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>김숙주</td>
                      <td>이사모아</td>
                      <td>2020.07.17</td>
                      <td>100,0000</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>이정민</td>
                      <td>24시이사</td>
                      <td>2020.04.20</td>
                      <td>120,0000</td>
                    </tr>
                    <tr>
                      <td>Ashton Cox</td>
                      <td>Junior Technical Author</td>
                      <td>San Francisco</td>
                      <td>66</td>
                      <td>2009/01/12</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
  
            <!-- ------------------------------------- -->
            
             
        <!-- /.container-fluid -->

     
      <!-- End of Main Content -->

      <!-- 페이징 -->
     <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate" style="margin-left: 30%;"><ul class="pagination">
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
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
            
            <!-- ------------------------------------------- -->
  <hr>
  <%@include file="../footer.jsp" %>
  </body>
  </html>