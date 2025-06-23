<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Learn C Programming from Basics to Advanced</title>
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
            background: linear-gradient(135deg, #4CAF50, #3E8E41);
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
        <a href="create">C Basics</a>
        <a href="find">Search</a>
        <a href="display">Quiz</a>
        <a href="advanced.jsp">Advanced Topics</a>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h1>Learn C Programming from Basics to Advanced</h1>
        <p>C is a general-purpose, procedural programming language that has been the foundation of many other modern languages. It is powerful and fast, making it ideal for system-level programming, embedded systems, and high-performance applications.</p>

        <h2>1. Basics of C Programming</h2>
        <p>The basics of C include understanding its syntax, variables, data types, and control structures. These concepts are the foundation of all C programs.</p>
        <p><strong>Key Concepts:</strong></p>
        <ul>
            <li>Variables and Data Types (int, float, char, etc.)</li>
            <li>Control Structures (if-else, loops)</li>
            <li>Functions (declaring and calling functions)</li>
        </ul>
        <a href="cbasics.jsp" class="btn">Explore Basics</a>

        <h2>2. Functions in C</h2>
        <p>Functions in C allow for modular programming. They help break down complex programs into simpler blocks of code, which can be reused throughout the program.</p>
        <p><strong>Key Concepts:</strong></p>
        <ul>
            <li>Function Declaration and Definition</li>
            <li>Function Parameters</li>
            <li>Returning Values from Functions</li>
        </ul>
        <a href="functions.jsp" class="btn">Learn Functions</a>

        <h2>3. Arrays in C</h2>
        <p>Arrays in C are used to store multiple values in a single variable, instead of declaring individual variables for each value. Understanding arrays is crucial for working with large sets of data.</p>
        <p><strong>Key Concepts:</strong></p>
        <ul>
            <li>Single-Dimensional Arrays</li>
            <li>Multi-Dimensional Arrays</li>
            <li>Array Manipulation (indexing, iterating)</li>
        </ul>
        <a href="arrays.jsp" class="btn">Discover Arrays</a>

        <h2>4. Pointers in C</h2>
        <p>C is known for its powerful pointer manipulation. Pointers allow you to directly access memory locations, making it essential for efficient system-level programming.</p>
        <p><strong>Key Concepts:</strong></p>
        <ul>
            <li>Pointer Declaration and Initialization</li>
            <li>Dereferencing Pointers</li>
            <li>Pointer Arithmetic</li>
        </ul>
        <a href="pointers.jsp" class="btn">Master Pointers</a>

        <h2>5. Advanced C Topics</h2>
        <p>Explore advanced topics in C such as memory management, file handling, and data structures. These topics provide the tools necessary to develop complex and efficient C applications.</p>
        <p><strong>Popular Topics:</strong></p>
        <ul>
            <li>Memory Management (malloc, free)</li>
            <li>File I/O (Reading and Writing Files)</li>
            <li>Data Structures (Linked Lists, Trees, etc.)</li>
        </ul>
        <a href="advanced.jsp" class="btn">Explore Advanced Topics</a>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 C Programming Learning Platform. All rights reserved. | <a href="contact">Contact Us</a></p>
    </footer>
</body>
</html>
