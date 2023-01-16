<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGOUT</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(int i=0;i<cookies.length; i++){
			
				String cookieValue = cookies[i].getValue();
		
				if(cookieValue.equals("tiger")){
					out.print(cookieValue + "님 로그아웃 하셨습니다.");
					cookies[i].setMaxAge(0); // 쿠키 유효시간 0 -> 로그아웃 /쿠키는 삭제메소드가 없음
					response.addCookie(cookies[i]);
				}
		}
			}else {
			response.sendRedirect("login.jsp");
			}
			
			
			response.sendRedirect("cookieTest.jsp");
			int a= 200;
			int b= 100;
			if(a>100){
			
			}
			System.out.println(b);
	%>
	
		

</body>
</html>