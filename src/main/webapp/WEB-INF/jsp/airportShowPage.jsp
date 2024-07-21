<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Airport Details</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-image: url('/images/flights.jpg');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                height: 100vh;
                margin: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                color: #fff;
                text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
            }

            .details-container {
                background-color: rgba(255, 255, 255, 0.9);
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
                width: 100%;
                max-width: 600px;
            }

            .details-title {
                margin-bottom: 30px;
                color: #333;
                text-shadow: none;
            }

            .table {
                margin-bottom: 0;
            }

            .table td {
                background-color: #f8f9fa;
            }

            .home-link {
                margin-top: 20px;
                display: inline-block;
                color: #ffffff;
                text-decoration: none;
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
                <div class="col-md-8 details-container text-center">
                    <h1 class="details-title"><i>Airport Details</i></h1>
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <td><strong>Airport Code:</strong></td>
                                <td>${airport.airportCode}</td>
                            </tr>
                            <tr>
                                <td><strong>Airport Location:</strong></td>
                                <td>${airport.airportLocation}</td>
                            </tr>
                        </tbody>
                    </table>
                    <a href="/airports" class="home-link btn btn-primary">Back to Home</a>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>

    </html>