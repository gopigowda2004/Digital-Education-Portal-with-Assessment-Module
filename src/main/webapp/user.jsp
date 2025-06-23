<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>E-LEARNING PLATFORM</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
    @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css');

    body {
        margin: 0;
        padding: 0;
        font-family: 'Roboto', sans-serif;
        background-color: #f0f8ff;
        color: #444;
        line-height: 1.6;
    }

    /* Navbar Styling */
    .navbar {
        background-color: white;
        color: #ecf0f1;
        padding: 15px 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        position: sticky;
        top: 0;
        z-index: 1000;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
    }

    .navbar h1 {
        font-size: 1.8rem;
        margin: 0;
         color: #04aa6d;
    }

    .navbar a {
        color: #f0b90b;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 1rem;
        margin-left: 15px;
    }

    .navbar a:hover {
        background-color: #34495e;
    }

    .navbar .dropdown {
        position: relative;
        display: inline-block;
    }

    .navbar .dropdown-content {
        display: none;
        position: absolute;
        background-color: #2c3e50;
        min-width: 160px;
        box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
        z-index: 1;
    }

    .navbar .dropdown:hover .dropdown-content {
        display: block;
    }

    .navbar .dropdown-content a {
        color: #ecf0f1;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .navbar .dropdown-content a:hover {
        background-color: #34495e;
    }

    /* Hero Section */
    .hero {
        text-align: center;
        background: url('https://images.unsplash.com/photo-1593642634315-48f5414c3ad9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyMDg2N3wwfDF8c2VhcmNofDEwfHxjb21wdXRlcnxlbnwwfHx8fA&ixlib=rb-1.2.1&q=80&w=1080') no-repeat center center/cover;
        color: white;
        padding: 80px 20px;
        min-height: 350px;
        background-position: center;
    }

    .navbar h1 {
    font-size: 2rem; /* Adjust size for emphasis */
    margin: 0;
    color: #04aa6d; /* Vibrant color for the brand */
    font-weight: 700; /* Make it bold for prominence */
    text-transform: uppercase; /* Optional: Make it all caps */
    letter-spacing: 2px; /* Add spacing for a modern look */
    font-family: 'Roboto', sans-serif; /* Ensure it matches the font-family */
}
    
    }

    .hero p {
        font-size: 1.5rem;
        margin-top: 10px;
    }

    /* Main Section */
    .main {
        padding: 20px;
        display: flex;
        gap: 30px;
        flex-wrap: wrap;
        justify-content: center;
        margin-top: -50px;
    }

    .card {
        background: #fff;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 300px;
        transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    }

    .card:hover {
        transform: translateY(-10px);
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
    }

    .card i {
        font-size: 2.5rem;
        color: #007BFF;
        margin-bottom: 15px;
    }

    .card h2 {
        font-size: 1.6rem;
        margin: 10px 0;
        color: #333;
    }

    .card p {
        margin: 0 0 15px 0;
        color: #666;
    }

    .card a {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
        border-bottom: 2px solid #007BFF;
        padding-bottom: 5px;
    }

    .card a:hover {
        color: #0056b3;
        border-color: #0056b3;
    }

    /* Footer Section */
    footer {
        background: #2c3e50;
        color: #ecf0f1;
        text-align: center;
        padding: 25px;
        margin-top: 30px;
    }

    footer a {
        color: #007BFF;
        text-decoration: none;
    }

    footer a:hover {
        text-decoration: underline;
    }

    /* Modal Popup */
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.4);
        padding-top: 60px;
    }

    .modal-content {
        background-color: #fefefe;
        margin: 5% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
        max-width: 500px;
        border-radius: 10px;
    }

    .close {
        color: #aaa;
        font-size: 28px;
        font-weight: bold;
        position: absolute;
        right: 10px;
        top: 0;
    }

    .close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .hero h1 {
            font-size: 2.2rem;
        }

        .card {
            width: 90%;
        }
    }

    /* Search Bar */
    .search-bar {
        width: 100%;
        padding: 12px 15px;
        border-radius: 5px;
        border: 1px solid #ccc;
        margin-bottom: 20px;
        font-size: 1rem;
        transition: border-color 0.3s;
    }

    .search-bar:focus {
        border-color: #007BFF;
        outline: none;
    }
</style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <h1>E-LEARINIG</h1>
        <div>
            
            <a href="learntheory.jsp">Tutorials</a> 
            <a href="search.jsp">Courses</a>
            <a href="programming-quiz.jsp">Quiz</a>
            <a href="search.jsp">Certificates</a>
            <div class="dropdown">
                <a href="javascript:void(0)">Languages</a>
                <div class="dropdown-content">
                    <a href="java-learning.jsp">JAVA</a>
                    <a href="java-learning.jsp">C</a>
                    <a href="java-learning.jsp">Python</a>
                    <a href="java-learning.jsp">HTML</a>
                    <a href="java-learning.jsp">CSS</a>
                    <a href="java-learning.jsp">JAVA SCRIPT</a>
                    <a href="alltask">PHP</a>
                    <a href="create">BOOTSTRAP</a>
                    
                </div>
            </div>
        </div>
    </div>

    <!-- Hero Section -->
    <div class="hero">
        <h1>Welcome to E-Learning Platform</h1>
        <p>Your journey to mastering new skills begins here.</p>
    </div>

    <!-- Search Bar -->
    <div class="main">
        <input type="text" id="searchInput" class="search-bar" placeholder="Search for a course...">
    </div>

    <!-- Main Content -->
    <div class="main" id="coursesContainer">
        <div class="card">
            <i class="fas fa-book"></i>
            <h2>Learn Programming Theory</h2>
            <p>Explore a variety of courses tailored for you.</p>
            <a href="create">View</a>
        </div>
        <div class="card">
            <i class="fas fa-search"></i>
            <h2>Search</h2>
            <p>Find the resources and information you need.</p>
            <a href="search.jsp">Search Now</a>
        </div>
        <div class="card">
            <i class="fas fa-question-circle"></i>
            <h2>Quiz</h2>
            <p>Test your knowledge with our interactive quizzes.</p>
            <a href="programming-quiz.jsp">Start Quiz</a>
        </div>
        <div class="card">
            <i class="fas fa-code"></i>
            <h2>Java</h2>
            <p>Learn and practice Java programming.</p>
            <a href="java-learning.jsp">Learn Java</a>
        </div>
        <div class="card">
            <i class="fas fa-laptop-code"></i>
            <h2>C Programming</h2>
            <p>Master the fundamentals of C programming.</p>
            <a href="c.jsp">Learn C</a>
        </div>
        <div class="card">
            <i class="fab fa-python"></i>
            <h2>Python</h2>
            <p>Discover the versatility of Python programming.</p>
            <a href="create">Learn Python</a>
        </div>
    </div>

    <!-- Modal Popup for User Notification -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Welcome to E-learning platform</h2>
            <p>We are excited to have you on board. Explore and enjoy learning!</p>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 E-Learning Platform. All rights reserved. | <a href="contact.jsp">Contact Us</a> | <a href="https://www.facebook.com" target="_blank">Facebook</a> | <a href="https://www.twitter.com" target="_blank">Twitter</a></p>
    </footer>

    <script>
        // Modal Popup
        var modal = document.getElementById("myModal");
        var span = document.getElementsByClassName("close")[0];
        window.onload = function() {
            modal.style.display = "block";
        }
        span.onclick = function() {
            modal.style.display = "none";
        }
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        // Search functionality
        const searchInput = document.getElementById("searchInput");
        const coursesContainer = document.getElementById("coursesContainer");
        const courseCards = coursesContainer.getElementsByClassName("card");

        searchInput.addEventListener("input", function() {
            const filter = searchInput.value.toLowerCase();

            Array.from(courseCards).forEach(function(card) {
                const courseName = card.querySelector("h2").textContent.toLowerCase();
                if (courseName.includes(filter)) {
                    card.style.display = "block";
                } else {
                    card.style.display = "none";
                }
            });
        });
    </script>

</body>
</html>
