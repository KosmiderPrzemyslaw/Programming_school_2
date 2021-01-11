<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 09.01.21
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<h2>Admin panel</h2>
<p><a href="${pageContext.request.contextPath}/adminUsersGroups">Users group</a></p>
<p><a href="${pageContext.request.contextPath}/adminExercises">Exercises</a></p>
<p><a href="${pageContext.request.contextPath}/adminUsers">Users</a></p>
</body>
</html>
