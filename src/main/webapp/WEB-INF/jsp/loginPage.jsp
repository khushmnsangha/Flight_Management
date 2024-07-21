<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                        background-size: cover;
                        background-position: center;
                        background-repeat: no-repeat;
                        height: 100vh;
                        margin: 0;
                        display: flex;
                        align-items: center;
                        justify-content: center;
                    }

                    .login-box {
                        border: 20px solid transparent;
                        padding: 30px;
                        border-radius: 10px;
                        box-shadow: 0 0 30px rgba(0, 0, 0, 0.8);
                        background-color: rgba(255, 255, 255, 0.85);
                    }

                    .login-box h2 {
                        margin-bottom: 20px;
                        font-weight: bold;
                    }

                    .form-label {
                        font-weight: bold;
                        font-size: 18px;
                    }

                    .btn-primary {
                        padding: 10px 20px;
                        font-size: 16px;
                    }

                    .text-center {
                        margin-top: 15px;
                    }

                    a {
                        color: #007bff;
                    }

                    a:hover {
                        text-decoration: underline;
                    }
                </style>
            </head>

            <body>
                <c:url value="/login" var="login" />

                <div class="login-box">
                    <h2 class="text-center">Login</h2>
                    <form:form action="${login}" method="post">
                        <div class="form-group">
                            <label for="username" class="form-label">Enter User Id:</label>
                            <input type="text" class="form-control" id="username" name="username"
                                placeholder="Enter username" required />
                        </div>
                        <div class="form-group">
                            <label for="password" class="form-label">Enter Password:</label>
                            <input type="password" class="form-control" id="password" name="password"
                                placeholder="Enter password" required />
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </form:form>
                    <h5 class="text-center mt-3">
                        Don't have an account? <a href="/register">Sign up</a>
                    </h5>
                </div>

                <!-- Bootstrap JS and dependencies -->
                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            </body>

            </html>