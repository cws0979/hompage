<%@ page contentType="text/html; charset=UTF-8" %> 
<% 
    String id = request.getParameter("id");
    String oldfile = request.getParameter("oldfile");
%>
<!DOCTYPE html> 
<html> 
<head>
  <title>회원탈퇴</title>
  <meta charset="utf-8">
</head>
<body> 
<jsp:include page="/menu/top.jsp"/>
<div class="container">
<h2 class="col-sm-offset-2 col-sm-10">회원탈퇴</h2>
<br><br>
<form class="form-horizontal" 
      action="deleteProc.jsp"
      method="post"
      >

  <input type="hidden" name="id" value="<%=id %>">
  <input type="hidden" name="oldfile" value="<%=oldfile %>">
  
  <div class="form-group">
    <label class="col-sm-offset-1 col-sm-7">
    탈퇴를 하시면 더이상 컨텐트를 제공받을 수 없습니다<br>
    그래도 탈퇴를 원하시면 아래 탈퇴버튼을 클릭하세요  
    </label>
    
  </div>
  <br>   
   <div class="form-group">
   <div class="col-sm-offset-2 col-sm-5">
    <button class="btn">탈퇴</button>
    <button type="reset" class="btn">취소</button>
   </div>
 </div>
</form>
</div>
</body> 
</html> 