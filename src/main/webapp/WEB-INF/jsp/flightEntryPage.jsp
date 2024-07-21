<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                        background-size: cover;
                        background-position: center;
                        background-repeat: no-repeat;
                        background-color: #f8f9fa;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        min-height: 100vh;
                        margin: 0;
                        color: #000000;
                        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
                    }

                    .form-container {
                        padding: 30px;
                        background-color: rgba(255, 255, 255, 0.9);
                        border-radius: 10px;
                        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
                        width: 100%;
                        max-width: 600px;
                        margin: 50px 20px;
                    }

                    .form-title {
                        margin-bottom: 20px;
                        text-align: center;
                        font-weight: bold;
                        color: #333;
                        text-shadow: none;
                    }

                    .form-group {
                        margin-bottom: 15px;
                    }

                    .btn-custom {
                        width: 100px;
                        margin: 5px;
                        box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
                    }

                    .home-link {
                        margin-top: 20px;
                        display: block;
                        text-align: center;
                        color: #007bff;
                        text-decoration: none;
                        text-shadow: none;
                        box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
                        padding: 10px 0;
                        border-radius: 5px;
                        background-color: #fff;
                    }

                    .home-link:hover {
                        color: #0056b3;
                        text-decoration: none;
                        background-color: #f0f0f0;
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
                                    <form:input path="flightNumber" class="form-control" id="flightNumber" />
                                </div>
                                <div class="form-group">
                                    <label for="carrierName">Enter Airlines Name:</label>
                                    <form:input path="carrierName" class="form-control" id="carrierName" />
                                </div>
                                <div class="form-group">
                                    <label for="routeId">Select Route ID:</label>
                                    <form:input list="routes" path="routeId" class="form-control" id="routeId" />
                                    <datalist id="routes">
                                        <c:forEach items="${routeList}" var="route">
                                            <option value="${route}"></option>
                                        </c:forEach>
                                    </datalist>
                                </div>
                                <div class="form-group">
                                    <label for="seatCapacity">Enter Seat Capacity:</label>
                                    <form:input path="seatCapacity" class="form-control" id="seatCapacity" />
                                </div>
                                <!-- The departure and arrival fields map to the Flight object and are handled by @ModelAttribute -->
                                <div class="form-group">
                                    <label for="departure">Enter Departure Time:</label>
                                    <form:input path="departure" class="form-control" id="departure" />
                                </div>
                                <div class="form-group">
                                    <label for="arrival">Enter Arrival Time:</label>
                                    <form:input path="arrival" class="form-control" id="arrival" />
                                </div>
                                <form:hidden path="seatBooked" value="0" />
                                <!-- dtime and atime are not part of the Flight object and are handled separately by @RequestParam -->
                                <div class="form-group">
                                    <label for="dtime">Enter Return Flight Departure Time:</label>
                                    <input type="text" name="dtime" class="form-control" id="dtime" />
                                </div>
                                <div class="form-group">
                                    <label for="atime">Enter Return Flight Arrival Time:</label>
                                    <input type="text" name="atime" class="form-control" id="atime" />
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