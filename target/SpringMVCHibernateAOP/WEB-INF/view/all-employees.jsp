<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Employees</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        h2 {
            color: #444444;
            margin-top: 20px;
            margin-bottom: 10px;
        }

        table {
            border-collapse: collapse;
            margin-top: 20px;
            margin-bottom: 20px;
            width: 100%;
            border: 1px solid #dddddd;
            background-color: white;
        }

        th, td {
            text-align: left;
            padding: 8px;
            border: 1px solid #dddddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        input[type="button"] {
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #3e8e41;
        }

    </style>
</head>
<body>
<div class="container">
    <h2>All Employees</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operations</th>
        </tr>

        <c:forEach var="emp" items="${allEmps}">

            <c:url var = "updateButton" value="//updateInfo">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>

            <c:url var = "deleteButton" value="//deleteEmployee">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>
            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
                <td>
                    <input type="button" value="Update" onclick="window.location.href = '${updateButton}'">
                    <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'">
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <input type="button" value="Add"
    onclick="window.location.href = 'addNewEmployee'"/>
</div>
</body>
</html>
