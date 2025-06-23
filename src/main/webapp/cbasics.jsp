<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>C Basics - Learn the Fundamentals</title>
    <!-- External Font and Icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* Global Reset */
        body, h1, h2, h3, p, a, button {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
        }

        body {
            background-color: #f9f9f9;
            color: #333;
            line-height: 1.6;
            padding: 20px;
        }

        h1, h2, h3 {
            color: #4CAF50;
        }

        h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }
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

        h2 {
            font-size: 2rem;
            margin-top: 20px;
        }

        h3 {
            font-size: 1.5rem;
            margin-top: 15px;
        }

        p {
            margin: 10px 0;
            font-size: 1.1rem;
        }

        code {
            background-color: #e8e8e8;
            padding: 2px 6px;
            font-family: 'Courier New', monospace;
            border-radius: 3px;
        }

        .content {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        footer {
            margin-top: 40px;
            text-align: center;
            color: #666;
        }

        footer a {
            color: #007BFF;
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
        <a href="index.jsp">Home</a>
        <a href="create">Courses</a>
        <a href="find">Search</a>
        <a href="display">Quiz</a>
        <a href="advanced.jsp">Advanced Topics</a>
    </div>
    <div class="content">
        <h1>C Basics - Theory and Examples</h1>
        <p>Welcome to the extended guide on C programming basics! This section covers the essential building blocks of C with detailed explanations and examples to ensure you understand each concept thoroughly.</p>

        <h2>1. Introduction to C</h2>
        <p>C is a high-level, general-purpose programming language developed by Dennis Ritchie at AT&T Bell Labs in the 1970s. It is widely used for system software, embedded systems, and other resource-constrained applications.</p>
        <p><strong>Key Features of C:</strong></p>
        <ul>
            <li><strong>Efficiency:</strong> C is known for its efficiency and low-level operations.</li>
            <li><strong>Portable:</strong> C programs can run on various platforms with minimal modifications.</li>
            <li><strong>Structured:</strong> C uses a modular approach for organizing code using functions.</li>
            <li><strong>Low-level Access:</strong> C allows manipulation of memory using pointers.</li>
        </ul>

        <h2>2. C Syntax</h2>
        <p>C programs are structured using functions, variables, and statements. Below is the structure of a basic C program:</p>
        <pre><code>
#include <stdio.h>

int main() {
    // This is a comment
    printf("Hello, World!\n");
    return 0;
}
        </code></pre>
        <p><strong>Explanation:</strong></p>
        <ul>
            <li><code>#include <stdio.h></code>: Includes the Standard Input Output library for input/output operations.</li>
            <li><code>int main()</code>: Declares the main function, which is the entry point of any C program.</li>
            <li><code>printf()</code>: Prints a message to the console.</li>
            <li><code>return 0;</code>: Exits the program with a status code of 0, indicating successful execution.</li>
        </ul>

        <h2>3. Variables and Data Types</h2>
        <h3>Primitive Data Types:</h3>
        <ul>
            <li><strong>int:</strong> Stores integers (e.g., 1, -10).</li>
            <li><strong>float:</strong> Stores decimal numbers (e.g., 3.14, -0.001).</li>
            <li><strong>char:</strong> Stores a single character (e.g., 'A').</li>
            <li><strong>double:</strong> Stores double precision floating-point numbers.</li>
        </ul>
        <h3>Examples:</h3>
        <pre><code>
int age = 25;
float price = 19.99;
char grade = 'A';
double pi = 3.14159;
        </code></pre>

        <h2>4. Control Structures</h2>
        <h3>If-Else Statement:</h3>
        <p>Used for decision-making.</p>
        <pre><code>
if (age > 18) {
    printf("You are an adult.\n");
} else {
    printf("You are a minor.\n");
}
        </code></pre>

        <h3>For Loop:</h3>
        <p>Used to repeat a block of code a fixed number of times.</p>
        <pre><code>
for (int i = 0; i < 5; i++) {
    printf("Iteration: %d\n", i);
}
        </code></pre>

        <h2>5. Functions</h2>
        <p>C allows you to break down your program into smaller units using functions. Here is an example of a simple function in C:</p>
        <pre><code>
#include <stdio.h>

void greet() {
    printf("Hello from a function!\n");
}

int main() {
    greet(); // Calling the function
    return 0;
}
        </code></pre>

        <h2>6. Pointers</h2>
        <p>Pointers are variables that store the memory address of another variable. Here's an example:</p>
        <pre><code>
#include <stdio.h>

int main() {
    int num = 10;
    int *ptr = &num;  // Pointer to num

    printf("Address of num: %p\n", ptr);
    printf("Value of num: %d\n", *ptr); // Dereferencing the pointer

    return 0;
}
        </code></pre>

        <h2>7. C Development Tools</h2>
        <p>To write and run C programs, you need:</p>
        <ul>
            <li><strong>Compiler:</strong> A tool like GCC (GNU Compiler Collection) to compile C code.</li>
            <li><strong>IDE:</strong> Integrated development environments like Code::Blocks, Dev-C++, or Visual Studio can help write and debug code.</li>
        </ul>

        <p><a href="quiz.jsp"><button>Take a Quiz</button></a></p>
    </div>

    <footer>
        <p>&copy; 2024 C Programming Basics. All rights reserved. | <a href="contact.jsp">Contact Us</a></p>
    </footer>
</body>
</html>
