<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <title>All Airports</title>
                <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
                <style>
                    body {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        background-image: url('/images/flights.jpg');
                        background-size: cover;
                        background-position: center;
                        background-repeat: no-repeat;
                        color: #fff;
                        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
                        margin: 0;
                        padding: 0;
                    }

                    .navbar {
                        background-color: rgba(17, 0, 253, 0.9);
                        padding: 10px;
                        position: fixed;
                        width: 100%;
                        z-index: 1000;
                    }

                    .navbar a {
                        color: white;
                        padding: 14px 20px;
                        text-decoration: none;
                    }

                    .table-container {
                        background-color: rgba(255, 255, 255, 0.9);
                        padding: 30px;
                        border-radius: 10px;
                        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
                        margin-top: 80px;
                        /* Adjust margin for fixed navbar */
                    }

                    .table-container h1 {
                        color: #333;
                        text-shadow: none;
                        margin-bottom: 30px;
                    }

                    .table thead th {
                        background-color: #007bff;
                        color: #fff;
                    }

                    .btn-info {
                        background-color: #007bff;
                        border-color: #007bff;
                    }

                    .btn-info:hover {
                        background-color: #0056b3;
                        border-color: #0056b3;
                    }

                    .home-link {
                        margin-top: 20px;
                        display: inline-block;
                        color: #ffffff;
                    }

                    .home-link:hover {
                        color: #ffffff;
                        text-decoration: none;
                    }
                </style>
            </head>

            <body>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-8 table-container text-center">
                            <h1 class="text-center"><u><i>All Airports</i></u></h1>
                            <table class="table table-bordered">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Airport Code</th>
                                        <th>Airport Location</th>
                                        <th>Enquire</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${airportList}" var="airport">
                                        <tr>
                                            <td>${airport.airportCode}</td>
                                            <td>${airport.airportLocation}</td>
                                            <td><a href="/airport/${airport.airportCode}"
                                                    class="btn btn-info">Enquire</a></td>
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