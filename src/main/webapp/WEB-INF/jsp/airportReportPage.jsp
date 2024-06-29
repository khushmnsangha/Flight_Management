<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        .table-container {
            margin-top: 50px;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
                                <td><a href="/airport/${airport.airportCode}" class="btn btn-info">Enquire</a></td>
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
