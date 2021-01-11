<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 09.01.21
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style>
        <%@include file="css/style.css" %>
    </style>
</head>
<body>
<div><a href="${pageContext.request.contextPath}/pages/index.jsp">Main page</a>
<a href="${pageContext.request.contextPath}/pages/group.jsp">Group</a>
<a href="${pageContext.request.contextPath}/pages/adminPanel.jsp">Admin panel</a>
</div>
</body>
</html>
