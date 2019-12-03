<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/NewTickets" modelAttribute="tickets">  
EmployeeId :<input type="text" name="employeeId"><br>
<br>  
Description :<input type="text" name="description"><br>  
 <br>  
<input type="submit" value="Submit">
</form>  
</body>
</html>
