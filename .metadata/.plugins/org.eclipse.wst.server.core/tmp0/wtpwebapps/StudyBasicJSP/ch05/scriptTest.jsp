<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch05.Cat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Script 예제</title>
</head>
<body>
  <h2>선언문, 스크립트릿, 표현식의 쓰임을 알아보는 예제</h2>
  <%! //선언문 - 전역변수 선언
      String str = "<h1>전역변수 입니다</h1>" + "<style>p {color:red;}</style>";
  %>
  
  <%! //선언문 - 메소드 선언
      String getStr(){
	    return str;
      } 
  	  Cat k = new Cat();
  %>
  
  <br>
	
  
  <% //스크립트릿
     String str2 = "<p>지역변수 입니다.</p>";
  %>
<%= k.say() %>
<%--    스크립트릿에서 선언한 변수 str2는 <%=str2 %> <br> <!-- 표현식 --> --%>
   선언문에서 선언한 변수 str1은 <%=getStr()%> <!-- 표현식 -->
	<%= str2 %>
	
</body>
</html>