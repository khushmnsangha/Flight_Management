<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Flight Management System</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
                flex-direction: column;
                justify-content: center;
                align-items: center;
                color: #fff;
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
            }

            .navbar {
                display: flex;
                justify-content: center;
                background-color: rgba(17, 0, 253, 0.9);
                padding: 10px 0;
                width: 100%;
                position: fixed;
                top: 0;
                z-index: 1000;
            }

            .navbar a {
                color: white;
                padding: 14px 20px;
                text-decoration: none;
                text-align: center;
                font-size: 16px;
                transition: background 0.3s ease;
                border-radius: 4px;
            }

            .navbar a:hover {
                background-color: rgba(255, 255, 255, 0.3);
            }

            .logout-btn {
                position: absolute;
                right: 20px;
                top: 10px;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #fff;
                min-width: 160px;
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
                z-index: 1;
                border-radius: 4px;
                overflow: hidden;
            }

            .dropdown-content a {
                color: #333;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                text-align: left;
                transition: background 0.3s ease;
            }

            .dropdown-content a:hover {
                background-color: #f1f1f1;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .title {
                text-align: center;
                margin-top: 80px;
                font-size: 4rem;
                font-weight: bold;
                color: rgba(48, 209, 234, 0.9);
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
            }

            .features {
                display: flex;
                justify-content: space-around;
                align-items: center;
                margin-top: 50px;
            }

            .feature {
                text-align: center;
                max-width: 300px;
            }

            .feature i {
                font-size: 3rem;
                margin-bottom: 20px;
                color: #007bff;
            }

            .feature h3 {
                color: #007bff;
            }

            .footer {
                position: fixed;
                bottom: 10px;
                text-align: center;
                width: 100%;
                color: #fff;
            }
        </style>
    </head>

    <body>

        <div class="navbar">
            <div class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Airport</a>
                <div class="dropdown-content">
                    <a href="/airport">Airport Addition</a>
                    <a href="/airports">Airport Reports</a>
                </div>
            </div>
            <div class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Route</a>
                <div class="dropdown-content">
                    <a href="/routeEntryPage">Route Addition</a>
                    <a href="/routes">Routes Report</a>
                </div>
            </div>
            <div class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Flight</a>
                <div class="dropdown-content">
                    <a href="/flight">Flight Addition</a>
                    <a href="/flights">All Flights</a>
                </div>
            </div>
            <div class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Flight Booking</a>
                <div class="dropdown-content">
                    <a href="/searchflight">Flight Search</a>
                </div>
            </div>
            <div class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Ticket</a>
                <div class="dropdown-content">
                    <a href="/tickets">All Tickets</a>
                </div>
            </div>
            <div class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Passenger</a>
                <div class="dropdown-content">
                    <a href="/passengers">All Passengers</a>
                </div>
            </div>
            <div class="logout-btn">
                <a href="/loginpage" class="btn btn-danger">Logout</a>
            </div>
        </div>

        <div class="title">
            AeroBlasters Flight Management
        </div>

        <div class="features">
            <div class="feature">
                <i class="fas fa-plane"></i>
                <h3>Manage Flights</h3>
                <p>View and add flights, manage schedules, and update flight details with ease.</p>
            </div>
            <div class="feature">
                <i class="fas fa-ticket-alt"></i>
                <h3>Book Tickets</h3>
                <p>Efficiently search for available flights and manage ticket bookings for passengers.</p>
            </div>
            <div class="feature">
                <i class="fas fa-user-friends"></i>
                <h3>Manage Passengers</h3>
                <p>Keep track of passenger information, manage bookings, and ensure a seamless travel experience.</p>
            </div>
        </div>

        <div class="footer">
            <p>&copy; 2024 AeroBlasters. All rights reserved.</p>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>

    </html>