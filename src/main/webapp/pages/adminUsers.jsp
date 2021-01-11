<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 11.01.21
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin Users</title>
    <jsp:include page="../header.jsp"/>
</head>
<h2>Users list</h2>
<a href="${pageContext.request.contextPath}/addNewUser">Add new user</a>
<body>
    <table>
        <tr>
            <th style="background: darkcyan" scope="col">User name</th>
            <th style="background: darkcyan" scope="col">Actions</th>
        </tr>

        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.getUserName()}</td>
                <td><a href="${pageContext.request.contextPath}/editUser?userId=${user.getId()}">Edit</a>    <a href="${pageContext.request.contextPath}/deleteUser?userId=${user.getId()}">Delete</a> </td>
            </tr>
        </c:forEach>
    </table>
</body>
<jsp:include page="footer.jsp"/>
</html>
