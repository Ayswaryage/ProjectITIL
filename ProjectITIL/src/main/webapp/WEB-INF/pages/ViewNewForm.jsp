
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Details</title>
</head>
<body>

<h2 align="center">Tickets That You are Going To Assign</h2>
<hr size="4" color="gray"/>
<table cellpadding="15" border="1" style="background-color: #ffffcc;" align="center">
<tr>
        <td><b>Ticket ID</b></td>
          <td><b>Employee Id</b></td>
        <td><b>Ticket Description</b></td>
        <td><b>Ticket Type</b></td>
        <td><b>Team Member</b></td>
        <td><b>Status</b></td>
   </tr>

    <c:forEach items="${newTicketList}" var="employee">
        <tr>
            <td><c:out value="${employee.ticketId}"/></td>
            <td><c:out value="${employee.employeeId}"/></td>
            <td><c:out value="${employee.description}"/></td>
            <td><c:out value="${employee.ticketType}"/></td>
            <td><c:out value="${employee.teamMember}"/></td>
            
            <td>
                 <%--   <a  c:out href="/@{'/assign/' + ${employee.ticketId}}">Assign </a>  --%>
                   <a  href="/assign">Assign </a>
             </td>  
        </tr>
    </c:forEach>
</table>
</body>
</html>