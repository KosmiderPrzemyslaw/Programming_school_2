<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 11.01.21
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add new user</title>
    <jsp:include page="../header.jsp"/>
</head>
<h2>Add new user</h2>
<body>
<form action="${pageContext.request.contextPath}/addNewUser" method="post">
    <p><label>Name:
        <input type="text" name="name">
    </label></p>
    <p><label>email:
        <input type="text" name="email">
    </label></p>
    <p><label>password:
        <input type="text" name="password">
    </label></p>
    <p><label>User group:<br>
        <c:forEach items="${groups}" var="group">
            <input type="radio" name="userGroup" value="${group.id}"> ${group.name}
        </c:forEach>
    </label></p>
    <input type="submit">
</form>
</body>
<jsp:include page="footer.jsp"/>
</html>
