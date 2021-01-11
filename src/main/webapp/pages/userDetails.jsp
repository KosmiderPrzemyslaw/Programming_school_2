<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 11.01.21
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../header.jsp"/>
    <a href="${pageContext.request.contextPath}/allGroups">Back</a>
</head>
<h2><c:out value="${user.getUserName()}"/> user details: </h2>
<p>Name: ${user.getUserName()}</p>
<p>Email: ${user.getEmail()}</p>
<b>Added tasks solutions: </b>
<body>
<table>
    <tr>
        <th style="background: darkcyan" scope="col">Exercise name</th>
        <th style="background: darkcyan" scope="col">Date</th>
        <th style="background: darkcyan" scope="col">Actions</th>
    </tr>
    <c:forEach items="${userSolutions}" var="solution">
        <tr>
            <td>${solution.getExerciseTitle(solution.getExerciseId())}</td>
            <td>${solution.getCreated()}</td>
            <td><a href="">Details</a></td>
        </tr>
    </c:forEach>
</table>
</body>
<jsp:include page="footer.jsp"/>
</html>
