<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="/ssi/ssi_bbs.jsp"%>
<jsp:useBean id="dao" class="bbs.BbsDAO" />


<%
int bbsno = Integer.parseInt(request.getParameter("bbsno"));
String passwd = request.getParameter("passwd");
	Map map = new HashMap();
	map.put("bbsno", bbsno);
	map.put("passwd", passwd);

	boolean flag = false;
	boolean pflag = dao.passCheck(map);
	
	if (pflag) {
		flag = dao.delete(bbsno);
	}
%>

<!DOCTYPE html>
<html>
<head>
<title>게시판 삭제</title>
<meta charset="utf-8">
<script type="text/javascript">
function listM() {
  var url = "list.jsp";
  url+="?col=<%=request.getParameter("col")%>"; //JSP변수
  url+="&word=<%=request.getParameter("word")%>";
  url+="&nowPage=<%=request.getParameter("nowPage")%>";
  
  location.href = url;
}
</script>

</head>
<body>
	<jsp:include page="/menu/top.jsp" />
	<div class="container">
		<div class="well well-lg">
			<%
				if (!pflag) {
					out.print("잘못된 비밀번호 입니다.");
				} else if(flag) {
					out.print("글 삭제을 성공 했습니다.");
				}else{
					out.print("글 삭제을 실패 했습니다.");
				}
			%>
		</div>
<% if(!pflag){ %>
<button class="btn" onclick = "history.back()">다시시도</button>
<%} %>
		<button class="btn" onclick = "listM()">목록</button>
		<button type="reset" class="btn">취소</button>
	</div>

</body>
</html>
