
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="indexStyling.css">
<link rel="stylesheet" type="text/css" href="logoutstyle.css">
</head>

<body>
    <%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
    %>
  
  <div class="container">
        <h1>Welcome,<%= username %> !</h1>
        <p>Welcome to Atharva's Webpage🌟</p>
        <h3>Contact me on atharvamahajan2004@gmail.com 🚀</h3>
        <p>Feel free to stay as long as you like, and when you're ready,</p> 
      <div class="links">
        <a href="logout.jsp">LOGOUT</a> 
    </div>
    </div>
<%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>
