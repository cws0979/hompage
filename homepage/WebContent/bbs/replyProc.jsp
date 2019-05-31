<%@ page contentType="text/html; charset=UTF-8" %> 
<%@include file="/ssi/ssi_bbs.jsp" %>
<jsp:useBean id="dao" class="bbs.BbsDAO"></jsp:useBean>
<jsp:useBean id="dto" class="bbs.BbsDTO"></jsp:useBean>
<jsp:setProperty name="dto" property="*"/>
<%
Map map = new HashMap();
map.put("grpno",dto.getGrpno());
map.put("ansnum",dto.getAnsnum());


dao.upAnsnum(map);
boolean flag = dao.createReply(dto);
%>

<!DOCTYPE html> 
<html> 
<head>
  <title>게시판 답변처리</title>
  <meta charset="utf-8">
 
</head>
<body> 

<jsp:include page="/menu/top.jsp"/>
<div class="container">
<div class="well well-lg">
<%
if(flag){
out.print("글 답변을 성공했습니다.");
}else{
out.print("글 답변을 실패했습니다.");
}
%>

</div>

<button class="btn">등록</button>
<button type="reset" class="btn">취소</button>
</div>

</body> 
</html> 
