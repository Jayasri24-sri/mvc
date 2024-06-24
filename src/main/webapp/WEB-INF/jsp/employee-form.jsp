<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Form - Employee Management System</title>
</head>
<body>
<h2>Employee Form</h2>
<form action="${pageContext.request.contextPath}/employees" method="post">
    <input type="hidden" name="id" value="${employee.id}">
    <div>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${employee.name}">
    </div>
    <div>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${employee.email}">
    </div>
    <div>
        <label for="department">Department:</label>
        <input type="text" id="department" name="department" value="${employee.department}">
    </div>
    <div>
        <label for="status">Status:</label>
        <select id="status" name="status">
            <option value="Active" ${employee.status == 'Active' ? 'selected' : ''}>Active</option>
            <option value="Inactive" ${employee.status == 'Inactive' ? 'selected' : ''}>Inactive</option>
        </select>
    </div>
    <div>
        <button type="submit">Save</button>
    </div>
</form>
</body>
</html>
