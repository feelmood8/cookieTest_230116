<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 환영</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	
	for(int i=0;i<cookies.length; i++){
		String cookieValue = cookies[i].getValue();
		String cookieName = cookies[i].getName();
		int cookieAge = cookies[i].getMaxAge();
		
		out.print(cookieValue + "<br>");
		out.print("------------------------------------<br>");
		out.print(cookieName + "<br>");
		out.print("------------------------------------<br>");
		out.print(cookieAge + "<br>");
		out.print("------------------------------------<br>");
		
		
	//	if(cookieValue.equals("tiger")){
	//		out.print(cookieValue + "님 안녕하세요");
	//	}
	}
%>
	<a href="logout.jsp">로그아웃</a>

</body>
</html>