<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Flight Page</title>
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
                            <form id="flightForm" action="/searchflight" method="post">
                                <div class="form-group">
                                    <label for="fromCity">Enter Source Airport:</label>
                                    <input type="text" class="form-control" id="fromCity" name="from_city" required>
                                </div>
                                <div class="form-group">
                                    <label for="toCity">Enter Destination Airport:</label>
                                    <input type="text" class="form-control" id="toCity" name="to_city" required>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary btn-custom">Submit</button>
                                </div>
                            </form>
                            <a href="index" class="home-link">Back to Home</a>
                        </div>
                    </div>
                </div>
                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            </body>

            </html>