<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Error</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f8f9fa;
                height: 100vh;
                margin: 0;
            }

            .error-container {
                margin-top: 50px;
                padding: 30px;
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                text-align: center;
            }

            .error-title {
                color: #dc3545;
                margin-bottom: 20px;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 error-container">
                    <h1 class="error-title">Error</h1>
                    <p>${errorMessage}</p>
                    <a href="/searchflight" class="btn btn-primary">Go Back</a>
                </div>
            </div>
        </div>
    </body>

    </html>