<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Ticket Confirmation</title>
                <!-- Bootstrap CSS -->
                <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
                <style>
                    body {
                        background-color: #f8f9fa;
                    }

                    .card {
                        border-radius: 10px;
                        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
                    }

                    .card-title {
                        margin-bottom: 1rem;
                        font-weight: bold;
                        font-size: 1.25rem;
                    }

                    .btn-primary,
                    .btn-danger {
                        border-radius: 5px;
                        padding: 10px 20px;
                        font-size: 1em;
                    }

                    .btn-danger {
                        margin-top: 20px;
                    }
                </style>
            </head>

            <body>
                <div class="container mt-5">
                    <h2 class="mb-4 text-center">Ticket Confirmation</h2>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Booking Details</h5>
                            <p class="card-text"><strong>Ticket Number:</strong> ${ticketRecord.ticketNumber}</p>
                            <p class="card-text"><strong>Carrier Name:</strong> ${ticketRecord.carrierName}</p>
                            <p class="card-text"><strong>Flight Number:</strong> ${ticketRecord.flightNumber}</p>
                            <p class="card-text"><strong>Route ID:</strong> ${ticketRecord.routeId}</p>
                            <p class="card-text"><strong>Total Amount:</strong> ${ticketRecord.totalAmount}</p>

                            <h5 class="card-title">Passenger Details</h5>
                            <div class="table-responsive">
                                <table class="table table-striped table-hover">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Passenger Name</th>
                                            <th>Age</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="passenger" items="${passengerList}">
                                            <tr>
                                                <td>${passenger.passengerName}</td>
                                                <td>${passenger.passengerAge}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                            <!-- Cancel Ticket Form -->
                            <form:form action="/cancelTicket/${ticketRecord.ticketNumber}" method="post"
                                modelAttribute="ticketRecord">
                                <input type="hidden" name="ticketNumber" value="${ticketRecord.ticketNumber}" />
                                <button type="submit" class="btn btn-danger">Cancel Ticket</button>
                            </form:form>
                        </div>
                    </div>
                    <a href="/index" class="btn btn-primary mt-4">Back to Home</a>
                </div>

                <!-- Bootstrap JS, Popper.js, and jQuery -->
                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            </body>

            </html>