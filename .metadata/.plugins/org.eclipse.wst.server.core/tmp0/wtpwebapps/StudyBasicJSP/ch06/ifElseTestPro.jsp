<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<html>
<head>
<title>
Hello JSP!!
</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");%>

<%
  String name = request.getParameter("name");
int age = 0;

%>
html 영역


<% String st2 = "자바영역"; %>


<%
try {
  age = Integer.parseInt(request.getParameter("age"));
} catch(NumberFormatException e) {
	out.print("숫자가 잘못되었습니다.<br>");
}

  if (age >= 20){ //나이가 20세 이상일 경우
	//out.println("<b>"+ name + " </b> 님의 나이는 20세 이상입니다.");
 %>
 
 <b> <%= name %> </b> 님의 나이는 20세 이상입니다. 
<% 
  } 
  else{//나이가 20세 미만일 경우

	//out.println("<b>"+ name + " </b> 님은 미성년입니다.");
%>
 <b> <%= name %> </b> 님은 미성년자입니다. 
<%	
  }
%>
</body>
</html>