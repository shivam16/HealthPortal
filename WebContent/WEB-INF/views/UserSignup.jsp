<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">

<title>Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style5.css" rel="stylesheet" media="all" />
<link rel="stylesheet" href="css/bjqs.css">
<link rel="shortcut icon"
	href="http://static.tmimgcdn.com/img/favicon.ico">
<link rel="icon" href="http://static.tmimgcdn.com/img/favicon.ico">
<link rel="stylesheet" type="text/css" media="all" href="css/style6.css">
<link rel="stylesheet" type="text/css" media="all"
	href="cssup/switchery.min.css">

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
</head>
<body>
<div class="header-bg">
		<div class="wrap">
			<div class="logo">
				<a href="index"><img src="images/logo.png" alt=""> </a>
			</div>
			>
			<div class="clear"></div>
		</div>
	</div>
	<div class="clear"></div>
	<div class="nav1-bg">
		<div class="wrap">
			<div class="nav">
				<ul>
						<li class="active"><a href="index">Home</a></li>
					<li><a href="about">About Us</a></li>
					<li><a href="DoctorLogin">Doctor's Desk</a></li>
					<li><a href="UserLogin">Client Care</a></li>
					<li><a href="contact">Contact Us</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>


	<script type="text/javascript" src="jsup/switchery.min.js"></script>


	<div id="wrapper">

		<h1>Create your profile</h1>

		<form method="post" action="Process">
			<div class="col-2">
				<label> Name <input placeholder="What is your full name?"
					id="name" name="name" tabindex="1" required>
				</label>
			</div>
			<div class="col-2">
				<label> Address <input
					placeholder="Where do you live?" id="address"
					name="hospital" tabindex="2" required>
				</label>
			</div>

			<div class="col-3">
				<label> Phone Number <input
					placeholder="What is the best # to reach you?" id="phone"
					name="phone" tabindex="3" required>
				</label>
			</div>
			<div class="col-3">
				<label> City <input placeholder="What is your current city?"
					id="city" name="city" tabindex="3" required>
				</label>
			</div>
			<div class="col-3">
				<label> Email <input
					placeholder="What is your e-mail address?" id="email" name="email"
					tabindex="4" required>
				</label>
			</div>
			<div class="col-3">
				<label> Blood Group <select tabindex="5"
					name="bloodgroup" required>
						<option>A+</option>
						<option>A-</option>
						<option>B+</option>
						<option>B-</option>
						<option>AB+</option>
						<option>AB-</option>
						<option>O+</option>
						<option>O-</option>
						
				</select>
				</label>
			</div>

			<div class="col-3">
				<label> Gender <select tabindex="5" name="gender"
					required>
						<option>Male</option>
						<option>Female</option>
						
				</select>
				</label>
			</div>

			<div class="col-3">
				<label> password <input placeholder="Enter your password"
					id="pass" name="pass" tabindex="4" type="password" required>
				</label>
			</div>
			<div class="col-4">
				<label> Medical History <input
					placeholder="Any medical history if you have" id="medicalhistory"
					name="medicalhistory" tabindex="7" required>
				</label>
			</div>
			
			<div class="col-4">
				<label> Acute Diseases <input
					placeholder="Any acute disease if you have" id="acutedisease"
					name="acutedisease" tabindex="7" required>
				</label>
			</div>
			
			<div class="col-4">
				<label> Date of Birth <input
					placeholder="Your Date of Birth" id="dob"
					name="dob" tabindex="7" required>
				</label>
			</div>
			
			<div class="col-4">
				<label> Age <input
					placeholder="Age" id="age"
					name="acutedisease" tabindex="7" required>
				</label>
			</div>


			<div class="col-submit">
				<button class="submitbtn">Submit Form</button>
			</div>

		</form>
	</div>
	<script type="text/javascript">
		var elems = Array.prototype.slice.call(document
				.querySelectorAll('.js-switch'));

		elems.forEach(function(html) {
			var switchery = new Switchery(html);
		});
	</script>
</body>
</html>