<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@taglib uri="http://www.springframework.org/tags" prefix="p" %>
<p:url value="resources/makercheckerlogin.css" var="k"/>
<link href="${k}" rel="stylesheet"/>
</head>
<body>
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first" style="width:200px;size:100px;">
      <img src="images/download.jpg" id="icon" alt="User Icon" />
    </div>
<!-- <form action="j_spring_security_check" method="post">
Login ID <input type="text" class="fadeIn second" name="j_username">
Password <input type="text" class="fadeIn third" name="j_password">
Role <input type="text" name="role">
<input type="submit" class="fadeIn fourth" value="LOGIN">
</form> -->

<form action="j_spring_security_check" method="post" >
      <input type="text" id="login" class="fadeIn second" name="j_username" placeholder="Userid" required>
      <input type="password" id="password" class="fadeIn third" name="j_password" placeholder="Password" required><br>
      <br>
      
      <input type="submit" class="fadeIn fourth" name ="button" value="Log In">
    </form>

<div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>

  </div>
</div>
</body>
</html>