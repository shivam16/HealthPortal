<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="ISO-8859-1">
<title>Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
       content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" media="all" />
<link rel="stylesheet" href="css/bjqs.css">
<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script src="js/bjqs-1.3.min.js"></script>
<script src="js/libs/jquery.secret-source.min.js"></script>

<script>
       jQuery(function($) {

              $('.secret-source').secretSource({
                     includeTag : false
              });

       });
</script>
<script class="secret-source">
       jQuery(document).ready(function($) {

              $('#banner-fade').bjqs({
                     height : 400,
                     width : 1000,
                     responsive : true
              });

       });
</script>
<link href="css/style2.css" rel='stylesheet' type='text/css' />

<script type="application/x-javascript">
       
       
       
       
       addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>

<link
       href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700'
       rel='stylesheet' type='text/css'>
<title>CLIENT LOGIN</title>
</head>
<body>
       <div class="header-bg">
              <div class="wrap">
                     <div class="logo">
                           <a href="index.html"><img src="images/logo.png" alt=""> </a>
                     </div>

                     <div class="clear"></div>
              </div>
       </div>
       <div class="clear"></div>
       <div class="nav1-bg">
              <div class="wrap">
                     <div class="nav">
                           <ul>
                                  <li><a href="index.html">Home</a></li>
                                  <li><a href="about.html">About Us</a></li>
                                  <li><a href="DoctorLogin.html">Doctor's Desk</a></li>
                                  <li class="active"><a href="UserLogin.html">Client Care</a></li>
                                  <li><a href="contact.html">Contact Us</a></li>
                           </ul>
                     </div>
                     <div class="clear"></div>
              </div>
       </div>
       <div class="login-form">
              <h1>Sign In</h1>
              <h2>
                     <a href="UserSignup.jsp">Register</a>
              </h2>
              <form action="/HealthPortal/user/login" method="POST">
                     <li><input type="text" class="text" name="email"
                           placeholder="Email id" value="deep@gmail.com"></li>
                     <li><input type="password" name="password" value="deep123"
                           placeholder="Password"></li>

                     <div class="forgot">

                           <input type="submit" value="Sign In"> <a href="#"
                                  class=" icon arrow"></a>

                     </div>
              </form>
       </div>

       <!--//End-login-form-->



       <!-----start-copyright--->
       <div class="copy-right" align="center">
              <pre>          <a href="about.html">@healthcare</a>
              </pre>
       </div>
       <!-----//end-copyright---->
</body>
</html>
