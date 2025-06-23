<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Program Overview</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
            margin: 0;
            color: #333;
        }

        h1 {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 30px;
            color: #007bff;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
        }

        .program-card {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            width: 16%; /* Adjusted to 22% for better spacing */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .program-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .program-card img {
            width: 60px;
            height: 60px;
            margin-bottom: 15px;
        }

        .program-card h3 {
            color: #333;
            font-size: 1.7rem;
            font-weight: bold;
        }

        .program-card p {
            color: #666;
            font-size: 1rem;
            margin-bottom: 15px;
        }

        .btn {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 1rem;
            margin-top: 10px;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .btn-download {
            background-color: #28a745;
        }

        .btn-download:hover {
            background-color: #218838;
        }

        /* Responsive adjustments */
        @media (max-width: 1200px) {
            .program-card {
                width: 30%;
            }
        }

        @media (max-width: 800px) {
            .program-card {
                width: 45%;
            }
        }

        @media (max-width: 600px) {
            .program-card {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <h1>Our Programs</h1>
    <div class="container">
        <!-- Academy (Software Development) Program Card -->
        <div class="program-card">
            <img src="https://via.placeholder.com/50" alt="Software Development Icon">
            <h3>Academy (Software Development)</h3>
            <p>Min. work exp: 1 year</p>
            <p>Duration: 9–12 months</p>
            <p>1 Capstone project</p>
            <a href="videoleatureofjava.jsp" class="btn">Go to Program</a>
            <a href="" class="btn btn-download">Brochure</a>
        </div>

        <!-- Data Science & Machine Learning Program Card -->
        <div class="program-card">
            <img src="https://via.placeholder.com/50" alt="Data Science & ML Icon">
            <h3>Data Science & Machine Learning</h3>
            <p>Min. work exp: 1 year</p>
            <p>Duration: 7–18 months</p>
            <p>50+ real-world case studies</p>
            <a href="video-lecture-data-science.html" class="btn">Go to Program</a>
            <a href="#" class="btn btn-download">Brochure</a>
        </div>

        <!-- DevOps Program Card -->
        <div class="program-card">
            <img src="https://via.placeholder.com/50" alt="DevOps Icon">
            <h3>DevOps</h3>
            <p>Min. work exp: 1 year</p>
            <p>Duration: 12–16 months</p>
            <p>Real-world assignments</p>
            <a href="video-lecture-devops.html" class="btn">Go to Program</a>
            <a href="#" class="btn btn-download">Brochure</a>
        </div>

        <!-- Cloud Computing Program Card -->
        <div class="program-card">
            <img src="https://via.placeholder.com/50" alt="Cloud Computing Icon">
            <h3>Cloud Computing</h3>
            <p>Min. work exp: 1 year</p>
            <p>Duration: 10–14 months</p>
            <p>Real-world cloud projects</p>
            <a href="video-lecture-cloud-computing.html" class="btn">Go to Program</a>
            <a href="#" class="btn btn-download">Brochure</a>
        </div>
    </div>

    <div class="container">
        <!-- Cybersecurity Program Card -->
        <div class="program-card">
            <img src="https://via.placeholder.com/50" alt="Cybersecurity Icon">
            <h3>Cybersecurity</h3>
            <p>Min. work exp: 1 year</p>
            <p>Duration: 8–12 months</p>
            <p>Hands-on training</p>
            <a href="video-lecture-cybersecurity.html" class="btn">Go to Program</a>
            <a href="#" class="btn btn-download">Brochure</a>
        </div>

        <!-- AI & Robotics Program Card -->
        <div class="program-card">
            <img src="https://via.placeholder.com/50" alt="AI & Robotics Icon">
            <h3>AI & Robotics</h3>
            <p>Min. work exp: 1 year</p>
            <p>Duration: 10–15 months</p>
            <p>Capstone project & research</p>
            <a href="video-lecture-ai-robotics.html" class="btn">Go to Program</a>
            <a href="#" class="btn btn-download">Brochure</a>
        </div>

        <!-- Blockchain Program Card -->
        <div class="program-card">
            <img src="https://via.placeholder.com/50" alt="Blockchain Icon">
            <h3>Blockchain</h3>
            <p>Min. work exp: 1 year</p>
            <p>Duration: 12–18 months</p>
            <p>Hands-on projects</p>
            <a href="video-lecture-blockchain.html" class="btn">Go to Program</a>
            <a href="#" class="btn btn-download">Brochure</a>
        </div>

        <!-- Digital Marketing Program Card -->
        <div class="program-card">
            <img src="https://via.placeholder.com/50" alt="Digital Marketing Icon">
            <h3>Digital Marketing</h3>
            <p>Min. work exp: 1 year</p>
            <p>Duration: 6–12 months</p>
            <p>Campaign creation & analysis</p>
            <a href="video-lecture-digital-marketing.html" class="btn">Go to Program</a>
            <a href="#" class="btn btn-download">Brochure</a>
        </div>
    </div>
</body>
</html>
