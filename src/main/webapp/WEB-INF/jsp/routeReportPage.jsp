<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <title>All Routes</title>
            <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-image: url('/images/flights.jpg');
                    /* Path to your background image */
                    background-size: cover;
                    background-position: center;
                    background-repeat: no-repeat;
                    background-color: #f8f9fa;
                    color: #333;
                    /* Default text color for better readability */
                    min-height: 100vh;
                    margin: 0;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                }

                .table-container {
                    margin-top: 50px;
                    background-color: rgba(255, 255, 255, 0.95);
                    padding: 30px;
                    border-radius: 10px;
                    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
                    width: 100%;
                    max-width: 800px;
                    /* Limit width for larger screens */
                }

                .home-link {
                    margin-top: 20px;
                    display: block;
                    text-align: center;
                    color: #007bff;
                    /* Primary link color */
                    text-decoration: none;
                    font-weight: bold;
                    padding: 10px;
                    border-radius: 5px;
                    background-color: #fff;
                    /* Background for better visibility */
                    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                    transition: background-color 0.3s, color 0.3s;
                    /* Smooth transition */
                }

                .home-link:hover {
                    color: #0056b3;
                    /* Darker shade on hover */
                    background-color: #f0f0f0;
                    /* Lighter shade on hover */
                }
            </style>
        </head>

        <body>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 table-container text-center">
                        <h1 class="text-center"><u><i>All Routes</i></u></h1>
                        <table class="table table-bordered">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Route-id</th>
                                    <th>Source Code</th>
                                    <th>Destination Code</th>
                                    <th>Route Fare</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${routeList}" var="route">
                                    <tr>
                                        <td>${route.routeId}</td>
                                        <td>${route.sourceAirportCode}</td>
                                        <td>${route.destinationAirportCode}</td>
                                        <td>${route.fare}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <a href="index" class="home-link btn btn-primary">Back to Home</a>
                    </div>
                </div>
            </div>
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        </body>

        </html>