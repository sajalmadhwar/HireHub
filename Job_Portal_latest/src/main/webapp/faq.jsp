<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ - Job Portal</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            color: #343a40;
        }
        .faq-header {
            background-color: #007bff;
            color: white;
            padding: 40px 0;
            text-align: center;
        }
        .faq-header h1 {
            font-size: 3rem;
            font-weight: 700;
        }
        .faq-section {
            padding: 60px 0;
        }
        .faq-section h2 {
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: 20px;
        }
        .faq-section p {
            font-size: 1.1rem;
            line-height: 1.8;
        }
        .faq-card {
            margin-bottom: 20px;
        }
        .faq-card-header {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            font-size: 1.2rem;
            font-weight: 600;
        }
        .faq-card-body {
            padding: 20px;
            background-color: #e9ecef;
        }
        .faq-card-body p {
            margin-bottom: 0;
        }
    </style>
</head>
<body>

    <!-- FAQ Header -->
    <header class="faq-header">
        <div class="container">
            <h1>Frequently Asked Questions (FAQ)</h1>
        </div>
    </header>

    <!-- FAQ Section -->
    <section class="faq-section">
        <div class="container">
            <div class="accordion" id="faqAccordion">

                <!-- FAQ 1 -->
                <div class="card faq-card">
                    <div class="card-header faq-card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="btn btn-link text-white" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                How do I create an account?
                            </button>
                        </h2>
                    </div>
                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#faqAccordion">
                        <div class="card-body faq-card-body">
                            <p>To create an account, click on the "Sign Up" button at the top right corner of the page. Fill in the required details, choose a username and password, and click "Register". You will receive a confirmation email to verify your account.</p>
                        </div>
                    </div>
                </div>

                <!-- FAQ 2 -->
                <div class="card faq-card">
                    <div class="card-header faq-card-header" id="headingTwo">
                        <h2 class="mb-0">
                            <button class="btn btn-link collapsed text-white" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                How can I apply for jobs?
                            </button>
                        </h2>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#faqAccordion">
                        <div class="card-body faq-card-body">
                            <p>Once you find a job that matches your qualifications, click on the "Apply Now" button on the job listing page. You will be prompted to upload your resume and cover letter. After submission, your application will be sent to the employer for review.</p>
                        </div>
                    </div>
                </div>

                <!-- FAQ 3 -->
                <div class="card faq-card">
                    <div class="card-header faq-card-header" id="headingThree">
                        <h2 class="mb-0">
                            <button class="btn btn-link collapsed text-white" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                How can I reset my password?
                            </button>
                        </h2>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#faqAccordion">
                        <div class="card-body faq-card-body">
                            <p>If you have forgotten your password, click on the "Forgot Password" link on the login page. Enter your registered email address, and you will receive a link to reset your password.</p>
                        </div>
                    </div>
                </div>

                <!-- FAQ 4 -->
                <div class="card faq-card">
                    <div class="card-header faq-card-header" id="headingFour">
                        <h2 class="mb-0">
                            <button class="btn btn-link collapsed text-white" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                How can I contact customer support?
                            </button>
                        </h2>
                    </div>
                    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#faqAccordion">
                        <div class="card-body faq-card-body">
                            <p>You can contact our customer support team by clicking on the "Contact Us" link at the bottom of the page. Fill in your query details, and our team will get back to you within 24 hours.</p>
                        </div>
                    </div>
                </div>

                <!-- FAQ 5 -->
                <div class="card faq-card">
                    <div class="card-header faq-card-header" id="headingFive">
                        <h2 class="mb-0">
                            <button class="btn btn-link collapsed text-white" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                How do I update my profile?
                            </button>
                        </h2>
                    </div>
                    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#faqAccordion">
                        <div class="card-body faq-card-body">
                            <p>To update your profile, log in to your account and go to the "My Profile" section. Here, you can edit your personal information, upload a new resume, and update your job preferences.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

