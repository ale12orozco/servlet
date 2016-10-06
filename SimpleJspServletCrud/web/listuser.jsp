<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link type="text/css" href="CSS/cssgg.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=ABeeZee' rel='stylesheet' type='text/css'>

<title>Show All Users</title>
</head>
<body class="fondo">
<div class="contenido">
    <table border=1>
        <thead>
            <tr>
                <th>User Name</th>
                <th>Email</th>
                <th>Registration Date</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.uname}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><fmt:formatDate pattern="dd MMM,yyyy" value="${user.registeredon}" /></td>
                    <td class="button "><a class="blanco"  href="UserController?action=edit&userId=<c:out value="${user.uname}"/>">Update</a></td>
                    <td class="button "><a  class="blanco" href="UserController?action=delete&userId=<c:out value="${user.uname}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a class="button " href="UserController?action=insert">Add User</a></p>
	</div>
</body>
</html>
