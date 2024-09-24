<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.JobDAO" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.job" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Jobs</title>
    <%@include file="all_component/all_css.jsp"%>
    <style>
        body {
            background-color: #f0f1f2;
        }

        .card {
            background-color: #ffffff;
            border: none;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            transition: transform 0.2s ease-in-out;
        }

        .card:hover {
            transform: translateY(-10px);
            background-color: #e3f2fd; /* Light blue background on hover */
        }

        .card h6 {
            font-size: 18px;
            font-weight: bold;
            color: #1a237e; /* Dark blue for title */
        }

        .card p {
            font-size: 14px;
            color: #37474f; /* Dark grey for description */
        }

        .form-group input {
            background-color: #e0f7fa; /* Light cyan for input fields */
            border: 1px solid #81d4fa; /* Light blue border */
            color: #01579b; /* Dark blue text */
        }

        .btn.bg-success {
            background-color: #66bb6a !important; /* Light green */
            border-color: #66bb6a !important;
        }

        .btn.bg-danger {
            background-color: #ef5350 !important; /* Light red */
            border-color: #ef5350 !important;
        }

        .btn.bg-success:hover, .btn.bg-danger:hover {
            opacity: 0.8;
        }

        .alert-success {
            background-color: #c8e6c9; /* Light green */
            color: #256029; /* Dark green text */
        }
    </style>
</head>
<body>
    <% 
        if (session.getAttribute("userobj") == null) { 
            response.sendRedirect("login.jsp");
        } 
    %>

    <%@include file="all_component/navbar.jsp"%>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h5 class="text-center text-primary">All Jobs</h5>
                <% 
                    String succMsg = (String) session.getAttribute("succMsg");
                    if (succMsg != null && !succMsg.isEmpty()) { 
                %>
                    <div class="alert alert-success" role="alert"> <%= succMsg %> </div>
                    <%
                        session.removeAttribute("succMsg");
                    %>
                <% 
                    } 
                %>

                <%
                    JobDAO dao = new JobDAO(DBConnect.getConn());
                    List<job> list = dao.getAllJobs();
                    for(job j : list) {
                %>
                    <div class="card mt-2">
                        <div class="card-body">
                            <div class="text-center text-primary">
                                <i class="far fa-clipboard fa-2x"></i>
                            </div>
                            <h6><%= j.getTitle() %></h6>
                            <p><%= j.getDescription() %></p>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Location: <%= j.getLocation() %>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Category: <%= j.getCategory() %>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Status: <%= j.getStatus() %>" readonly>
                                </div>
                            </div>
                            <h6>Publish Date: <%= j.getPdate() %></h6>
                            <div class="text-center">
                                <a href="edit_job.jsp?id=<%= j.getId() %>" class="btn btn-sm bg-success text-white">Edit</a> 
                                <a href="delete?id=<%= j.getId() %>" class="btn btn-sm bg-danger text-white">Delete</a>
                            </div>
                        </div>
                    </div>
                <% } %>
            </div>
        </div>
    </div>
     <%@include file="all_component/footer.jsp"%>
    
</body>
</html>

