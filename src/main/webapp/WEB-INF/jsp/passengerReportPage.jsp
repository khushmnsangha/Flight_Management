<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Passenger Report</title>
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
            <style>
                body {
                    background-image: url('/images/flights.jpg');
                    background-size: cover;
                    background-position: center;
                    color: #343a40;
                }

                .container {
                    background-color: rgba(255, 255, 255, 0.8);
                    border-radius: 10px;
                    padding: 20px;
                    margin-top: 50px;
                }

                .card {
                    margin-top: 20px;
                    border: none;
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                }

                h2 {
                    font-family: 'Arial', sans-serif;
                    font-weight: bold;
                }

                table {
                    border-radius: 8px;
                    overflow: hidden;
                }

                th {
                    background-color: #007bff;
                    color: white;
                }

                th,
                td {
                    padding: 12px;
                    text-align: center;
                }

                a.btn {
                    background-color: #007bff;
                    color: white;
                }

                a.btn:hover {
                    background-color: #0056b3;
                }
            </style>
        </head>

        <body>
            <div class="container">
                <h2 class="text-center mt-4">Passenger Report</h2>
                <div class="card">
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Passenger Name</th>
                                    <th>Passenger Age</th>
                                    <th>Ticket Number</th>
                                    <th>Flight Number</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="passenger" items="${passengerList}">
                                    <tr>
                                        <td>${passenger.passengerName}</td>
                                        <td>${passenger.passengerAge}</td>
                                        <td>${passenger.ticket.ticketNumber}</td>
                                        <td>${passenger.ticket.flightNumber}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <a href="/index" class="btn btn-primary mt-4">Back to Home</a>
            </div>

            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        </body>

        </html>