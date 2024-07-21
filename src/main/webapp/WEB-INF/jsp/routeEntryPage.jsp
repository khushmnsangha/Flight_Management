<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                    <div class="col-md-6 form-container">
                        <h3 class="text-center form-title">Route Form</h3>
                        <form:form action="/route" method="post" modelAttribute="routeRecord">
                            <form:hidden path="routeId" />
                            <div class="form-group">
                                <label for="sourceAirportCode">Enter Source City:</label>
                                <form:input path="sourceAirportCode" class="form-control" id="sourceAirportCode" />
                            </div>
                            <div class="form-group">
                                <label for="destinationAirportCode">Enter Destination City:</label>
                                <form:input path="destinationAirportCode" class="form-control"
                                    id="destinationAirportCode" />
                            </div>
                            <div class="form-group">
                                <label for="fare">Enter Route Fare:</label>
                                <form:input path="fare" class="form-control" id="fare" />
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