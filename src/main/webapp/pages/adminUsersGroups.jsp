<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 11.01.21
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin users group</title>
    <jsp:include page="../header.jsp"/>
</head>
<body>
<h2>Users groups</h2>
<p><a href="${pageContext.request.contextPath}/addNewGroup">Add new</a> </p>
<table>
    <tr>
        <th style="background: darkcyan" scope="col">Group name</th>
        <th style="background: darkcyan" scope="col">Actions</th>
    </tr>
    <c:forEach items="${groupList}" var="group">
   <tr>
       <td>${group.getName()}</td>
       <td><a href="${pageContext.request.contextPath}/editGroup?groupId=${group.getId()}">Edit</a>    <a href="${pageContext.request.contextPath}/deleteGroup?groupId=${group.getId()}">Delete</a> </td>
   </tr>
    </c:forEach>
   </table>
</body>
<jsp:include page="footer.jsp"/>
</html>
