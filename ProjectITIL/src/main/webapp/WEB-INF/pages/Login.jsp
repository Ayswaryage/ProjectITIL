<!DOCTYPE html>
<html lang="en">
<head>
  <title>Employee Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <hr>
  <h2 align="center">Login</h2>
  <hr>
  <form action="/loginForm" method="get" modelAttribute="employee">
    <div class="form-group">
      <label for="employeeName">Employee Name:</label>
      <input type="text" class="form-control" id="employeeName" placeholder="Enter your Name" name="employeeName">
    </div>
    <div class="form-group">
      <label for="employeePassword">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>
