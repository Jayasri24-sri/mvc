<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employees - Employee Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/syncfusion/ej2/material.css">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/syncfusion/ej2/ej2.min.js"></script>
</head>
<body>
<h2>Employee List</h2>
<p><a href="${pageContext.request.contextPath}/employees/new">Add New Employee</a></p>
<div id="Grid"></div>

<script>
    $(document).ready(function() {
        var employees = ${employees}; // Assuming this is passed from the controller

        var grid = new ej.grids.Grid({
            dataSource: employees,
            columns: [
                { field: 'id', headerText: 'ID', width: 120, textAlign: 'Right' },
                { field: 'name', headerText: 'Name', width: 150 },
                { field: 'email', headerText: 'Email', width: 200 },
                { field: 'department', headerText: 'Department', width: 150 },
                { field: 'status', headerText: 'Status', width: 100 }
            ],
            allowPaging: true,
            pageSettings: { pageSize: 10 },
            allowSorting: true,
            allowFiltering: true
        });
        grid.appendTo('#Grid');
    });
</script>
</body>
</html>
