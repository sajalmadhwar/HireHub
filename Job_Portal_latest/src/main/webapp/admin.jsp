<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/adminwel.jpeg");
	width:100%;
	height:90vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<%
        // Retrieve userobj from session
        Object sessionUserObj = session.getAttribute("userobj");
        if (sessionUserObj == null || !"admin".equals(((user) sessionUserObj).getRole())) {
            response.sendRedirect("login.jsp");
        }
    %>
	<div class="container-fluid back-img">
	</div>
	 <%@include file="all_component/footer.jsp"%>
	
</body>
</html>