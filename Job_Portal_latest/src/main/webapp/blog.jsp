<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog - Job Portal</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            color: #343a40;
        }
        .blog-header {
            background-color: #007bff;
            color: white;
            padding: 40px 0;
            text-align: center;
        }
        .blog-header h1 {
            font-size: 3rem;
            font-weight: 700;
        }
        .blog-header p {
            font-size: 1.2rem;
            font-weight: 300;
        }
        .container {
            margin-top: 30px;
        }
        .post-preview {
            margin-bottom: 40px;
        }
        .post-preview h2 {
            font-size: 2rem;
            font-weight: 600;
            color: #007bff;
        }
        .post-preview p {
            font-size: 1.1rem;
            line-height: 1.8;
        }
        .post-meta {
            font-size: 0.9rem;
            color: #6c757d;
        }
        .featured-post {
            background-color: #e9ecef;
            padding: 30px;
            border-radius: 8px;
            margin-bottom: 30px;
        }
        .featured-post h2 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 20px;
        }
        .featured-post p {
            font-size: 1.2rem;
            line-height: 1.8;
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
        .pagination {
            justify-content: center;
        }
    </style>
</head>
<body>

    <!-- Blog Header -->
    <header class="blog-header">
        <div class="container">
            <h1>Our Blog</h1>
            <p>Insights, updates, and tips from the world of job search and recruitment</p>
        </div>
    </header>

    <!-- Featured Post -->
    <section class="container">
        <div class="featured-post">
            <h2>Top 10 Tips for Acing Your Job Interview</h2>
            <p>Preparing for a job interview can be nerve-wracking, but with the right approach, you can present your best self to potential employers. Here are the top 10 tips to help you succeed...</p>
            <a href="post.jsp?id=1" class="btn btn-custom">Read More</a>
        </div>
    </section>

    <!-- Blog Posts -->
    <section class="container">
        <div class="row">
            <!-- Post 1 -->
            <div class="col-md-6">
                <div class="post-preview">
                    <h2>How to Create a Resume that Stands Out</h2>
                    <p>Your resume is your first chance to make an impression on potential employers. Learn how to create a resume that captures attention...</p>
                    <p class="post-meta">Posted on July 21, 2024 by <a href="#">Admin</a></p>
                    <a href="post.jsp?id=2" class="btn btn-custom">Read More</a>
                </div>
            </div>
            <!-- Post 2 -->
            <div class="col-md-6">
                <div class="post-preview">
                    <h2>5 Strategies for Successful Remote Work</h2>
                    <p>As remote work becomes more common, it's important to develop strategies that help you stay productive and maintain a work-life balance...</p>
                    <p class="post-meta">Posted on July 15, 2024 by <a href="#">Admin</a></p>
                    <a href="post.jsp?id=3" class="btn btn-custom">Read More</a>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Post 3 -->
            <div class="col-md-6">
                <div class="post-preview">
                    <h2>Networking Tips for Job Seekers</h2>
                    <p>Networking is a critical skill for job seekers. Discover the best practices for building and leveraging your professional network...</p>
                    <p class="post-meta">Posted on July 10, 2024 by <a href="#">Admin</a></p>
                    <a href="post.jsp?id=4" class="btn btn-custom">Read More</a>
                </div>
            </div>
            <!-- Post 4 -->
            <div class="col-md-6">
                <div class="post-preview">
                    <h2>The Future of Work: Trends to Watch</h2>
                    <p>The job market is constantly evolving. Stay ahead of the curve by exploring the key trends shaping the future of work...</p>
                    <p class="post-meta">Posted on July 5, 2024 by <a href="#">Admin</a></p>
                    <a href="post.jsp?id=5" class="btn btn-custom">Read More</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Pagination -->
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">Previous</a>
            </li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#">Next</a>
            </li>
        </ul>
    </nav>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
