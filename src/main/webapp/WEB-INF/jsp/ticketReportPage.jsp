<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Ticket Report</title>
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
            <style>
                body {
                    background-image: url('/images/flights.jpg');
                    background-size: cover;
                    background-position: center;
                    background-repeat: no-repeat;
                    color: #333;
                }

                .container {
                    background-color: rgba(255, 255, 255, 0.9);
                    border-radius: 15px;
                    padding: 20px;
                    margin-top: 50px;
                }

                .card {
                    margin-top: 20px;
                    border: none;
                    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
                }

                h2 {
                    font-weight: bold;
                    margin-bottom: 20px;
                }

                table {
                    margin-top: 10px;
                    border-radius: 8px;
                    overflow: hidden;
                }

                th {
                    background-color: #007bff;
                    color: white;
                }

                .btn-primary {
                    background-color: #007bff;
                    border: none;
                }

                .btn-primary:hover {
                    background-color: #0056b3;
                }
            </style>
        </head>

        <body>
            <div class="container">
                <h2 class="text-center mt-4">Ticket Report</h2>
                <div class="card">
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Ticket Number</th>
                                    <th>Carrier Name</th>
                                    <th>Flight Number</th>
                                    <th>Total Amount</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="ticket" items="${ticketList}">
                                    <tr>
                                        <td>${ticket.ticketNumber}</td>
                                        <td>${ticket.carrierName}</td>
                                        <td>${ticket.flightNumber}</td>
                                        <td>${ticket.totalAmount}</td>
                                        <td>
                                            <a href="/showTicket/${ticket.ticketNumber}"
                                                class="btn btn-info btn-sm">Enquire</a>
                                        </td>
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