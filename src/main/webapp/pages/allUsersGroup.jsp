<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 11.01.21
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All users from group</title>
    <jsp:include page="../header.jsp"/>
</head>
<body>
<h2><c:out value="${group.getName()}"/> group users: </h2>
<table>
    <tr>
        <th style="background: darkcyan" scope="col">Name</th>
        <th style="background: darkcyan" scope="col">Actions</th>
    </tr>
    <c:forEach items="${allUsers}" var="user">
        <tr>
            <td>${user.getUserName()}</td>
            <td><a href="${pageContext.request.contextPath}/userDetails?userId=${user.getId()}">Details</a></td>
        </tr>
    </c:forEach>
    <tr>

    </tr>
</table>
</body>
<jsp:include page="footer.jsp"/>
</html>
