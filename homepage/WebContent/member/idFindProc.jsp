<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi_member.jsp" %> 
<jsp:useBean id="dao" class="member.MemberDAO"/>
<%
    String mname = request.getParameter("mname");
		String email = request.getParameter("email");
    
		String id = dao.idFind(mname, email);

  if(id==""){
    out.print("아이디를 찾을 수 없습니다.");
  
  }else{
	    out.print("당신의 아이디는 "+id+" 입니다.");
  }
 %> 
