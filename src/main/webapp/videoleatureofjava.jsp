<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Lecture - Program Name</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            color: #333;
            transition: background-color 0.3s, color 0.3s;
        }

        h1 {
            text-align: center;
            color: #007bff;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .video-container {
            text-align: center;
            margin-bottom: 20px;
        }

        iframe {
            width: 80%;
            max-width: 900px;
            height: 500px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .description {
            font-size: 1.1rem;
            color: #555;
            line-height: 1.6;
            max-width: 800px;
            margin: 20px auto;
            text-align: center;
        }

        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            display: inline-block;
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 1rem;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        /* Progress bar styling */
        .progress-bar {
            width: 80%;
            max-width: 900px;
            margin: 20px auto;
            height: 10px;
            background-color: #ddd;
            border-radius: 5px;
            overflow: hidden;
        }

        .progress {
            width: 40%; /* Simulated progress - you can dynamically update this */
            height: 100%;
            background-color: #007bff;
            transition: width 0.3s ease-in-out;
        }

        /* Dark Mode Toggle */
        .dark-mode {
            background-color: #333;
            color: #f4f4f4;
        }

        .dark-mode h1 {
            color: #00bcd4;
        }

        .dark-mode .btn {
            background-color: #00bcd4;
        }

        .dark-mode .progress {
            background-color: #00bcd4;
        }

        /* Responsive Video */
        @media (max-width: 768px) {
            iframe {
                width: 100%;
                height: 300px;
            }
        }

        /* Feedback Form */
        .feedback-form {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .feedback-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .feedback-form button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        .feedback-form button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <h1>Program Video Lecture</h1>

    <!-- Dark Mode Toggle -->
    <div class="btn-container">
        <button class="btn" onclick="toggleDarkMode()">Toggle Dark Mode</button>
    </div>

    <!-- Video Player -->
    <div class="video-container">
        <iframe src="https://www.youtube.com/embed/bm0OyhwFDuY?si=zqjICcSnH18YvxSv" 
                frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
        </iframe>
    </div>

    <!-- Progress Bar -->
    <div class="progress-bar">
        <div class="progress"></div>
    </div>

    <div class="description">
        <p>Welcome to the video lecture on this program. In this lecture, we will cover key concepts and practical applications related to the course material.</p>
        <p>Follow along and download additional resources for better understanding.</p>
    </div>

    <!-- Downloadable Resources -->
    <div class="btn-container">
        <a href="resources/lecture_notes.pdf" class="btn" download>Download Lecture Notes</a>
        <a href="resources/example_programs.zip" class="btn" download>Download Example Programs</a>
    </div>

    <!-- Navigation Buttons -->
    <div class="btn-container">
        <button class="btn" onclick="previousVideo()">Previous Video</button>
        <button class="btn" onclick="nextVideo()">Next Video</button>
    </div>

    <!-- Feedback Form -->
    <div class="feedback-form">
        <h3>Provide Your Feedback</h3>
        <form action="submitFeedback.jsp" method="post">
            <textarea name="feedback" rows="5" placeholder="Share your thoughts..."></textarea><br>
            <button type="thankyou.jsp">Submit Feedback</button>
        </form>
    </div>

    <!-- Back Button -->
    <div class="btn-container">
        <a href="search.jsp" class="btn">Back to Programs</a>
    </div>

    <script>
        // Dark Mode Toggle Script
        function toggleDarkMode() {
            document.body.classList.toggle('dark-mode');
        }

        // Placeholder: Navigation Between Videos
        function previousVideo() {
            alert("Navigating to the previous video...");
            // Replace with actual logic for navigating videos
        }

        function nextVideo() {
            alert("Navigating to the next video...");
            // Replace with actual logic for navigating videos
        }
    </script>
</body>
</html>
