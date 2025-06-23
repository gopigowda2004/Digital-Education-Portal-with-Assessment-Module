<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Learn Java from Basics to Advanced</title>
    <!-- External Font and Icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* Global Reset */
        body, h1, h2, p, a, button {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
        }

        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Ensure the body spans the entire viewport height */
            background: white;
            color: white;
        }

        /* Navbar Styling */
        .navbar {
            background-color: rgba(0, 0, 0, 0.8);
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 200px;
            z-index: 1000;
            box-shadow: 4px 0 8px rgba(0, 0, 0, 0.2);
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
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: #4CAF50;
        }

        /* Main Content */
        .content {
            flex-grow: 1; /* Ensures content grows and pushes footer down */
            margin-left: 220px; /* Adjust content to avoid overlapping navbar */
            padding: 20px;
            max-width: 900px;
            background-color: white;
            color: black;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: #4CAF50;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        h2 {
            font-size: 2rem;
            margin-top: 20px;
            color: #3E8E41;
        }

        p {
            margin: 10px 0;
            font-size: 1.1rem;
            line-height: 1.8;
        }

        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #3E8E41;
        }

        /* Footer Styling */
        footer {
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            text-align: center;
            padding: 20px 0;
            border-top: 2px solid #FFD700;
            margin-left: 220px; /* Align with content width */
        }

        footer a {
            color: #FFD700;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="#">Home</a>
        <a href="create">Courses</a>
        <a href="find">Search</a>
        <a href="display">Quiz</a>
        <a href="advanced.jsp">Intermediate Topics</a>
        <a href="advanced.jsp">Advanced Topics</a>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h1>Learn Java from Basics to Advanced</h1>
        <p>Java is a versatile and powerful programming language that powers millions of applications worldwide. From web development to enterprise systems, Java is essential for developers seeking scalability, robustness, and cross-platform capabilities.</p>

        <h2>1. Basics of Java</h2>
        <p>The foundation of Java starts with understanding its syntax, data types, variables, and control structures. These basics serve as the building blocks for more advanced concepts.</p>
        <p><strong>Key Concepts:</strong></p>
        <ul>
            <li>Variables and Data Types (int, float, char, etc.)</li>
            <li>Control Structures (if-else, loops)</li>
            <li>Operators (Arithmetic, Logical, Bitwise)</li>
        </ul>
        <a href="javabasics.jsp" class="btn">Explore Basics</a>

        <h2>2. Object-Oriented Programming (OOP)</h2>
        <p>Java's Object-Oriented Programming model allows developers to create modular, reusable, and maintainable code. Mastering OOP principles is essential for efficient Java programming.</p>
        <p><strong>Key Concepts:</strong></p>
        <ul>
            <li>Classes and Objects</li>
            <li>Inheritance and Polymorphism</li>
            <li>Encapsulation and Abstraction</li>
        </ul>
        <a href="oop.jsp" class="btn">Learn OOP</a>

        <h2>3. Java Collections</h2>
        <p>The Java Collections Framework provides a set of interfaces and classes to manage groups of objects. Collections simplify data manipulation and enhance performance.</p>
        <p><strong>Key Features:</strong></p>
        <ul>
            <li>Lists (ArrayList, LinkedList)</li>
            <li>Sets (HashSet, TreeSet)</li>
            <li>Maps (HashMap, TreeMap)</li>
        </ul>
        <a href="collections.jsp" class="btn">Discover Collections</a>

        <h2>4. Exception Handling</h2>
        <p>Java's robust exception-handling mechanism ensures your program can gracefully handle runtime errors, making it more reliable and user-friendly.</p>
        <p><strong>Key Techniques:</strong></p>
        <ul>
            <li>Try-Catch Blocks</li>
            <li>Custom Exceptions</li>
            <li>Finally Clause</li>
        </ul>
        <a href="exceptions.jsp" class="btn">Handle Exceptions</a>

        <h2>5. Advanced Java Topics</h2>
        <p>Dive into advanced concepts such as multithreading, Java Streams, and network programming. These topics empower developers to build high-performance and scalable applications.</p>
        <p><strong>Popular Frameworks:</strong></p>
        <ul>
            <li>Spring Framework</li>
            <li>Hibernate for ORM</li>
            <li>JavaFX for GUI Development</li>
        </ul>
        <a href="advanced.jsp" class="btn">Explore Advanced Topics</a>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Java Learning Platform. All rights reserved. | <a href="contact">Contact Us</a></p>
    </footer>
</body>
</html>
