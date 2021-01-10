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
        <th scope="col">Exercise title</th>
        <th scope="col">User</th>
        <th scope="col">Solutions</th>
    </tr>

    <c:forEach items="${exercises}" var="exercise">
        <tr>
            <td>${exercise.getTitle()}</td>
        </tr>
    </c:forEach>

    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.getUserName()}</td>
        </tr>
    </c:forEach>


    <c:forEach items="${solutions}" var="solution">
        <tr>
            <td>${solution.created}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
