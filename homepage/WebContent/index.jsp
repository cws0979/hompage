<%@ page contentType="text/html; charset=UTF-8" %> 
<% request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html> 
<html> 
<head>
  <title>기본페이지</title>
  <meta charset="utf-8">
 <style type="text/css">
 body{
 background-image: url("cover.jpg");
background-size: cover;
 }
 </style>
</head>
<body> 

 <div class="container" style="text-align:center">
      <h3>My HomePage</h3>
    <jsp:include page="/menu/top.jsp"></jsp:include>
  </div>



</body> 
</html>

