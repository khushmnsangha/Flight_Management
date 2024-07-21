<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Book Ticket</title>
            <style>
                body {
                    font-family: 'Arial', sans-serif;
                    background-image: url('/images/flights.jpg');
                    background-size: cover;
                    background-position: center;
                    background-repeat: no-repeat;
                    height: 100vh;
                    margin: 0;
                    background-color: #f8f9fa;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    padding: 20px;
                }

                .details-container {
                    padding: 30px;
                    background-color: rgba(255, 255, 255, 0.9);
                    border-radius: 12px;
                    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
                    width: 90%;
                    max-width: 700px;
                    /* Adjusted width */
                    text-align: left;
                }

                h3 {
                    color: #007bff;
                    margin-bottom: 15px;
                    font-size: 1.4em;
                    /* Reduced font size */
                    text-align: center;
                }

                table {
                    width: 100%;
                    margin-bottom: 15px;
                    border-collapse: collapse;
                }

                td {
                    padding: 8px;
                    /* Reduced padding */
                    vertical-align: middle;
                }

                label {
                    font-weight: bold;
                    display: block;
                    margin-bottom: 6px;
                    /* Reduced margin */
                    font-size: 0.9em;
                    /* Smaller font size */
                }

                input[type="text"],
                input[type="date"] {
                    width: calc(100% - 20px);
                    padding: 8px;
                    /* Reduced padding */
                    border-radius: 6px;
                    border: 1px solid #ccc;
                    box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.1);
                    font-size: 0.9em;
                    /* Smaller font size */
                }

                input[disabled] {
                    background-color: #e9ecef;
                    cursor: not-allowed;
                }

                button {
                    background-color: #007bff;
                    color: white;
                    border: none;
                    border-radius: 6px;
                    padding: 10px;
                    /* Reduced padding */
                    cursor: pointer;
                    width: 100%;
                    font-size: 1em;
                    /* Adjusted font size */
                    transition: background-color 0.3s ease;
                    margin-top: 15px;
                    /* Adjusted margin */
                }

                button:hover {
                    background-color: #0056b3;
                }

                .required {
                    color: #dc3545;
                }
            </style>
        </head>

        <body>

            <div class="details-container" align="center">
                <form:form action="/ticket" method="post" modelAttribute="ticketRecord">
                    <form:hidden path="ticketNumber" />
                    <form:hidden path="flightNumber" />
                    <form:hidden path="carrierName" />
                    <input type="hidden" name="fromLocation" value="${route.sourceAirportCode}" />
                    <input type="hidden" name="toLocation" value="${route.destinationAirportCode}" />
                    <input type="hidden" name="routeId" value="${route.routeId}" />
                    <input type="hidden" name="totalAmount" value="${route.fare}" />
                    <h3>Flight Booking Details</h3>
                    <table>
                        <tr>
                            <td><label class="required">Ticket Number : </label>
                                <form:input path="ticketNumber" disabled="true" />
                            </td>
                            <td><label class="required">Flight Number : </label>
                                <form:input path="flightNumber" disabled="true" />
                            </td>
                            <td><label class="required">Airlines Name : </label>
                                <form:input path="carrierName" disabled="true" />
                            </td>
                        </tr>
                        <tr>
                            <td><label class="required">From : </label><input type="text"
                                    value="${route.sourceAirportCode}" disabled="true" /></td>
                            <td><label class="required">To : </label><input type="text"
                                    value="${route.destinationAirportCode}" disabled="true" /></td>
                            <td><label class="required">Fare : </label><input type="text" value="${route.fare}"
                                    disabled="true" /></td>
                        </tr>
                    </table>

                    <h3>Enter Passenger Details :</h3>
                    <table>
                        <tr>
                            <td>Name : <input type="text" name="name1" value="--" placeholder="John Doe"></td>
                            <td>Date Of Birth : <input type="date" name="dob1" pattern="\d{1,2}-\d{1,2}-\d{4}"
                                    placeholder="DD-MM-YYYY" required></td>
                        </tr>
                        <tr>
                            <td>Name : <input type="text" name="name2" value="--" placeholder="John Doe"></td>
                            <td>Date Of Birth : <input type="date" name="dob2" pattern="\d{1,2}-\d{1,2}-\d{4}"
                                    placeholder="DD-MM-YYYY"></td>
                        </tr>
                        <tr>
                            <td>Name : <input type="text" name="name3" value="--" placeholder="John Doe"></td>
                            <td>Date Of Birth : <input type="date" name="dob3" pattern="\d{1,2}-\d{1,2}-\d{4}"
                                    placeholder="DD-MM-YYYY"></td>
                        </tr>
                        <tr>
                            <td>Name : <input type="text" name="name4" value="--" placeholder="John Doe"></td>
                            <td>Date Of Birth : <input type="date" name="dob4" pattern="\d{1,2}-\d{1,2}-\d{4}"
                                    placeholder="DD-MM-YYYY"></td>
                        </tr>
                        <tr>
                            <td>Name : <input type="text" name="name5" value="--" placeholder="John Doe"></td>
                            <td>Date Of Birth : <input type="date" name="dob5" pattern="\d{1,2}-\d{1,2}-\d{4}"
                                    placeholder="DD-MM-YYYY"></td>
                        </tr>
                        <tr>
                            <td>Name : <input type="text" name="name6" value="--" placeholder="John Doe"></td>
                            <td>Date Of Birth : <input type="date" name="dob6" pattern="\d{1,2}-\d{1,2}-\d{4}"
                                    placeholder="DD-MM-YYYY"></td>
                        </tr>
                    </table>

                    <button type="submit">Submit</button>

                </form:form>
            </div>
        </body>

        </html>