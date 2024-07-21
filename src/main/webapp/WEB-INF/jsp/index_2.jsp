<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- JSP directive setting the page language, content type, and encoding -->
    <!DOCTYPE html> <!-- HTML5 document type declaration -->
    <html>

    <head>
        <meta charset="UTF-8"> <!-- Sets the character encoding for the HTML document -->

        <title>Flight Management System</title> <!-- Title of the web page -->
        <style>
            /* CSS styles for the page */
            body {
                font-family: Arial, sans-serif;
                /* Sets the font family for the body */
                background-image: url('https://www.shutterstock.com/image-vector/vector-3d-illustration-airplane-clouds-600nw-2143367099.jpg');
                /* Background image for the page */
                background-size: cover;
                /* Ensures the background image covers the entire page */
                background-position: center;
                /* Centers the background image */
                background-repeat: no-repeat;
                /* Prevents the background image from repeating */
                height: 100vh;
                /* Sets the height of the body to 100% of the viewport height */
                margin: 0;
                /* Removes the default margin */
            }

            .navbar {
                display: flex;
                /* Uses flexbox for layout */
                background-color: #4602FB;
                /* Background color of the navbar */
                padding: 20px;
                /* Padding around the navbar */
            }

            .navbar a {
                color: white;
                /* Text color for links in the navbar */
                padding: 20px 30px;
                /* Padding around the links */
                text-decoration: none;
                /* Removes underline from links */
                text-align: center;
                /* Centers the text within the links */
            }

            .dropdown {
                position: relative;
                /* Positions the dropdown relative to its normal position */
                display: inline-block;
                /* Displays the dropdown inline */
            }

            .dropdown-content {
                display: none;
                /* Hides the dropdown content by default */
                position: absolute;
                /* Positions the dropdown content absolutely within its parent */
                background-color: #f9f9f9;
                /* Background color of the dropdown content */
                min-width: 220px;
                /* Minimum width of the dropdown content */
                box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0);
                /* Shadow effect for the dropdown content */
                z-index: 1;
                /* Ensures the dropdown content stacks on top of other content */
            }

            .dropdown-content a {
                color: black;
                /* Text color for links in the dropdown content */
                padding: 12px 16px;
                /* Padding around the links */
                text-decoration: none;
                /* Removes underline from links */
                display: block;
                /* Displays links as block elements */
                text-align: left;
                /* Aligns the text to the left */
            }

            .dropdown-content a:hover {
                background-color: #f1f1f1;
                /* Background color of links on hover */
            }

            .dropdown:hover .dropdown-content {
                display: block;
                /* Shows the dropdown content when hovering over the dropdown */
            }

            .dropdown:hover .dropbtn {
                background-color: red;
                /* Changes the background color of the dropdown button on hover */
            }

            .title {
                text-align: center;
                /* Centers the title text */
                margin: 20px;
                /* Margin around the title */
                font-size: 24px;
                /* Font size of the title */
                font-weight: italic;
                /* Makes the title italic */
            }
        </style>
    </head>

    <body>

        <div class="title">
            <u> <!-- Underlines the title text -->
                WELCOME TO FLIGHT MANAGEMENT SYSTEM</u> <!-- Title text -->
        </div>

        <div class="navbar"> <!-- Container for the navigation bar -->
            <div class="dropdown"> <!-- Dropdown menu for Airport options -->

                <a href="javascript:void(0)" class="dropbtn">Airport</a> <!-- Dropdown button for Airport -->
                <div class="dropdown-content"> <!-- Dropdown content for Airport -->
                    <a href="/airport">Airport Addition</a> <!-- Link to add an airport -->
                    <a href="/airport-select">Single Airport Information</a>
                    <!-- Link to view single airport information -->
                    <a href="/airports">Airport Reports</a> <!-- Link to view airport reports -->
                </div>
            </div>

            <div class="dropdown"> <!-- Dropdown menu for Route options -->
                <a href="javascript:void(0)" class="dropbtn">Route</a> <!-- Dropdown button for Route -->
                <div class="dropdown-content"> <!-- Dropdown content for Route -->
                    <a href="/routeEntryPage">Route Addition</a> <!-- Link to add a route -->
                    <a href="/routes">Routes Report</a> <!-- Link to view routes report -->
                </div>
            </div>

            <div class="dropdown"> <!-- Dropdown for Flight, currently without dropdown content -->
                <a href="javascript:void(0)" class="dropbtn">Flight</a>
                <div class="dropdown-content">
                    <a href="/flightEntryPage">Flight Addition</a>
                    <a href="/flights">Flight Reports</a>
                </div>
            </div>

            <div class="dropdown"> <!-- Direct link for Logout -->
                <a href="/loginpage">Logout</a> <!-- Link to logout page -->
            </div>

        </div>
    </body>

    </html>