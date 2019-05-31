<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi_member.jsp" %> 
<jsp:useBean id="dao" class="member.MemberDAO"/>
<%
    String mname = request.getParameter("mname");
		String email = request.getParameter("email");
    
		String pw = dao.pwFind(mname, email);

  if(pw==""){
  
    out.print("비밀번호를를 찾을 수 없습니다.");
  
  }else{
	    out.print("당신의 비밀번호는 "+pw+" 입니다.");
  }

 %> 
