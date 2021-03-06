<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 11.01.21
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../header.jsp"/>
</head>
<body>
<h2>Group list</h2>
<table>
    <tr>
        <th style="background: darkcyan" scope="col">Group name</th>
        <th style="background: darkcyan" scope="col">Actions</th>
    </tr>

    <c:forEach items="${allGroups}" var="group">
        <tr>
            <td>${group.getName()}</td>
            <td><a href="${pageContext.request.contextPath}/allUsers?groupId=${group.getId()}" >Users</a></td>
        </tr>
    </c:forEach>
</table>
</body>
<jsp:include page="footer.jsp"/>
</html>
