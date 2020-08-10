<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
    <script>
    $(function(){
        var IMP = window.IMP;
        IMP.init('iamport');
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : '이사만해 청소도해',
            amount : ${param.moconfirmPrice},
            buyer_name : '${param.moName}',
            buyer_tel : '${param.moTel}',
            buyer_addr : '${param.moSaddr}',
            buyer_postcode : '123-456',
            //m_redirect_url : 'http://www.naver.com'
        }, function(rsp) {
            if ( rsp.success ) {
                
                jQuery.ajax({
                    url: "/payments/complete", 
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                        
                    }
                }).done(function(data) {
                    
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        alert('결제가 완료되었습니다');
                    } else {
                        
                    }
                });
                
                location.href='../finalproject/order/paySuccess.jsp?moconfirmPrice=${param.moconfirmPrice}&moIdx=${param.moIdx}';
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '\n에러내용 : ' + rsp.error_msg;
                self.close();
                alert(msg);
            }
        });
        
    });
    </script>
 
</body>
</html>