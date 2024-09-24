<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <%@include file="all_component/all_css.jsp"%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            font-family: 'Arial', sans-serif;
        }
        .login-container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 20px;
        }
        .login-header {
            margin-bottom: 20px;
        }
        .login-header i {
            color: #007bff;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 16px;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .form-control {
            border-radius: 25px;
            border: 1px solid #ced4da;
            padding: 10px;
            font-size: 16px;
        }
        .form-group label {
            font-weight: bold;
            color: #333;
        }
        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
            border-color: #f5c6cb;
        }
    </style>
</head>
<body>
    <%@include file="all_component/navbar.jsp"%>
    <div class="container-fluid mt-5">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="login-container p-4">
                    <div class="login-header text-center mb-4">
                        <i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
                        <h5 class="mt-2">Login Page</h5>
                    </div>
                    <%
                        // Check if succMsg is not empty and display it
                        String succMsg = (String) request.getAttribute("succMsg");
                        if (succMsg != null && !succMsg.isEmpty()) {
                    %>
                        <div class="alert alert-danger text-center">
                            <%= succMsg %>
                        </div>
                    <%
                        request.removeAttribute("succMsg");
                        }
                    %>
                    <form action="login" method="post">
                        <div class="form-group">
                            <label for="email">Enter Email</label>
                            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Enter Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-top: 70px;">
        <%@include file="all_component/footer.jsp"%>
    </div>
</body>
</html>
