<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<body>--%>

<%--<h2>Employee Info</h2>--%>
<%--<br>--%>

<%--<form:form action="saveEmployee" modelAttribute="employee">--%>
<%--  Name <form:input path="name"/>--%>
<%--  <br><br>--%>
<%--  Surname <form:input path="surname"/>--%>
<%--  <br><br>--%>
<%--  Department <form:input path="department"/>--%>
<%--  <br><br>--%>
<%--  Salary <form:input path="salary"/>--%>
<%--  <br><br>--%>
<%--  <input type="submit" value="OK">--%>

<%--</form:form>--%>

<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Employee Info</title>
  <style>
    body {
      background-color: #f2f2f2;
      font-family: Arial, sans-serif;
      text-align: center;
    }

    h2 {
      color: #444444;
      margin-top: 20px;
      margin-bottom: 10px;
    }

    form {
      display: inline-block;
      border: 2px solid #dddddd;
      padding: 20px;
      background-color: white;
      border-radius: 5px;
    }

    label {
      font-size: 18px;
      margin-right: 10px;
    }

    input[type="text"] {
      font-size: 16px;
      padding: 8px;
      border: none;
      border-bottom: 1px solid #cccccc;
      margin-bottom: 10px;
      width: 250px;
    }

    input[type="submit"] {
      font-size: 16px;
      background-color: #4CAF50;
      color: white;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #3e8e41;
    }
  </style>
</head>
<body>
<h2>Employee Info</h2>
<form:form action="saveEmployee" modelAttribute="employee">

  <form:hidden path="id"/>
  <label for="name">Name:</label>
  <form:input path="name" id="name" />
  <br><br>
  <label for="surname">Surname:</label>
  <form:input path="surname" id="surname" />
  <br><br>
  <label for="department">Department:</label>
  <form:input path="department" id="department" />
  <br><br>
  <label for="salary">Salary:</label>
  <form:input path="salary" id="salary" />
  <br><br>
  <input type="submit" value="OK">
</form:form>
</body>
</html>
