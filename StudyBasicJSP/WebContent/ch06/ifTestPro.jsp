<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>입력받은 숫자 비교</title>
</head>
<body>
  <h2>입력받은 숫자가 10보다 작거나 같은지 비교</h2>
  
  <%
    String strNumber = request.getParameter("number");
    int number = Integer.parseInt(strNumber);

    if (number <= 10) {
  %>
      입력받은 숫자는 <%=number %> 입니다.
  <%}    
  
  	else {%>
  		입력받은 숫자 <%=number %> 은(는) 10보다 큽니다.
  	<%} %>
  	
</body>
</html>