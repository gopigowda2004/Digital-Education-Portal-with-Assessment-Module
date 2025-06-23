<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-color: #f9f9f9;
        }

        .container {
            display: flex;
            max-width: 1200px;
            margin: 50px auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .left {
            flex: 1;
            padding: 40px;
            background: #f7f7ff;
        }

        .left h1 {
            font-size: 2.2rem;
            margin-bottom: 20px;
            color: #4e3db8;
        }

        .left p {
            font-size: 1rem;
            line-height: 1.6;
            color: #555;
        }

        .right {
            flex: 1;
            padding: 40px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        input, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 1rem;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input:focus, textarea:focus {
            border-color: #4e3db8;
            box-shadow: 0 0 8px rgba(78, 61, 184, 0.2);
            outline: none;
        }

        button {
            background-color: #4e3db8;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: #3a2e99;
            transform: translateY(-3px);
        }

        .footer {
            margin-top: 20px;
            text-align: center;
            font-size: 0.9rem;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="left">
            <h1>Contact Us</h1>
            <p>
                Need to get in touch with us? Fill out the form with your inquiry, and we'll get back to you as soon as possible.
                Alternatively, email us at <strong>gopigowda132@gmail.com and dharneshhm@gmail.com</strong>.
            </p>
        </div>
        <div class="right">
            <form action="sendMessage.jsp" method="post">
                <input type="text" name="firstname" placeholder="First Name*" required>
                <input type="text" name="lastname" placeholder="Last Name">
                <input type="email" name="email" placeholder="Email*" required>
                <textarea name="message" rows="4" placeholder="What can we help you with?" required></textarea>
                <button type="thankyou.jsp">Submit</button>
            </form>
        </div>
    </div>
    <div class="footer">
        © 2024 Company Name. All rights reserved.
    </div>
</body>
</html>
