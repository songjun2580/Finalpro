<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
window.alert('결제가 완료되었습니다');
self.close();
opener.location.href='../payInsert.do?moconfirmPrice=${param.moconfirmPrice}&moIdx=${param.moIdx}';
</script>
    