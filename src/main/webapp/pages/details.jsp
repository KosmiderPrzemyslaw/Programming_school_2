<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 11.01.21
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../header.jsp"/>
</head>
<body>
<p><a href="">Back</a> </p>
<h2>Solution details:</h2>
<c:out value="${details}"/>
</body>
<jsp:include page="footer.jsp"/>
</html>
