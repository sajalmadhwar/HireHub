<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList "%>
<%@page import="com.entity.job "%>
<%@page import="java.util.List "%>
<%@page import="com.DB.DBConnect "%>
<%@page import="com.dao.JobDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User : View Jobs</title>
<%@include file="all_component/all_css.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #e9ecef;
    }
    .card {
        border-radius: 15px;
        overflow: hidden;
        border: none;
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        transition: transform 0.2s ease-in-out;
    }
    .card:hover {
        transform: scale(1.05);
    }
    .card-header {
        background-color: #007bff;
        color: white;
        padding: 10px 15px;
        font-size: 1.25rem;
    }
    .card-body {
        background-color: #fff;
        padding: 20px;
    }
    .badge-info {
        background-color: #17a2b8;
    }
    .badge-secondary {
        background-color: #6c757d;
    }
    .alert-warning {
        background-color: #ffeb3b;
        color: #212529;
    }
    .btn-success {
        background-color: #28a745;
        border: none;
        border-radius: 20px;
    }
    .btn-success:hover {
        background-color: #218838;
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
    Object userobj1 = session.getAttribute("userobj");
    if (userobj1 == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<%@include file="all_component/navbar.jsp"%>
<div class="container my-4">
    <div class="row">
        <div class="col-md-12">
            <h5 class="text-center text-primary mb-4">Available Jobs</h5>

            <%
            String loc = request.getParameter("loc");
            String cat = request.getParameter("cat");
            String msg = "";
            JobDAO dao = new JobDAO(DBConnect.getConn());
            List<job> list = new ArrayList<job>();

            if (loc != null && !loc.isEmpty() && cat != null && !cat.isEmpty()) {
                list = dao.getJobsANDLocationAndCat(cat, loc);
            } else {
                msg = "Job Not Available";
            }

            if (list == null || list.isEmpty()) {
            %>
            <div class="alert alert-warning text-center">
                <strong><i class="fas fa-exclamation-triangle"></i> No Jobs Available</strong>
            </div>
            <%
            } else {
                %>
                <div class="card-deck">
                <%
                for (job j : list) {
                %>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="far fa-clipboard fa-2x"></i> Job Details
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-primary"><%=j.getTitle()%></h5>
                        <p class="card-text"><%=j.getDescription()%></p>
                        <div class="d-flex justify-content-between mb-3">
                            <span class="badge badge-info">Location: <%=j.getLocation()%></span>
                            <span class="badge badge-secondary">Category: <%=j.getCategory()%></span>
                        </div>
                        <p class="text-muted">Publish Date: <%=j.getPdate().toString()%></p>
                        <div class="text-center">
                            <a href="one_view.jsp?id=<%=j.getId()%>" class="btn btn-success">View Job</a>
                        </div>
                    </div>
                </div>
                <%
                }
                %>
                </div>
            <%
            }
            %>
        </div>
    </div>
</div>

</body>
</html>


