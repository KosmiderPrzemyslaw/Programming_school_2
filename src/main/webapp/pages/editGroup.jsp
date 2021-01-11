<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 11.01.21
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit group</title>
    <jsp:include page="../header.jsp"/>
</head>
<h2>Edit group <c:out value="${group.getName()}"/></h2>
<body>
<form action="${pageContext.request.contextPath}/editGroup" method="post">
    <label> Group name: </label>
    <label>
        <input type="text" name="groupName" id="${group.getId()}">
    </label>
    <input type="text" name="id" value="${group.getId()}" hidden>
    <input type="submit">
</form>
</body>
<jsp:include page="footer.jsp"/>
</html>
