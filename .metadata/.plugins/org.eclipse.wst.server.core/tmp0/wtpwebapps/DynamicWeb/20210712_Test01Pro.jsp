<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
<h2>입력한 결과</h2>
<%request.setCharacterEncoding("utf-8");%>
<%
	String first = request.getParameter("first");
	String second = request.getParameter("second");
	String cal = request.getParameter("cal");
	
	int num1 = Integer.parseInt(first);
	int num2 = Integer.parseInt(second);
	

%>
결과 : <%=first+second%><br>


</body>
</html>