<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flight Reservation System</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
background-image: url('/images/flights.jpg');      
      background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Do not repeat the image */
            height: 100vh; /* Ensure body takes full height */
            margin: 0; /* Remove default margin */
        }
        .login-box {
            border: 20px solid transparent;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.8);
            margin-top: 150px;
            background-color: rgba(255, 255, 255, 0.75); /* Semi-transparent background color */
        }
        .login-box h3 {
            margin-bottom: 20px;
        }
        .form-label1 {
            font-weight: bold;
            font-size: 20px;
        }
    </style>
</head>
<body>
<c:url value="/login" var="login"/>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="login-box shadow-lg">
                <h2 class="text-center">Login</h2>
                <form:form action="${login}" method="post">
                    <div class="form-group">
                        <label for="username" class="form-label1">Enter User Id:</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Enter username"/>
                    </div>
                    <div class="form-group">
                        <label for="password" class="form-label1">Enter Password:</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter password"/>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                </form:form>
                <h5 class="text-center mt-3">
                    Don't have an account? <a href="/register">Sign up</a>
                </h5>
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
