<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employees</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            color: #333;
        }

        .editButton, .deleteButton {
            background-color: #008CBA;
            border: none;
            color: white;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin-right: 5px;
            border-radius: 5px;
        }

        .editButton:hover, .deleteButton:hover {
            background-color: #006080;
        }

        .addButton {
            background-color: #44c767;
            border-radius: 16px;
            border: 1px solid #18ab29;
            display: inline-block;
            cursor: pointer;
            color: #ffffff;
            font-family: Arial;
            font-size: 14px;
            padding: 8px 16px;
            text-decoration: none;
            text-shadow: 0px 1px 0px #2f6627;
        }

        .addButton:hover {
            background-color: #5cbf2a;
        }

    </style>
</head>
<body>
    <h1>Employees</h1>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Employees</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Position</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="employee" items="${listEmployee}">
                <tr>
                    <td><c:out value="${employee.id}" /></td>
                    <td><c:out value="${employee.name}" /></td>
                    <td><c:out value="${employee.position}" /></td>
                    <td><c:out value="${employee.phone}" /></td>
                    <td>
                        <a href="<c:url value='/edit'><c:param name='id' value='${employee.id}'/></c:url>"
                           class="editButton">Edit</a>
                        <a href="<c:url value='/delete'><c:param name='id' value='${employee.id}'/></c:url>"
                           class="deleteButton">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="<%=request.getContextPath()%>/new" class="addButton">Add Employee</a>
    </div>
</body>
</html>