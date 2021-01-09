<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 09.01.21
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Programming school Home Page</title>
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>" type="text/css">
</head>
<body>
<table>
    <tr>
        <td>
            Date
        </td>
    </tr>
    <c:forEach items="${solutions}" var="solution">
        <tr>
            <td>
                    ${solution.getCreated()}
            </td>

        </tr>
    </c:forEach>
</table>

</body>
</html>
