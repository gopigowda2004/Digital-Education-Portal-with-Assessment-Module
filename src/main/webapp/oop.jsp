<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Learn OOP - Java Learning Platform</title>
    <!-- External Font and Icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* Global Reset */
        body, h1, h2, h3, p, ul, li, a, button {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
        }

        body {
            display: flex;
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

        h3 {
            font-size: 1.5rem;
            margin-top: 15px;
            color: #4CAF50;
        }

        p {
            margin: 10px 0;
            font-size: 1.1rem;
            line-height: 1.8;
        }

        ul {
            list-style: disc inside;
            margin: 10px 0 10px 20px;
        }

        code {
            background-color: #e8e8e8;
            padding: 2px 6px;
            font-family: 'Courier New', monospace;
            border-radius: 3px;
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
            display: inline-block;
            margin-top: 10px;
        }

        .btn:hover {
            background-color: #3E8E41;
        }

        .btn-secondary {
            background-color: #007BFF;
        }

        .btn-secondary:hover {
            background-color: #0056b3;
        }

        /* Footer Styling */
        footer {
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            text-align: center;
            padding: 20px 0;
            margin-left: 220px; /* Align with content width */
            border-top: 2px solid #FFD700;
        }

        footer a {
            color: #FFD700;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar {
                width: 150px;
            }

            .content {
                margin-left: 170px;
                width: calc(100% - 190px);
            }

            footer {
                margin-left: 170px;
                width: calc(100% - 190px);
            }

            .navbar a {
                font-size: 16px;
            }

            h1 {
                font-size: 2rem;
            }

            h2 {
                font-size: 1.8rem;
            }

            h3 {
                font-size: 1.3rem;
            }

            p, ul {
                font-size: 1rem;
            }

            .btn, .btn-secondary {
                padding: 10px 16px;
                font-size: 0.9rem;
            }
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

    <!-- Main Content -->
    <div class="content">
        <h1>Object-Oriented Programming (OOP) in Java</h1>
        <p>Object-Oriented Programming (OOP) is a programming paradigm that uses "objects" to design applications and programs. Java is inherently an object-oriented language, which makes it a powerful tool for developers to create modular, reusable, and maintainable code.</p>

        <h2>Key OOP Concepts</h2>

        <h3>1. Classes and Objects</h3>
        <p>In Java, a <strong>class</strong> is a blueprint for creating objects. It defines the properties (fields) and behaviors (methods) that the objects created from the class will have.</p>
        <p><strong>Example:</strong></p>
        <pre><code>
public class Animal {
    // Fields
    String name;
    int age;

    // Constructor
    public Animal(String name, int age) {
        this.name = name;
        this.age = age;
    }

    // Method
    public void makeSound() {
        System.out.println(name + " makes a sound.");
    }
}

// Creating an object
public class Main {
    public static void main(String[] args) {
        Animal dog = new Animal("Buddy", 5);
        dog.makeSound(); // Output: Buddy makes a sound.
    }
}
        </code></pre>

        <h3>2. Inheritance</h3>
        <p><strong>Inheritance</strong> allows a class to inherit properties and methods from another class. This promotes code reusability and establishes a natural hierarchy between classes.</p>
        <p><strong>Example:</strong></p>
        <pre><code>
public class Animal {
    String name;

    public void eat() {
        System.out.println(name + " is eating.");
    }
}

public class Dog extends Animal {
    public void bark() {
        System.out.println(name + " is barking.");
    }
}

public class Main {
    public static void main(String[] args) {
        Dog dog = new Dog();
        dog.name = "Buddy";
        dog.eat();   // Output: Buddy is eating.
        dog.bark();  // Output: Buddy is barking.
    }
}
        </code></pre>

        <h3>3. Polymorphism</h3>
        <p><strong>Polymorphism</strong> allows objects to be treated as instances of their parent class rather than their actual class. The most common use of polymorphism is when a parent class reference is used to refer to a child class object.</p>
        <p><strong>Example:</strong></p>
        <pre><code>
public class Animal {
    public void makeSound() {
        System.out.println("Animal makes a sound");
    }
}

public class Dog extends Animal {
    @Override
    public void makeSound() {
        System.out.println("Dog barks");
    }
}

public class Cat extends Animal {
    @Override
    public void makeSound() {
        System.out.println("Cat meows");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal myDog = new Dog();
        Animal myCat = new Cat();

        myDog.makeSound(); // Output: Dog barks
        myCat.makeSound(); // Output: Cat meows
    }
}
        </code></pre>

        <h3>4. Encapsulation</h3>
        <p><strong>Encapsulation</strong> is the mechanism of restricting direct access to some of an object's components and can prevent the accidental modification of data. This is typically achieved by making fields private and providing public getter and setter methods.</p>
        <p><strong>Example:</strong></p>
        <pre><code>
public class Person {
    // Private fields
    private String name;
    private int age;

    // Public getter for name
    public String getName() {
        return name;
    }

    // Public setter for name
    public void setName(String name) {
        this.name = name;
    }

    // Public getter for age
    public int getAge() {
        return age;
    }

    // Public setter for age
    public void setAge(int age) {
        if(age > 0) {
            this.age = age;
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Person person = new Person();
        person.setName("Alice");
        person.setAge(30);
        System.out.println(person.getName() + " is " + person.getAge() + " years old.");
    }
}
        </code></pre>

        <h3>5. Abstraction</h3>
        <p><strong>Abstraction</strong> is the concept of hiding the complex implementation details and showing only the necessary features of an object. In Java, abstraction can be achieved using abstract classes and interfaces.</p>
        <p><strong>Example with Abstract Class:</strong></p>
        <pre><code>
public abstract class Vehicle {
    String brand;

    // Abstract method
    public abstract void honk();

    // Regular method
    public void displayBrand() {
        System.out.println("Brand: " + brand);
    }
}

public class Car extends Vehicle {
    @Override
    public void honk() {
        System.out.println("Car honks: Beep Beep!");
    }
}

public class Main {
    public static void main(String[] args) {
        Car car = new Car();
        car.brand = "Toyota";
        car.displayBrand(); // Output: Brand: Toyota
        car.honk();        // Output: Car honks: Beep Beep!
    }
}
        </code></pre>

        <h3>6. Interfaces</h3>
        <p><strong>Interfaces</strong> define a contract that classes can implement. They are used to achieve abstraction and multiple inheritances in Java.</p>
        <p><strong>Example:</strong></p>
        <pre><code>
public interface Animal {
    void eat();
    void sleep();
}

public class Dog implements Animal {
    @Override
    public void eat() {
        System.out.println("Dog is eating.");
    }

    @Override
    public void sleep() {
        System.out.println("Dog is sleeping.");
    }
}

public class Main {
    public static void main(String[] args) {
        Dog dog = new Dog();
        dog.eat();   // Output: Dog is eating.
        dog.sleep(); // Output: Dog is sleeping.
    }
}
        </code></pre>

        <h2>Benefits of OOP</h2>
        <ul>
            <li><strong>Modularity:</strong> The source code for a class can be written and maintained independently of the source code for other classes.</li>
            <li><strong>Reusability:</strong> Classes can be reused across programs.</li>
            <li><strong>Scalability:</strong> OOP systems can be scaled up easily from small to large systems.</li>
            <li><strong>Maintainability:</strong> Changes inside a class do not affect any other part of a program, provided the interface remains unchanged.</li>
        </ul>
        <a href="javaoopuiz.jsp" class="btn">Take a Quiz</a>
        <a href="index.jsp" class="btn-secondary">Go Back to Home</a>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Java Learning Platform. All rights reserved. | <a href="contact.jsp">Contact Us</a></p>
    </footer>

</body>
</html>
