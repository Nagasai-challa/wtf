<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>

    <h2>Login</h2>

    <%
        // Static username and password for validation
        String validUsername = "sai";
        String validPassword = "1234";

        // Check if form is submitted
        if (request.getMethod().equalsIgnoreCase("post")) {
            // Get username and password from the submitted form
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            // Check if the entered credentials are valid
            if (validUsername.equals(username) && validPassword.equals(password)) {
    %>
                <h2>Login Successful</h2>
    <%
            } else {
    %>
                <h2>Login Failed. Please check your username and password.</h2>
    <%
            }
        }
    %>

    <form action="" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>

        <input type="submit" value="Login">
    </form>

</body>
</html>
