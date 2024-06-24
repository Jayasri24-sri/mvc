<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - Employee Management System</title>
</head>
<body>
<h2>Login</h2>
<form action="${pageContext.request.contextPath}/login" method="post">
    <div>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username">
    </div>
    <div>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password">
    </div>
    <div>
        <button type="submit">Login</button>
    </div>
</form>
</body>
</html>