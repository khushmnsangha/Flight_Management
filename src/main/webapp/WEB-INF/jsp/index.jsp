<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>Flight Management System</title>
    <style>
    
    
        body {
            font-family: Arial, sans-serif;
            background-image: url('/images/flights.jpg'); /* Path to your background image */
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Do not repeat the image */
            height: 100vh; /* Ensure body takes full height */
            margin: 0; /* Remove default margin */
        }
        .navbar {
            display: flex;
            background-color: #4602FB;
            padding: 20px;
        }
        .navbar a {
            color: white;
            padding: 20px 30px;
            text-decoration: none;
            text-align: center;
        }
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 220px;
            box-shadow: 0px 8px 16px 0px rgb(0,0,0,0);
            z-index: 1;
        }
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }
        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .dropdown:hover .dropbtn {
            background-color: red;
        }
        .title {
            text-align: center;
            margin: 20px;
            font-size: 24px;
            font-weight: italic;
        }
    </style>
</head>
<body>

<div class="title">
<u>
WELCOME TO FLIGHT MANAGEMENT SYSTEM</u>
</div>

<div class="navbar">
    <div class="dropdown">
  
        <a href="javascript:void(0)" class="dropbtn">Airport</a>
        <div class="dropdown-content">
            <a href="/airport">Airport Addition</a>
            <!--  <a href="/airport-select">Single Airport Information</a>-->
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
        <a href="/loginpage">Logout</a>
        </div>  
    
</div>
</body>
</html>