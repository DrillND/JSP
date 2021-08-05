<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch10.bean.TestBean" %>
<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="testBean" class="ch10.bean.TestBean">
     <jsp:setProperty name="testBean" property="name"/>
</jsp:useBean>

<%
	String name = request.getParameter("name");
	TestBean tBean = new TestBean();
	tBean.setName(name);
%>


<h2>자바빈을 사용하는 JSP페이지</h2>

입력된 이름은 1 <%= tBean.getName() %> 입니다. <br><br>
입력된 이름은 2 <jsp:getProperty name="testBean" property="name" /> 입니다.