<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Route Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('/images/flights.jpg');
           
            background-color: #f8f9fa;
        }
        .form-container {
            margin-top: 50px;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-title {
            margin-bottom: 20px;
        }
        .btn-custom {
            width: 100px;
            margin: 5px;
        }
        .home-link {
            margin-top: 20px;
            display: block;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 form-container">
                <h3 class="text-center form-title">Route Form</h3>
                <form:form action="/route" method="post" modelAttribute="routeRecord">
                    <form:hidden path="routeId"/>
                    <div class="form-group">
                        <label for="sourceAirportCode">Enter Source City:</label>
                        <form:input path="sourceAirportCode" class="form-control" id="sourceAirportCode"/>
                    </div>
                    <div class="form-group">
                        <label for="destinationAirportCode">Enter Destination City:</label>
                        <form:input path="destinationAirportCode" class="form-control" id="destinationAirportCode"/>
                    </div>
                    <div class="form-group">
                        <label for="fair">Enter Route Fair:</label>
                        <form:input path="fair" class="form-control" id="fair"/>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary btn-custom">Submit</button>
                        <button type="reset" class="btn btn-secondary btn-custom">Reset</button>
                    </div>
                </form:form>
                <a href="index" class="home-link btn btn-primary">Back to Home</a>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
