<%@ page contentType="text/html; charset=UTF-8" %> 

<%
String root = request.getContextPath();
String id = (String)session.getAttribute("id");
String grade = (String)session.getAttribute("grade");

String str = "기본페이지 입니다.";
if(id!=null &&  !grade.equals("A")){
	str = "안녕하세요"+id+"님!!";
	
}else if(id!=null &&  grade.equals("A")){
	str = "관리자페이지 입니다.";
}
%>
<!DOCTYPE html> 
<html> 
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body> 
<div class="container">
  
   
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" >
      <span class="glyphicon glyphicon-heart-empty"></span>
      </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">게시판<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="<%=root%>/bbs/createform.jsp">생성</a></li>
          <li><a href="<%=root%>/bbs/list.jsp">목록</a></li>
          
        </ul>
      </li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">메모<span class="caret"></span></a>
      <ul class="dropdown-menu">
          <li><a href="<%=root%>/memov3/createform.jsp">메모 생성</a></li>
          <li><a href="<%=root%>/memov3/list.jsp">메모 목록</a></li>
        
        </ul>
      </li>
      
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">팀<span class="caret"></span></a>
      <ul class="dropdown-menu">
          <li><a href="<%=root%>/team/createform.jsp">팀 생성</a></li>
          <li><a href="<%=root%>/team/list.jsp">팀 목록</a></li>
        
        </ul>
      </li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">방명록<span class="caret"></span></a>
      <ul class="dropdown-menu">
          <li><a href="<%=root%>/guestbook/createform.jsp">방명록 생성</a></li>
          <li><a href="<%=root%>/guestbook/list.jsp">방명록 목록</a></li>
       
        </ul>
      </li>
      <% if(id==null){ %>
    	   <li><a href="<%=root%>/member/agreement.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="member/loginForm.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        
    	 <% }else{ %>
    	 <li><a href="<%=root%>/member/read.jsp">나의 정보</a></li>
    	 <li><a href="<%=root%>/member/updateForm.jsp">정보 수정</a></li>
    	 <li><a href="<%=root%>/member/logout.jsp">로그아웃</a></li>
                <%} %>
                <%if(id!=null && grade.equals("A")) %>
                <li><a href="<%=root %>/admin/list.jsp">회원목록</a></li>
      
    </ul>
      </div>
</nav>
</div>

</body> 
</html> 
