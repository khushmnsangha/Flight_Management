<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <title>Flight Details</title>
            <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-image: url('/images/flights.jpg');
                    background-size: cover;
                    background-position: center;
                    background-repeat: no-repeat;
                    height: 100vh;
                    margin: 0;
                    background-color: #f8f9fa;
                    color: #333;
                    /* Default text color for readability */
                    display: flex;
                    justify-content: center;
                    align-items: center;
                }

                .details-container {
                    margin-top: 50px;
                    padding: 30px;
                    background-color: rgba(255, 255, 255, 0.95);
                    /* Slight transparency for a modern look */
                    border-radius: 10px;
                    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
                    /* Deeper shadow for a lifted effect */
                    width: 100%;
                    max-width: 800px;
                    /* Limit the width for larger screens */
                }

                .details-title {
                    margin-bottom: 20px;
                    font-size: 24px;
                    /* Larger title for emphasis */
                    text-align: center;
                    /* Centered title */
                    color: #007bff;
                    /* Primary color for the title */
                }

                .home-link {
                    margin-top: 20px;
                    display: block;
                    text-align: center;
                    color: #007bff;
                    /* Link color */
                    text-decoration: none;
                    font-weight: bold;
                    padding: 10px 15px;
                    border-radius: 5px;
                    background-color: #fff;
                    /* Background for visibility */
                    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                    /* Subtle shadow */
                    transition: background-color 0.3s, color 0.3s;
                    /* Smooth transition */
                }

                .home-link:hover {
                    color: #fff;
                    /* Change text color on hover */
                    background-color: #007bff;
                    /* Background color on hover */
                }
            </style>
        </head>

        <body>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 details-container text-center">
                        <h1 class="details-title"><i>Flight Details</i></h1>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Flight Number</th>
                                    <th>Airlines Name</th>
                                    <th>Route Id</th>
                                    <th>Departure</th>
                                    <th>Arrival</th>
                                    <th>Seat Available</th>
                                    <th>Fare</th>
                                    <th>Booking</th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach var="flight" items="${flightList}">
                                    <tr>
                                        <td>${flight.flightNumber}</td>
                                        <td>${flight.carrierName}</td>
                                        <td>${flight.routeId}</td>
                                        <td>${flight.departure}</td>
                                        <td>${flight.arrival}</td>
                                        <c:set var="seatAvailable" scope="session"
                                            value="${flight.seatCapacity-flight.seatBooked}" />
                                        <td>${seatAvailable}</td>
                                        <td>${fare}</td>
                                        <td><a href="/ticket/${flight.flightNumber}"
                                                class="btn btn-danger bookTicketLink"
                                                flightNumber="${flight.flightNumber}"
                                                carrierName="${flight.carrierName}" data-route-id="${flight.routeId}"
                                                data-departure="${flight.departure}"
                                                data-arrival="${flight.arrival}">Book Ticket</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <a href="/airports" class="home-link btn btn-primary">Back to Home</a>
                    </div>
                </div>
            </div>

            <!-- <script>
                document.addEventListener('DOMContentLoaded', function () {
                    // Select all links with the class 'bookTicketLink'
                    document.querySelectorAll('.bookTicketLink').forEach(function (link) {
                        link.addEventListener('click', function (e) {
                            e.preventDefault(); // Prevent the default link behavior

                            // Extract the 'id' from the href attribute
                            const href = this.getAttribute('href');
                            const id = href.split('/').pop(); // Assuming the 'id' is the last part of the URL

                            console.log(id); // For demonstration, shows the 'id' in the console

                            // You can now use the 'id' for further processing, such as making an AJAX request
                            // or redirecting the user to another page with this 'id' as part of the URL.
                        });
                    });
                });
            </script> -->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        </body>

        </html>