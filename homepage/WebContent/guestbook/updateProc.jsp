<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file = "/ssi/ssi_guest.jsp" %>
<jsp:useBean id = "dao" class="guestbook.GuestDAO" />
<jsp:useBean id = "dto" class="guestbook.GuestDTO" />
<jsp:setProperty name="dto" property="*" />
<%
boolean flag = dao.update(dto);
%>
 
<!DOCTYPE html> 
<html> 
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<jsp:include page="/menu/top.jsp"></jsp:include>
<fieldset>
<legend>방명록 수정확인</legend>
<% if(flag){
  out.print("방명록을 수정했습니다.");
}else{
out.print("방명록 수정을 실패했습니다.");
}
%>
</fieldset>
<button type = "button" onclick="location.href='createform.jsp'">다시 등록</button>
<button type = "button" onclick="location.href='list.jsp'">목록</button>
 
</div>
</body> 
</html> 