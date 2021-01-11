<%@ page import="java.util.ArrayList" %>
<%@ page import="pl.model.Solution" %><%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 09.01.21
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Programming school Home Page</title>
    <meta content="text/html" charset="UTF-8">

</head>
<body>
<jsp:include page="../header.jsp"/>
<h2>Last submissions</h2>
<table>
    <tr>
        <th style="background: darkcyan" scope="col">Exercise title</th>
        <th style="background: darkcyan" scope="col">Exercise id</th>
        <th style="background: darkcyan" scope="col">User id</th>
        <th style="background: darkcyan" scope="col">User name</th>
        <th style="background: darkcyan" scope="col">Solutions</th>
        <th style="background: darkcyan" scope="col">Actions</th>
    </tr>

    <c:forEach items="${resolvedTasks}" var="task">
        <tr>
            <td>${task.getExercise().getTitle()}</td>
            <td>${task.getExercise().getId()}</td>
            <td>${task.getUser().getId()}</td>
            <td>${task.getUser().getUserName()}</td>
            <td>${task.getSolution().getCreated()}</td>
            <td><a href="">Action</a> </td>
        </tr>
    </c:forEach>


</table>
</body>
</html>
