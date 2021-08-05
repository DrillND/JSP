<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"   %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 연결설정 -->
<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
// 	String jdbcUrl="jdbc:mysql://localhost:3306/basicjsp";
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 그대로 사용
  
// 	Class.forName("com.mysql.jdbc.Driver");
	//			  
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
// 	conn = DriverManager.getConnection(jdbcUrl,"jspid" ,"jsppass" );
	conn = DriverManager.getConnection(url,"sqldb" ,"1234" );
	 
	 
	 
	 
// 	 String sql= "select * from member";
	 String sql= "select * from CAR_T";
	 //pstmt=conn.prepareStatement(sql);
	
	  Statement stmt=conn.createStatement();
	 
	 rs = stmt.executeQuery(sql);
%>
  
<table>
<tr>
  	<td width="100">아이디</td>
  	<td width="100">패스워드</td>
  	<td width="100">이름</td>
  	<td width="250">가입일자</td>
</tr>
<%
	while(rs.next()) {
%>
<tr>
	<td width="100"><%= rs.getString("custno") %></td>
  	<td width="100"><%= rs.getString("custname") %></td>
  	<td width="100"><%= rs.getString("phone") %></td>
  	<td width="250"><%= rs.getString("address")%></td>
</tr>
<%-- <tr>
	<td width="100"><%= rs.getString("id") %></td>
  	<td width="100"><%= rs.getString("passwd") %></td>
  	<td width="100"><%= rs.getString("name") %></td>
  	<td width="250"><%= rs.getTimestamp("reg_date").toString()%></td>
</tr> --%>
<%
} // end of while
%>	

</table>
</body>
</html>