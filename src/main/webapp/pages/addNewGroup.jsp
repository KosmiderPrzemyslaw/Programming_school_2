<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 11.01.21
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new group</title>
    <jsp:include page="../header.jsp"/>
</head>
<h2>Add group</h2>
<body>
<form action="${pageContext.request.contextPath}/addNewGroup" method="post">
    <label> Group name: </label>
    <label>
        <input type="text" name="groupName">
    </label>
    <input type="submit">
</form>
</body>
<jsp:include page="footer.jsp"/>
</html>