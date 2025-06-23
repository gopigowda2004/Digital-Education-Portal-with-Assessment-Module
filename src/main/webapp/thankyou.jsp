<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f7f7ff;
            color: #333;
        }

        .thankyou-container {
            text-align: center;
            background: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            max-width: 500px;
        }

        h1 {
            font-size: 2rem;
            color: #4e3db8;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1rem;
            line-height: 1.6;
            color: #555;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #4e3db8;
            color: #fff;
            padding: 10px 20px;
            border-radius: 6px;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #3a2e99;
        }
    </style>
</head>
<body>
    <div class="thankyou-container">
        <h1>Thank You!</h1>
        <p>We have received your message and will get back to you soon.</p>
        <a href="index.jsp">Back to Contact Page</a>
    </div>
</body>
</html>
