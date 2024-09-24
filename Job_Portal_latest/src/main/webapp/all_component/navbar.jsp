<%@ page import="com.entity.user" %>
<%
    // Retrieve the current session
    HttpSession currentSession = request.getSession(false); // Get the current session, but don't create a new one if it doesn't exist
    user userobj = null;
    if (currentSession != null) {
        userobj = (user) currentSession.getAttribute("userobj"); // Get userobj from session
    }
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">
    <i class="fas fa-briefcase"></i> HireHub
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fas fa-home"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      
      <% 
    if (userobj != null && userobj.getRole() != null && userobj.getRole().equals("admin")) { 
%>
    <li class="nav-item">
        <a class="nav-link" href="add_job.jsp"><i class="fa fa-plus-circle"></i> Post Job</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="view_job.jsp"><i class="fa fa-eye"></i> View Job</a>
    </li>
<% 
    } 
%>     
    </ul>
    <div class="form-inline">
        <%
            if (userobj != null && "admin".equals(userobj.getRole())) {
        %>
            <a href="login.jsp" class="btn btn-outline-light mr-2"><i class="fas fa-user-shield"></i> Admin</a>
            <a href="logout" class="btn btn-outline-light"><i class="fas fa-sign-out-alt"></i> Logout</a>
        <%
            }
            if (userobj != null && "user".equals(userobj.getRole())) {
        %>
            <a href="signup.jsp" class="btn btn-outline-light mr-2"><i class="fas fa-user"></i> <%= userobj.getName() %></a>
            <a href="logout" class="btn btn-outline-light"><i class="fas fa-sign-out-alt"></i> Logout</a>
        <%
            }
        %>         
        <%
            if (userobj == null) {
        %>
            <a href="login.jsp" class="btn btn-outline-light mr-2"><i class="fas fa-sign-in-alt"></i> Login</a>
            <a href="signup.jsp" class="btn btn-outline-light"><i class="fas fa-user-plus"></i> Signup</a>  
        <%
            }
        %>             
    </div>
  </div>
</nav>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          