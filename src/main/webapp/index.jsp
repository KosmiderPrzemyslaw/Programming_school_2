<%--
  Created by IntelliJ IDEA.
  User: przemysaw
  Date: 09.01.21
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Programming school Home Page</title>
</head>
<body>
<table>
<c:forEach items="${solutions}" var="solution" >
    <tr>
        <td>
            ${solution.description}
        </td>
        <td>
            ${solution.created}
        </td>
    </tr>
</c:forEach>
</table>
</body>
</html>
