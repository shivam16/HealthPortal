<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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

<link href="css/style2.css" rel='stylesheet' type='text/css' />



<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700'
	rel='stylesheet' type='text/css'>

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
					<li class="active"><a href="DoctorLogin.html">Doctor's
							Desk</a></li>
					<li><a href="UserLogin.html">Client Care</a></li>
					<li><a href="contact.html">Contact Us</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div align="center" class="profile">
		<br> <br> <font size="30px"><strong>My
				Profile</strong></font> <br> <br>


		<ul type="square">
			<jsp:useBean id="userBean" class="model.DoctorUser" scope="session" />
			<li>Name: <jsp:getProperty property="name" name="userBean" /><br>
				<br></li>
			<li>Specialization:<jsp:getProperty property="specialization"
					name="userBean" /><br> <br></li>
			<li>Years Of Experience:<jsp:getProperty property="yrs_exp"
					name="userBean" /><br> <br></li>
			<li>Email ID: <jsp:getProperty property="email" name="userBean" /><br>
				<br></li>
			<li>Hospital: <jsp:getProperty property="hospital"
					name="userBean" /><br> <br></li>
			<li>Contact No.:<jsp:getProperty property="contact_no"
					name="userBean" /><br> <br></li>
			<li>City:<jsp:getProperty property="city" name="userBean" /><br>
				<br></li>
			<li>Availability:<jsp:getProperty property="availability"
					name="userBean" /><br> <br></li>

		</ul>
	</div>
</body>
</html>