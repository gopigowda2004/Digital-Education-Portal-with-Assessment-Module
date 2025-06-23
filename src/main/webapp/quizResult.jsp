<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Quiz</title>
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
        .question {
            font-size: 1.2rem;
            margin-bottom: 10px;
        }
        .options {
            margin-bottom: 20px;
        }
        .options label {
            display: block;
            padding: 5px;
            background-color: #f1f1f1;
            border: 1px solid #ccc;
            margin: 5px 0;
            border-radius: 5px;
            cursor: pointer;
        }
        .options label:hover {
            background-color: #ddd;
        }
        .submit-btn {
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
        }
        .submit-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Java Programming Quiz</h1>
        <form action="quizResult.jsp" method="post">
            <!-- Question 1 -->
            <div class="question">
                <p>1. What is the default value of a boolean variable in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q1a" name="q1" value="true">
                <label for="q1a">true</label>
                <input type="radio" id="q1b" name="q1" value="false">
                <label for="q1b">false</label>
                <input type="radio" id="q1c" name="q1" value="null">
                <label for="q1c">null</label>
            </div>

            <!-- Question 2 -->
            <div class="question">
                <p>2. Which of these is a valid declaration in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q2a" name="q2" value="int x = 5;">
                <label for="q2a">int x = 5;</label>
                <input type="radio" id="q2b" name="q2" value="int 5 = x;">
                <label for="q2b">int 5 = x;</label>
                <input type="radio" id="q2c" name="q2" value="x = 5;">
                <label for="q2c">x = 5;</label>
            </div>

            <!-- Question 3 -->
            <div class="question">
                <p>3. What is the correct way to create an object of the class 'Dog' in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q3a" name="q3" value="new Dog();">
                <label for="q3a">new Dog();</label>
                <input type="radio" id="q3b" name="q3" value="Dog d = new Dog();">
                <label for="q3b">Dog d = new Dog();</label>
                <input type="radio" id="q3c" name="q3" value="Dog d = Dog();">
                <label for="q3c">Dog d = Dog();</label>
            </div>

            <!-- Question 4 -->
            <div class="question">
                <p>4. Which of the following is used to define a method in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q4a" name="q4" value="function">
                <label for="q4a">function</label>
                <input type="radio" id="q4b" name="q4" value="method">
                <label for="q4b">method</label>
                <input type="radio" id="q4c" name="q4" value="void">
                <label for="q4c">void</label>
            </div>

            <!-- Question 5 -->
            <div class="question">
                <p>5. Which keyword is used to create a class in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q5a" name="q5" value="class">
                <label for="q5a">class</label>
                <input type="radio" id="q5b" name="q5" value="object">
                <label for="q5b">object</label>
                <input type="radio" id="q5c" name="q5" value="method">
                <label for="q5c">method</label>
            </div>

            <!-- Question 6 -->
            <div class="question">
                <p>6. What is the result of 5 + 2 * 3 in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q6a" name="q6" value="21">
                <label for="q6a">21</label>
                <input type="radio" id="q6b" name="q6" value="15">
                <label for="q6b">15</label>
                <input type="radio" id="q6c" name="q6" value="11">
                <label for="q6c">11</label>
            </div>

            <!-- Question 7 -->
            <div class="question">
                <p>7. What is the default value of a float variable in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q7a" name="q7" value="0.0">
                <label for="q7a">0.0</label>
                <input type="radio" id="q7b" name="q7" value="null">
                <label for="q7b">null</label>
                <input type="radio" id="q7c" name="q7" value="undefined">
                <label for="q7c">undefined</label>
            </div>

            <!-- Question 8 -->
            <div class="question">
                <p>8. Which of the following data types is used to store a decimal number in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q8a" name="q8" value="int">
                <label for="q8a">int</label>
                <input type="radio" id="q8b" name="q8" value="float">
                <label for="q8b">float</label>
                <input type="radio" id="q8c" name="q8" value="char">
                <label for="q8c">char</label>
            </div>

            <!-- Question 9 -->
            <div class="question">
                <p>9. Which method is used to start a thread in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q9a" name="q9" value="start()">
                <label for="q9a">start()</label>
                <input type="radio" id="q9b" name="q9" value="run()">
                <label for="q9b">run()</label>
                <input type="radio" id="q9c" name="q9" value="execute()">
                <label for="q9c">execute()</label>
            </div>

            <!-- Question 10 -->
            <div class="question">
                <p>10. What is the purpose of the 'super' keyword in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q10a" name="q10" value="Access parent class constructor">
                <label for="q10a">Access parent class constructor</label>
                <input type="radio" id="q10b" name="q10" value="Access parent class method">
                <label for="q10b">Access parent class method</label>
                <input type="radio" id="q10c" name="q10" value="Access child class method">
                <label for="q10c">Access child class method</label>
            </div>

            <!-- Question 11 -->
            <div class="question">
                <p>11. What does the 'this' keyword refer to in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q11a" name="q11" value="Current object">
                <label for="q11a">Current object</label>
                <input type="radio" id="q11b" name="q11" value="Parent object">
                <label for="q11b">Parent object</label>
                <input type="radio" id="q11c" name="q11" value="Child object">
                <label for="q11c">Child object</label>
            </div>

            <!-- Question 12 -->
            <div class="question">
                <p>12. What is the purpose of the 'final' keyword in Java?</p>
            </div>
            <div class="options">
                <input type="radio" id="q12a" name="q12" value="Indicates an unchangeable value">
                <label for="q12a">Indicates an unchangeable value</label>
                <input type="radio" id="q12b" name="q12" value="Defines an abstract class">
                <label for="q12b">Defines an abstract class</label>
                <input type="radio" id="q12c" name="q12" value="Marks a class for inheritance">
                <label for="q12c">Marks a class for inheritance</label>
            </div>

            <button type="submit" class="submit-btn">Submit</button>
        </form>
    </div>

</body>
</html>
