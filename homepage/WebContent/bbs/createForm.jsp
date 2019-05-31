<%@ page contentType="text/html; charset=UTF-8" %> 
<%@include file="/ssi/ssi_bbs.jsp" %>
<jsp:useBean id="dao" class="bbs.BbsDAO"></jsp:useBean>
<jsp:useBean id="dto" class="bbs.BbsDTO"></jsp:useBean>
<jsp:setProperty name="dto" property="*"/>

<!DOCTYPE html> 
<html> 
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
	
</head>
<style>
body{
background-image: url("pure-css-snow-animation.gif");
}
</style>
<body> 

<jsp:include page="/menu/top.jsp"/>
<div class="container">

<h1 class="col-sm-offset-2 col-sm-10">게시판 생성</h1>

<form class="form-horizontal" action="createProc.jsp" method="post">
<div class="form-group">
  <label class="control-label col-sm-2" for="wname">작성자</label>
  <div class="col-sm-6">
  <input type="text" name="wname" id="wname" class="form-control">
  </div>
</div>

<div class="form-group">
  <label class="control-label col-sm-2" for="title">제목</label>
  <div class="col-sm-6">
  <input type="text" name="title" id="title" class="form-control">
  </div>
</div>

<div class="form-group">
  <label class="control-label col-sm-2" for="content" >내용</label>
  <div class="col-sm-6">
  <textarea rows="12" cols="5" id="content" name="content" class="form-control"></textarea>
</div>
</div>

<div class="form-group">
  <label class="control-label col-sm-2" for="passwd">비밀번호</label>
  <div class="col-sm-6">
  <input type="password" name="passwd" id="passwd" class="form-control">
  </div>
</div>


<div class="form-group">
         <div class="col-sm-offset-2 col-sm-5">
         <button class="btn">등록</button>
         <button type="reset" class="btn">취소</button>
         </div>
      </div>
  

</form>
</div>
</body> 
</html> 
