<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #28a745;
        }
        .result {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }
        .correct {
            color: green;
        }
        .incorrect {
            color: red;
        }
        .back-btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            text-align: center;
            display: block;
            margin: 20px auto;
        }
        .back-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Quiz Results</h1>
        <%
            // Correct answers for each question
            String[] correctAnswers = {
                "false", "int x = 5;", "Dog d = new Dog();", "void", "class", "11", 
                "0.0", "float", "start()", "Access parent class constructor", 
                "Current object", "Indicates an unchangeable value"
            };

            int score = 0;

            // Loop through the answers and compare
            for (int i = 0; i < 12; i++) {
                String userAnswer = request.getParameter("q" + (i + 1));
                if (userAnswer != null && userAnswer.equals(correctAnswers[i])) {
                    score++;
                }
            }

        %>

        <div class="result">
            <p>You got <strong><%= score %></strong> out of 12 correct!</p>
            <p>Your score: <%= (score * 100) / 12 %>%</p>

            <h3>Answers Review:</h3>
            <%
                for (int i = 0; i < 12; i++) {
                    String userAnswer = request.getParameter("q" + (i + 1));
                    String correctAnswer = correctAnswers[i];
                    if (userAnswer != null) {
            %>
                        <p>Question <%= (i + 1) %>:
                            <%= userAnswer.equals(correctAnswer) ? 
                                "<span class='correct'>Correct</span>" : 
                                "<span class='incorrect'>Incorrect</span>" %>
                        </p>
                    <%
                    }
                }
            %>
        </div>

        <a href="quiz.jsp" class="back-btn">Try Again</a>
    </div>

</body>
</html>
