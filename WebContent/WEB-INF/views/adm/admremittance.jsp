<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>관리자 송금페이지</title>
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
.col-6{
    margin:0px auto;
}
th,td{
	text-align:center;
}

</style>
</head>
<body>
  <!-- Page Header -->
  <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>송금관리</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  
    <div class="row">
    <div class="col-1">
       <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
       </div>
    </div>
    
    <div class="col-lg-10 mb-4">
        <div class="card bg-secondary text-white shadow" style="margin-top: 10px;">
            <div class="card-body" style="text-align: center;font-size: 30px;">
               송금 하기
                <div class="text-white-50 small"></div>
             </div>
        </div>
       <form name="admRemittance" action="remittance.do">
   <div style="margin-top: 6%;">
     <div class="search" align="center">
     <span style="width: 150px; padding-right: 8%;">관리자 계좌 총금액</span>
         <input type="text" name="search" value="${admBankbook}" style="text-align:right">원
         <hr>
     </div>
  </div>

       <div class="table-responsive" style="margin-top:2%;" align="center">
                <table class="table table-bordered" id="dataTable" style="width: 50%;">
                  <tbody>
                    <tr>
                      <th>업체명</th>
                      <td colspan="3"><input type="text" name="coIdx" value="${coName }" style="text-align:right"></td>
                    </tr>
                    <tr>
                      <th>업체계좌</th>
                      <td colspan="3"><input type="text" name="cobankbook" value="${account }" style="text-align:right"></td>
                    </tr>
                    <tr>
                      <th>금액</th>
                      <td colspan="3"><input type="text" placeholder="금액을 입력해주세요" name="money" value="${goMoney }" style="text-align:right">원</td>
                    </tr>
                    <tr>
                     
                  </tbody>
                </table>
            <div align="center" style="margin-top: 2%;">
                  <button type="submit" class="btn btn-primary" style="margin-right: 5%; width: 12%">송금하기</button>
              </div>       
              </div>
              </form>
     </div>
       <div class="col-1">
       <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
       </div>
    </div>
    </div>
  <hr>
</body>
</html>