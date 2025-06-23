<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>
    <style type="text/css">
        /* Global Styles */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            color: #333;
            line-height: 1.6;
        }

        /* Header Styles */
        h1 {
            color: #fff;
            text-align: center;
            margin: 0;
            padding: 20px;
            background: linear-gradient(90deg, #ff6f61, #ffbc00);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Navigation Styling */
        .navbar {
            background-color: #333;
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 30px;
            font-size: 1.1rem;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #575757;
        }

        .search-bar {
            width: 250px;
            padding: 12px;
            border-radius: 30px;
            border: 1px solid #ddd;
            font-size: 1rem;
            outline: none;
            transition: all 0.3s ease;
        }

        .search-bar:focus {
            border-color: #ff6f61;
        }

        /* Main Content */
        .content {
            text-align: center;
            padding: 50px 20px;
        }

        .content h2 {
            font-size: 2.5rem;
            margin: 40px 0;
            font-weight: bold;
            color: #444;
        }

        /* Course Section */
        .course-card {
            background: #fff;
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            text-align: center;
            width: 300px;
            margin: 15px;
            display: inline-block;
            vertical-align: top;
            background: linear-gradient(180deg, #ffffff 0%, #f2f2f2 100%);
        }

        .course-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
        }

        .course-card h3 {
            font-size: 1.8rem;
            margin-top: 15px;
            color: #333;
            font-weight: bold;
        }

        .course-card p {
            color: #777;
            font-size: 1rem;
            margin-bottom: 20px;
            line-height: 1.5;
        }

        .course-card a {
            background-color: #ff6f61;
            color: #fff;
            text-decoration: none;
            padding: 12px 25px;
            border-radius: 25px;
            font-size: 1.1rem;
            transition: background-color 0.3s ease;
        }

        .course-card a:hover {
            background-color: #ffbc00;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        
        <div>
           
        </div>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h2>Programming quiz</h2>
        
        <!-- Course Categories -->
        <div class="course-card" data-course-name="Java">
            <h3>Java</h3>
            <p>Learn Java programming from basics to advanced concepts.</p>
            <a href="jquiz.jsp">Start Learning</a>
        </div>

        <div class="course-card" data-course-name="C Programming">
            <h3>C Programming</h3>
            <p>Master the fundamentals of C programming language.</p>
            <a href="c.jsp">Start Learning</a>
        </div>

        <div class="course-card" data-course-name="Python">
            <h3>Python</h3>
            <p>Discover the versatility of Python for data science and more.</p>
            <a href="create">Start Learning</a>
        </div>

        <div class="course-card" data-course-name="JavaScript">
            <h3>JavaScript</h3>
            <p>Learn the fundamentals of JavaScript for web development.</p>
            <a href="javascript">Start Learning</a>
        </div>

        <div class="course-card" data-course-name="Ruby">
            <h3>Ruby</h3>
            <p>Master Ruby programming for web development with Rails.</p>
            <a href="ruby.jsp">Start Learning</a>
        </div>

        <div class="course-card" data-course-name="PHP">
            <h3>PHP</h3>
            <p>Learn PHP for building dynamic web applications.</p>
            <a href="php.jsp">Start Learning</a>
        </div>

        <div class="course-card" data-course-name="Go">
            <h3>Go (Golang)</h3>
            <p>Get to know Go for efficient, concurrent programming.</p>
            <a href="go.jsp">Start Learning</a>
        </div>

        <div class="course-card" data-course-name="Swift">
            <h3>Swift</h3>
            <p>Learn Swift to build apps for iOS and macOS.</p>
            <a href="swift.jsp">Start Learning</a>
        </div>

        <div class="course-card" data-course-name="C#">
            <h3>C#</h3>
            <p>Master C# for building applications on .NET platform.</p>
            <a href="csharp.jsp">Start Learning</a>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Task Management System. All rights reserved. | <a href="contact">Contact Us</a></p>
    </footer>

    <script>
        // Get the search bar element and course cards
        const searchBar = document.getElementById("searchBar");
        const courseCards = document.querySelectorAll(".course-card");

        // Function to filter courses based on search input
        searchBar.addEventListener("input", function() {
            const searchQuery = searchBar.value.toLowerCase();

            courseCards.forEach(card => {
                const courseName = card.getAttribute("data-course-name").toLowerCase();
                if (courseName.includes(searchQuery)) {
                    card.style.display = "inline-block"; // Show the course card
                } else {
                    card.style.display = "none"; // Hide the course card
                }
            });
        });
    </script>

</body>
</html>
