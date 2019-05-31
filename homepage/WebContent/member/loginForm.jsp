<%@ page contentType="text/html; charset=UTF-8" %> 
<% 
/*-----쿠키설정 내용시작----------------------*/
String c_id = "";//jsp변수이름
String c_id_val = "";

Cookie[] cookies = request.getCookies();
Cookie cookie = null;

if(cookies !=null){
	for(int i = 0;i<cookies.length;i++){
		cookie = cookies[i];
		
		if(cookie.getName().equals("c_id")){//쿠키변수 이름
			c_id = cookie.getValue();
			
		}else if(cookie.getName().equals("c_id_val")){
			c_id_val=cookie.getValue();
		}
	}
}

/*-----쿠키설정 내용 끝----------------------*/
%>
<!DOCTYPE html> 
<html> 
<head>
  <title>로그인처리</title>
  <meta charset="utf-8">
  <script type="text/javascript">
  function idFind(){
			var url = "idFindForm.jsp";
			
			wr = window.open(url,"아이디찾기","width=500,height=500");
			wr.moveTo((window.screen.width-500)/2,(window.screen.height-500)/2);
	}
  
  
  function pwFind(){
		var url = "pwFindForm.jsp";
		
		wr = window.open(url,"비밀번호찾기","width=500,height=500");
		wr.moveTo((window.screen.width-500)/2,(window.screen.height-500)/2);
	}

  </script>
  <style type="text/css">
  #container{
  color:white;
  }
  </style>
</head>
<body> 
<jsp:include page="/menu/top.jsp"/>
<div class="container">
<h1 class="col-sm-offset-2 col-sm-10">로그인</h1>
<form class="form-horizontal" 
      action="<%=request.getContextPath() %>/member/loginProc.jsp"
      method="post"
      >

  <div class="form-group">
    <label class="control-label col-sm-2" for="id">아이디</label>
    <div class="col-sm-4">
      <input type="text" name="id" id="id" class="form-control" 
      required="required" value='<%=c_id_val %>'>
     <% 
       if (c_id.equals("Y")){  // id 저장 상태라면 
       %>   
         <input type='checkbox' name='c_id' value='Y' checked='checked'> ID 저장 
       <% 
       }else{ %> 
         <input type='checkbox' name='c_id' value='Y' > ID 저장 
       <% 
       }    
      %>
      
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="passwd">비밀번호</label>
    <div class="col-sm-4">
      <input type="password" name="passwd" id="passwd" class="form-control" required="required">
    </div>
  </div>
  
   <div class="form-group">
   <div class="col-sm-offset-2 col-sm-7">
    <button class="btn">로그인</button>
    <button type="button" class="btn" onclick="location.href='agreement.jsp'">회원가입</button>
    <button type="button" class="btn" onclick="idFind()">아이디 찾기</button>
    <button type="button" class="btn" onclick="pwFind()">비밀번호 찾기</button>
   </div>
 </div>
</form>
</div>
</body> 
</html> 