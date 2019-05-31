<%@ page contentType="text/html; charset=UTF-8" %> 
<%@include file="/ssi/ssi_bbs.jsp" %>
<jsp:useBean id="dao" class="bbs.BbsDAO"></jsp:useBean>

<%
int bbsno = Integer.parseInt(request.getParameter("bbsno"));
BbsDTO dto = dao.read(bbsno);
dao.upViewcnt(bbsno);
%>


<!DOCTYPE html> 
<html> 
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  
  <script type="text/javascript">
  function listM(){
    var url = "list.jsp";
    url += "?col=<%=request.getParameter("col")%>";
    url += "&word=<%=request.getParameter("word")%>";
    url += "&nowPage=<%=request.getParameter("nowPage")%>";
    
    location.href = url;
  }
  
  function updateM(){
      var url = "updateForm.jsp";
      url += "?bbsno=<%=dto.getBbsno() %>"; 
      url += "&col=<%=request.getParameter("col")%>";
      url += "&word=<%=request.getParameter("word")%>";
      url += "&nowPage=<%=request.getParameter("nowPage")%>";
      
                                        // ?뒤는 파라메터 값   -> 무언가 입력하고 싶을 때, 작성한다.
      location.href=url;
      
    }
    
    function deleteM(){
        var url = "deleteForm.jsp";
        url += "?bbsno=<%=dto.getBbsno()%>";
        url += "&col=<%=request.getParameter("col")%>";
        url += "&word=<%=request.getParameter("word")%>";
        url += "&nowPage=<%=request.getParameter("nowPage")%>";
                                          // ?뒤는 파라메터 값   -> 무언가 입력하고 싶을 때, 작성한다.
        location.href=url;
    }
    
    function replyM(){
        var url = "replyForm.jsp";
        	url += "?bbsno=<%=dto.getBbsno()%>"; 
                                         
        location.href=url;
    }
  </script>
</head>
<body> 

<jsp:include page="/menu/top.jsp"/>
<div class="container">

<h2> 게시판 내용 </h2>
<div class="panel panel-default">

<div class="panel-heading">작성자</div>
<div class="panel-body"><%=dto.getWname() %></div>

<div class="panel-heading">제목</div>
<div class="panel-body"><%=dto.getTitle() %></div>


<div class="panel-heading">내용</div>
<div class="panel-body"><%=dto.getContent() %></div>


<div class="panel-heading">조회수</div>
<div class="panel-body"><%=dto.getViewcnt()%></div>


<div class="panel-heading">날짜</div>
<div class="panel-body"><%=dto.getWdate() %></div>



</div>

<button class="btn" type="button" onclick="location.href='createForm.jsp'"> 등록  </button>
<button class="btn" type="button" onclick="updateM()"> 수정  </button>
<button class="btn" type="button" onclick="deleteM()"> 삭제  </button>
<button class="btn" type="button" onclick="replyM()"> 답변  </button>
<button class="btn" type="button" onclick="listM()"> 목록  </button>

</div>
</body> 
</html> 
