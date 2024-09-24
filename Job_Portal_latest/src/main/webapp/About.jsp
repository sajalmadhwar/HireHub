<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Job Portal</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            color: #343a40;
        }
        .about-section {
            background: #007bff;
            color: white;
            padding: 60px 0;
        }
        .about-section h1 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 30px;
        }
        .content-section {
            padding: 60px 0;
        }
        .content-section h2 {
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: 20px;
        }
        .content-section p {
            font-size: 1.1rem;
            line-height: 1.8;
            margin-bottom: 20px;
        }
        .content-section .highlight {
            color: #007bff;
            font-weight: 700;
        }
        .btn-custom {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
            text-transform: uppercase;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
        .contact-info {
            background: #343a40;
            color: white;
            padding: 40px 0;
        }
        .contact-info h3 {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <!-- About Section -->
    <section class="about-section text-center">
        <div class="container">
            <h1>About Us</h1>
            <p>Welcome to <span class="highlight">Hire Hub</span> – Your Gateway to Endless Career Opportunities</p>
        </div>
    </section>

    <!-- Content Section -->
    <section class="content-section">
        <div class="container">
            <h2>Who We Are</h2>
            <p>Founded in 2024, <span class="highlight">Job Portal</span> has quickly grown into one of the leading job portals, trusted by thousands of job seekers and employers alike. We are a team of dedicated professionals with a passion for connecting people with their dream jobs.</p>

            <h2>Our Mission</h2>
            <p>Our mission is simple: to empower job seekers by providing them with the tools, resources, and opportunities they need to succeed. We aim to support businesses in their quest for the best talent by offering a platform that makes recruitment efficient and straightforward.</p>

            <h2>What We Offer</h2>
            <p><strong>For Job Seekers:</strong> Extensive Job Listings, Personalized Job Alerts, Career Resources, Profile Management.</p>
            <p><strong>For Employers:</strong> Streamlined Recruitment, Candidate Search, Employer Branding, Applicant Tracking.</p>

            <h2>Why Choose Us?</h2>
            <p>We prioritize user experience, security, customer support, and continuous innovation to provide the best possible platform for both job seekers and employers.</p>

            <a href="contact.jsp" class="btn btn-custom">Contact Us</a>
        </div>
    </section>

    <!-- Contact Info Section -->
    <section class="contact-info text-center">
        <div class="container">
            <h3>Have questions or need assistance? Contact us at [Contact Information]</h3>
        </div>
    </section>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
