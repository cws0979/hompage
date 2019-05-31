<%@ page contentType="text/html; charset=UTF-8" %> 
<%
String windowOpen="open";

Cookie[] cookies = request.getCookies();
Cookie cookie = null;

if(cookies != null){
	for(int i =0; i<cookies.length;i++){
		cookie = cookies[i];
		
		if(cookie.getName().equals("windowOpen")){
			windowOpen = cookie.getValue();
		}
	}
}
%>
 
<!DOCTYPE html> 
<html> 
<head>
  <title>Insert title here</title>
<link href="../css/style.css" rel="Stylesheet" type="text/css">

<script type="text/javascript">

window.noload = function(){
  
  notice();
}
function notice(){
  if("<%=windowOpen%>"=="close"){
    
  }else{
    var url = "./notice.jsp";
    window.open(url,'공지사항',"left=10,top=40,width=450,height=300");
  }
}
function openNotice(){
  var url = "./notice.jsp";
  window.open(url, '공지사항', "left=10,top=40,width=450,height=300"); 
}
</script>  
</head>
<body> 
<jsp:include page="/menu/top.jsp"/>
  <div class='content'> 
    오늘은 수요일 입니다.<br></br> 
    평창 동계 올림픽 오늘 발표! 17:00 투표 시작 <br></br> 
    국민 여러분 많은 성원 바랍니다.<br></br> 
    [<a href='javascript:openNotice()'>새로운 공지사항 보기</a>] 
</div>

</body> 
</html>  