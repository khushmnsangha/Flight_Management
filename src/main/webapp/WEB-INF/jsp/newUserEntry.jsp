<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New User Register</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    
    <style>
        body {
            font-family: 'Arial', sans-serif;
          background-image: url('/images/flights.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        .card {
            margin-top: 10%;
            background: rgba(255, 255, 255, 0.8);
        }
        .form-label {
            font-weight: bold;
             font-size:18px;
        }
    </style>
    <script type="text/javascript">
        function passwordCheck() {
            var pass1 = document.getElementById("pass1").value;
            var pass2 = document.getElementById("pass2").value;

            if (pass1.length < 6) {
                alert("Password Must Be minimum 6 characters long");
            } else if (pass1 === pass2) {
                document.getElementById("registrationForm").submit();
            } else {
                alert("Passwords Not Matched");
            }
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg">
                <div class="card-body">
                    <h2 class="text-center mb-4 font-weight-bold">Sign up now</h2>
                    <form:form id="registrationForm" action="/register" method="post" modelAttribute="userRecord">
                        <div class="form-group">
                            <label for="username" class="form-label">Enter New User Id:</label>
                            <form:input path="username" id="username" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="type" class="form-label">Select User's Type:</label>
                            <form:input list="types" id="type" path="type" class="form-control" />
                            <datalist id="types">
                                <option value="Customer">
                                <option value="Admin">
                            </datalist>
                        </div>
                        <div class="form-group">
                            <label for="pass1" class="form-label">Enter New Password:</label>
                            <form:input type="password" id="pass1" path="password" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="pass2" class="form-label">Re-type Password:</label>
                            <input type="password" id="pass2" class="form-control" />
                        </div>
                        <button type="button" class="btn btn-primary btn-block" onclick="passwordCheck()">Submit</button>
                        <button type="reset" class="btn btn-secondary btn-block">Reset</button>
                    </form:form>
                    <h5 class="text-center mt-3 font-weight-bold">
                    Already have an account? <a href="/loginpage">Login</a>
                </h5>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
