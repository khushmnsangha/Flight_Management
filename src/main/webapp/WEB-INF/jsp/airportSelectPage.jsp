<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <title>Select Airport Code</title>
                <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-image: url('/images/flights.jpg');
                        background-size: cover;
                        /* Cover the entire page */
                        background-position: center;
                        /* Center the image */
                        background-repeat: no-repeat;
                        /* Do not repeat the image */
                        height: 100vh;
                        /* Ensure body takes full height */
                        margin: 0;
                        /* Remove default margin */
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

                    .home-link {
                        margin-top: 20px;
                        display: block;
                        text-align: center;
                    }
                </style>
            </head>

            <body>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-8 form-container text-center">
                            <h2 class="form-title">Select Airport Code</h2>
                            <form action="/airport-select" method="post">
                                <div class="form-group">
                                    <label for="airport-code">Select Airport Code:</label>
                                    <input list="allCodes" name="airport-code" id="airport-code" class="form-control" />
                                    <datalist id="allCodes">
                                        <c:forEach items="${codeList}" var="aircode">
                                            <option value="${aircode}"></option>
                                        </c:forEach>
                                    </datalist>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                            <a href="index" class="home-link btn btn-secondary">Back to Home</a>
                        </div>
                    </div>
                </div>
                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            </body>

            </html>