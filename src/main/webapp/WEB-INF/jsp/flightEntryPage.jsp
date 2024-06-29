<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Flight Form</title>
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
            <div class="col-md-8 form-container">
                <h3 class="text-center form-title">Flight Form</h3>
                <form:form action="/flight" method="post" modelAttribute="flightRecord">
                    <div class="form-group">
                        <label for="flightNumber">Enter Flight ID:</label>
                        <form:input path="flightNumber" class="form-control" id="flightNumber"/>
                    </div>
                    <div class="form-group">
                        <label for="carrierName">Enter Airlines Name:</label>
                        <form:input path="carrierName" class="form-control" id="carrierName"/>
                    </div>
                    <div class="form-group">
                        <label for="routeId">Select Route ID:</label>
                        <form:input list="routes" path="routeId" class="form-control" id="routeId"/>
                    </div>
                    <datalist id="routes">
                        <c:forEach items="${routeList}" var="route">
                            <option value="${route}"></option>
                        </c:forEach>
                    </datalist>
                    <div class="form-group">
                        <label for="seatCapacity">Enter Seat Capacity:</label>
                        <form:input path="seatCapacity" class="form-control" id="seatCapacity"/>
                    </div>
                    <div class="form-group">
                        <label for="departure">Enter Departure Time:</label>
                        <form:input path="departure" class="form-control" id="departure"/>
                    </div>
                    <div class="form-group">
                        <label for="arrival">Enter Arrival Time:</label>
                        <form:input path="arrival" class="form-control" id="arrival"/>
                    </div>
                    <div class="form-group">
                        <label for="dtime">Enter Return Flight Departure Time:</label>
                        <input type="text" name="dtime" class="form-control" id="dtime"/>
                    </div>
                    <div class="form-group">
                        <label for="atime">Enter Return Flight Arrival Time:</label>
                        <input type="text" name="atime" class="form-control" id="atime"/>
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
