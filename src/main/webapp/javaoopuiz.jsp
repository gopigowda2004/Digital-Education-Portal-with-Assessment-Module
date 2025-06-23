<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Java OOP Quiz - Java Learning Platform</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* Global Reset */
        body, h1, h2, p, ul, li, a, button {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
        }

        body {
            display: flex;
            min-height: 100vh;
            background: #f3f3f3;
            color: black;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #4CAF50;
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 200px;
            z-index: 1000;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 15px 0;
            font-size: 18px;
            width: 100%;
            text-align: center;
            padding: 10px 0;
        }

        .navbar a:hover {
            background-color: #3E8E41;
        }

        /* Main Content */
        .content {
            margin-left: 220px;
            padding: 20px;
            flex-grow: 1;
            background: white;
            border-radius: 10px;
            max-width: 800px;
            margin: 20px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #4CAF50;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        p {
            font-size: 1rem;
            line-height: 1.5;
        }

        .quiz-question {
            margin: 20px 0;
        }

        .quiz-question h2 {
            font-size: 1.2rem;
            margin-bottom: 10px;
        }

        .quiz-options {
            list-style: none;
            padding: 0;
        }

        .quiz-options li {
            margin: 8px 0;
        }

        .quiz-options input {
            margin-right: 10px;
        }

        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            display: inline-block;
        }

        .btn:hover {
            background-color: #3E8E41;
        }

        .results {
            margin-top: 20px;
            padding: 10px;
            background-color: #e8f5e9;
            border-left: 5px solid #4CAF50;
            display: none;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="oop.jsp">Learn OOP</a>
        <a href="advanced.jsp">Advanced Topics</a>
        <a href="quiz.jsp">Take Quiz</a>
        <a href="contact.jsp">Contact Us</a>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h1>Java OOP Quiz</h1>
        <p>Test your knowledge of Java Object-Oriented Programming with this short quiz. Answer all the questions and click "Submit" to see your score.</p>

        <!-- Quiz Form -->
        <form id="quizForm">
            <div class="quiz-question">
                <h2>1. What is the primary purpose of inheritance in Java?</h2>
                <ul class="quiz-options">
                    <li><input type="radio" name="q1" value="a"> To achieve multiple inheritance</li>
                    <li><input type="radio" name="q1" value="b"> To reuse code from an existing class</li>
                    <li><input type="radio" name="q1" value="c"> To define interfaces</li>
                    <li><input type="radio" name="q1" value="d"> To avoid encapsulation</li>
                </ul>
            </div>

            <div class="quiz-question">
                <h2>2. Which of the following is a feature of encapsulation?</h2>
                <ul class="quiz-options">
                    <li><input type="radio" name="q2" value="a"> Hiding implementation details</li>
                    <li><input type="radio" name="q2" value="b"> Extending classes</li>
                    <li><input type="radio" name="q2" value="c"> Overloading methods</li>
                    <li><input type="radio" name="q2" value="d"> Creating objects</li>
                </ul>
            </div>

            <div class="quiz-question">
                <h2>3. What is polymorphism in Java?</h2>
                <ul class="quiz-options">
                    <li><input type="radio" name="q3" value="a"> The ability to hide data</li>
                    <li><input type="radio" name="q3" value="b"> The ability of a class to take multiple forms</li>
                    <li><input type="radio" name="q3" value="c"> Overriding methods</li>
                    <li><input type="radio" name="q3" value="d"> Both b and c</li>
                </ul>
            </div>

            <div class="quiz-question">
                <h2>4. Which of the following is NOT true about abstraction?</h2>
                <ul class="quiz-options">
                    <li><input type="radio" name="q4" value="a"> It hides implementation details</li>
                    <li><input type="radio" name="q4" value="b"> It is achieved using abstract classes or interfaces</li>
                    <li><input type="radio" name="q4" value="c"> It allows you to define concrete methods</li>
                    <li><input type="radio" name="q4" value="d"> It is used to access private variables</li>
                </ul>
            </div>

            <button type="button" class="btn" onclick="submitQuiz()">Submit</button>
        </form>

        <!-- Results Section -->
        <div class="results" id="results">
            <h2>Your Results</h2>
            <p id="score"></p>
            <p id="answers"></p>
        </div>
    </div>

    <script>
        function submitQuiz() {
            const correctAnswers = {
                q1: 'b',
                q2: 'a',
                q3: 'd',
                q4: 'd'
            };

            let score = 0;
            let totalQuestions = Object.keys(correctAnswers).length;

            for (let question in correctAnswers) {
                const userAnswer = document.querySelector(`input[name="${question}"]:checked`);
                if (userAnswer && userAnswer.value === correctAnswers[question]) {
                    score++;
                }
            }

            // Display Results
            const resultsSection = document.getElementById('results');
            const scoreText = document.getElementById('score');
            const answersText = document.getElementById('answers');

            resultsSection.style.display = 'block';
            scoreText.textContent = `You scored ${score} out of ${totalQuestions}!`;

            let correctAnswersText = "<strong>Correct Answers:</strong><br>";
            for (let question in correctAnswers) {
                correctAnswersText += `${question}: ${correctAnswers[question]}<br>`;
            }
            answersText.innerHTML = correctAnswersText;
        }
    </script>
</body>
</html>
