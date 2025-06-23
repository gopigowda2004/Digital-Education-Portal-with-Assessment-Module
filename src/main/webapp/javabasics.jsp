<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Java Basics - Learn the Fundamentals</title>
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
        <h1>Java Basics - Theory and Examples</h1>
        <p>Welcome to the extended guide on Java basics! This section covers the essential building blocks of Java with detailed explanations and examples to ensure you understand each concept thoroughly.</p>

        <h2>1. Introduction to Java</h2>
        <p>Java is a high-level, platform-independent, object-oriented programming language. It was created by Sun Microsystems (now part of Oracle) and is widely used for developing applications across various domains.</p>
        <p><strong>Key Features of Java:</strong></p>
        <ul>
            <li><strong>Platform-Independent:</strong> Java programs can run on any operating system with the help of the Java Virtual Machine (JVM).</li>
            <li><strong>Object-Oriented:</strong> Everything in Java is treated as an object, which makes it easy to build modular and reusable code.</li>
            <li><strong>Robust and Secure:</strong> Java includes strong memory management and security features.</li>
            <li><strong>Multithreaded:</strong> Java supports concurrent programming, allowing multiple threads to execute simultaneously.</li>
        </ul>

        <h2>2. Java Syntax</h2>
        <p>Java programs are structured using classes, methods, and statements. Below is the structure of a basic Java program:</p>
        <pre><code>
public class Main {
    public static void main(String[] args) {
        // This is a comment
        System.out.println("Hello, World!");
    }
}
        </code></pre>
        <p><strong>Explanation:</strong></p>
        <ul>
            <li><code>public class Main</code>: Declares a class named Main.</li>
            <li><code>public static void main(String[] args)</code>: The main method is the entry point of any Java program.</li>
            <li><code>System.out.println()</code>: Prints a message to the console.</li>
        </ul>

        <h2>3. Variables and Data Types</h2>
        <h3>Primitive Data Types:</h3>
        <ul>
            <li><strong>int:</strong> Stores integers (e.g., 1, -10).</li>
            <li><strong>double:</strong> Stores decimal numbers (e.g., 3.14, -0.001).</li>
            <li><strong>char:</strong> Stores a single character (e.g., 'A').</li>
            <li><strong>boolean:</strong> Stores <code>true</code> or <code>false</code>.</li>
        </ul>
        <h3>Examples:</h3>
        <pre><code>
int age = 25;
double price = 19.99;
char grade = 'A';
boolean isJavaFun = true;
        </code></pre>

        <h2>4. Control Structures</h2>
        <h3>If-Else Statement:</h3>
        <p>Used for decision-making.</p>
        <pre><code>
if (age > 18) {
    System.out.println("You are an adult.");
} else {
    System.out.println("You are a minor.");
}
        </code></pre>

        <h3>For Loop:</h3>
        <p>Used to repeat a block of code a fixed number of times.</p>
        <pre><code>
for (int i = 0; i < 5; i++) {
    System.out.println("Iteration: " + i);
}
        </code></pre>

        <h2>5. Object-Oriented Concepts</h2>
        <p>Java is built around object-oriented principles, which include:</p>
        <ul>
            <li><strong>Classes and Objects:</strong> Classes are blueprints for objects.</li>
            <li><strong>Encapsulation:</strong> Protects data by making fields private and providing public getter/setter methods.</li>
            <li><strong>Inheritance:</strong> Enables one class to inherit properties and methods from another.</li>
            <li><strong>Polymorphism:</strong> Allows one interface to be used for different data types.</li>
        </ul>

        <h3>Example of a Class:</h3>
        <pre><code>
class Animal {
    String name;
    int age;

    void eat() {
        System.out.println(name + " is eating.");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal dog = new Animal();
        dog.name = "Buddy";
        dog.age = 5;
        dog.eat();
    }
}
        </code></pre>

        <h2>6. Exception Handling</h2>
        <p>Java provides mechanisms to handle runtime errors using try-catch blocks.</p>
        <pre><code>
try {
    int result = 10 / 0;
} catch (ArithmeticException e) {
    System.out.println("Cannot divide by zero!");
}
        </code></pre>

        <h2>7. Java Development Tools</h2>
        <p>To write and run Java programs, you need:</p>
        <ul>
            <li><strong>JDK (Java Development Kit):</strong> Includes tools for compiling and running Java code.</li>
            <li><strong>IDE (Integrated Development Environment):</strong> Tools like IntelliJ IDEA, Eclipse, or NetBeans make coding easier.</li>
        </ul>

        <p><a href="quiz.jsp"><button>Take a Quiz</button></a></p>
    </div>

    <footer>
        <p>&copy; 2024 Task Management System. All rights reserved. | <a href="contact.jsp">Contact Us</a></p>
    </footer>
</body>
</html>
