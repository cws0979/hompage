<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi_member.jsp" %>
<jsp:useBean id="dao" class="member.MemberDAO"/>
<%
    String id = request.getParameter("id");
    String passwd = request.getParameter("passwd");
    Map map = new HashMap();
    map.put("id",id);
    map.put("pw",passwd);
    
    boolean flag = dao.loginCheck(map);
    String grade = null;//회원등급
    if(flag){
    	
    	grade = dao.getGrade(id);
    	session.setAttribute("id", id);
    	session.setAttribute("grade", grade);
    	
    }
 
%> 

<!DOCTYPE html> 
<html> 
<head>
  <title>로그인처리</title>
  <meta charset="utf-8">
</head>
<body> 
<jsp:include page="/menu/top.jsp"/>
<div class="container">
<h2 class="col-sm-offset-2 col-sm-10">로그인처리</h2>
<div class="well well-lg">
<%
   if(flag){
	   out.print("로그인이 되었습니다.");
	   // ---------------------------------------------- 
       // Cookie 저장, Checkbox는 선택하지 않으면 null 임 
       // ---------------------------------------------- 
    	Cookie cookie = null;
       
    	 String c_id = request.getParameter("c_id");//loginForm에서 체크박스에 체크된 value값을 가저온 파라메타
    	 
    	 if(c_id !=null){
    		 cookie = new Cookie("c_id","Y");
    		 cookie.setMaxAge(120);
    		 response.addCookie(cookie);
    		 
    		 cookie = new Cookie("c_id_val",id);
    		 cookie.setMaxAge(120);
    		 response.addCookie(cookie);
    		 
    	 }else{
    		 cookie = new Cookie("c_id","");
    		 cookie.setMaxAge(0);
    		 response.addCookie(cookie);
    		 
    		 cookie = new Cookie("c_id_val","");
    		 cookie.setMaxAge(0);
    		 response.addCookie(cookie);
    		 
    	 }
       //-------------------------------------------------
   }else{
	   out.print("아이디 또는 비밀번호를 잘못 입력하셨거나 <br>");
	   out.print("회원이 아닙니다. 회원가입 하세요.");
   }

%>
</div>
<button class="btn" onclick="location.href='../index.jsp'">홈</button>
<button class="btn" onclick="history.back()">다시시도</button>


</div>
</body> 
</html> 