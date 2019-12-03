<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="post"  action="teamMembers" modelAttribute="teamMembers">
<tr>
    <td align='center'>Team Members:</td>
    
     <td> <select name="teamMembers"> 
<c:forEach var="choic" items="${requestScope.teamMembers}">
<option value="${choic.value}">${choic.key} </option>
</c:forEach>
</select>
</td> 

<%--  <td><form:select path="teamMember" items="${teamMembers}" /></td>  --%>
<td><input type="submit" value="Submit"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
</form:form>
</body>
</html>