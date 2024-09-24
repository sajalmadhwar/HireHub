<%@ page import="com.entity.job"%>
<%@ page import="java.util.List"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User View Jobs</title>
    <%@ include file="all_component/all_css.jsp"%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card:hover {
            transform: scale(1.03);
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }
        .card-header {
            background-color: #007bff;
            color: white;
            font-size: 1.25rem;
            padding: 10px 15px;
        }
        .card-body {
            background-color: #ffffff;
            padding: 20px;
        }
        .btn-success {
            background-color: #28a745;
            border: none;
            border-radius: 20px;
            transition: background-color 0.3s;
        }
        .btn-success:hover {
            background-color: #218838;
        }
        .custom-select {
            border-radius: 20px;
            border: 1px solid #ced4da;
            padding: 10px;
        }
        .form-inline {
            display: flex;
            justify-content: space-between;
        }
        .form-inline .form-group {
            flex: 1;
            margin-right: 10px;
        }
        .form-inline .form-group:last-child {
            margin-right: 0;
        }
        .alert-warning {
            background-color: #ffdd57;
            color: #212529;
        }
        .text-primary {
            color: #007bff !important;
        }
        .text-muted {
            color: #6c757d !important;
        }
    </style>
</head>
<body>

<%
    // Retrieve user object from session
    Object userobj1 = session.getAttribute("userobj");
    if (userobj1 == null) {
        response.sendRedirect("login.jsp");
        return; // Important to stop further execution
    }
%>

<%@ include file="all_component/navbar.jsp"%>
<div class="container my-4">
    <div class="row">
        <div class="col-md-12">
            <h5 class="text-center text-primary mb-4">Available Jobs</h5>

            <div class="card">
                <div class="card-body">
                    <form class="form-inline" action="more_view.jsp" method="get">
                        <div class="form-group col-md-5">
                            <h6>Location</h6>
                            <select class="custom-select ml-2" id="inlineFormCustomSelectPref" name="loc">
                                <option selected value="Lo">Choose...</option>
                                <option value="Odisha">Odisha</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Bhubaneswar">Bhubaneswar</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Bangalore">Bangalore</option>
                                <option value="Chennai">Chennai</option>
                                <option value="Hyderabad">Hyderabad</option>
                            </select>
                        </div>
                        <div class="form-group col-md-5">
                            <h6>Category</h6>
                            <select class="custom-select ml-2" id="inlineFormCustomSelectPref" name="cat">
                                <option value="ca" selected>Choose...</option>
                                <option value="IT">IT</option>
                                <option value="Developer">Developer</option>
                                <option value="Banking">Banking</option>
                                <option value="Engineer">Engineer</option>
                                <option value="Teacher">Teacher</option>
                            </select>
                        </div>
                        <button class="btn btn-success">Submit</button>
                    </form>
                </div>
            </div>

            <%
                JobDAO dao = new JobDAO(DBConnect.getConn());
                List<job> list = dao.getAllJobsForUser();
                for (job j : list) {
            %>
            <div class="card mt-3">
                <div class="card-header">
                    <i class="far fa-clipboard fa-2x"></i> Job Details
                </div>
                <div class="card-body">
                    <h6 class="text-primary"><%= j.getTitle() %></h6>
                    <%
                        if (j.getDescription().length() > 0 && j.getDescription().length() < 120) {
                    %>
                    <p><%= j.getDescription() %></p>
                    <%
                        } else {
                    %>
                    <p><%= j.getDescription().substring(0, 120) %>...</p>
                    <%
                        }
                    %>
                    <div class="form-row mb-3">
                        <div class="form-group col-md-6">
                            <input type="text" class="form-control form-control-sm" value="Location: <%= j.getLocation() %>" readonly>
                        </div>
                        <div class="form-group col-md-6">
                            <input type="text" class="form-control form-control-sm" value="Category: <%= j.getCategory() %>" readonly>
                        </div>
                    </div>
                    <p class="text-muted">Publish Date: <%= j.getPdate().toString() %></p>
                    <div class="text-center">
                        <a href="one_view.jsp?id=<%= j.getId() %>" class="btn btn-success">View More</a>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>

</body>
</html>

