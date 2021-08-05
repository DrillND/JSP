<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>더하기 프로그램</title>
</head>
<body>
<h2>숫자들을 입력하세요</h2>

<form method="get" action="20210712_Test01Pro.jsp">
	첫번째 숫자 : <input type = "text" name="first"><br><br>
	두번째 숫자 : <input type = "text" name="second"><br><br>
	연산 방법 : <select name ="cal">
			
			<option value="choice" selected="selected"> 선택하세요 </option> 
			<option value="+" selected>  +  </option>
			<option value="-" selected> - </option>
			<option value="*" selected> * </option>
			<option value="/" selected> / </option>
			
		  </select> <br><br>
		  
		  <input type="submit" value = "입력완료">



</form>


</body>
</html>