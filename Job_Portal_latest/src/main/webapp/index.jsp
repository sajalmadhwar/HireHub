<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <%@include file="all_component/all_css.jsp"%>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        .back-img {
            background: url("img/Designer.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            position: relative;
            height: 100vh;
            color: #fff;
        }
        .back-img::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Dark overlay */
        }
        .back-img .container {
            position: relative;
            z-index: 2;
        }
        .hero-text {
            text-align: center;
            padding-top: 150px; /* Adjust based on your image */
        }
        .hero-text h1 {
            font-size: 4rem;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .hero-text p {
            font-size: 1.5rem;
            margin-bottom: 30px;
        }
        .btn-custom {
            background-color: #007bff;
            color: #fff;
            border-radius: 30px;
            padding: 10px 30px;
            font-size: 16px;
        }
        .btn-custom:hover {
            background-color: #0056b3;
            color: #fff;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
        .card-img-top {
            border-radius: 10px 10px 0 0;
        }
        .card-body {
            padding: 20px;
        }
        .card-title {
            font-weight: bold;
            font-size: 1.25rem;
        }
        .card-text {
            color: #555;
        }
    </style>
</head>
<body>
    <%@include file="all_component/navbar.jsp"%>
    <div class="back-img d-flex justify-content-center align-items-center">
        <div class="container text-center hero-text">
            <h1>Welcome to JobPortal</h1>
            <p>Your gateway to top job opportunities and career advancement.</p>
            <a href="browse_jobs.jsp" class="btn btn-custom">Browse Jobs</a>
        </div>
    </div>
    <div class="container my-5">
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/img1.png" class="card-img-top" alt="Job 1">
                    <div class="card-body">
                        <h5 class="card-title">Find Your Dream Job</h5>
                        <p class="card-text">Explore a wide range of job listings and find the perfect match for your skills and interests.</p>
                        <a href="view_job.jsp" class="btn btn-custom">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/img2.jpg" class="card-img-top" alt="Job 2">
                    <div class="card-body">
                        <h5 class="card-title">Post a Job</h5>
                        <p class="card-text">Reach out to a pool of talented candidates by posting your job openings on our platform.</p>
                        <a href="add_job.jsp" class="btn btn-custom">Post Job</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/img4.jpeg" class="card-img-top" alt="Job 3">
                    <div class="card-body">
                        <h5 class="card-title">Get Career Advice</h5>
                        <p class="card-text">Access valuable resources and advice to help you advance your career and achieve your goals.</p>
                        <a href="blog.jsp" class="btn btn-custom">Get Advice</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="all_component/footer.jsp"%>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
                                                                                                