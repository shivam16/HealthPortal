
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>The Free Health-Care Portal | Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="<c:url value="/css/style.css" />" rel="stylesheet"
	media="all" />
<link rel="stylesheet" href="<c:url value="/css/bjqs.css" />">
<script
	src="<c:url value="http://code.jquery.com/jquery-1.7.1.min.js" />"></script>
<script src="<c:url value="/js/bjqs-1.3.min.js" />"></script>
<script src="<c:url value="/js/libs/jquery.secret-source.min.js" />"></script>
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
				<a href="<c:url value="index" />"><img
					src="<c:url value="/images/logo.png" />" alt="logo"> </a>
			</div>

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
	<div class="clear"></div>
	<div class="body-content">
		<div class="wrap">
			<div class="slider">
				<div id="container">
					<div id="banner-fade">
						<ul class="bjqs">
							<li><img src="<c:url value="/img/slide1.jpg" />" alt=""
								title="We have comprehensive health packages for our customers to provide routine diagnostic tests for all major illness. We also tailor health packages to meet customers requirement. Health Care also offers free of cost Doctor consultation after Complete Health Package."></li>
							<li><img src="<c:url value="/img/slide2.jpg" />" alt=""
								title="A contemporary facility equipped with advanced platforms for carrying out basic and translational research in the field of cancer and genetic diseases. Health Care provides contract laboratory and research services. We work closely with world-renowned experts-clinicians and researchers."></li>
							<li><img src="<c:url value="/img/slide3.jpg" />" alt=""
								title="Health Care is committed to innovation and excellence through its bio-marker driven research. Our key focus is discovery and validation of prognostic and diagnostic cancer bio-markers, understanding drug resistance and metastatic behavior, targeted drug delivery, stem cell therapy, dendritic cell therapy, genome analysis using “Next Generation Sequencing (NGS)”."></li>
						</ul>
						<!-- end Basic jQuery Slider -->
					</div>
				</div>
			</div>

			<div class="Cont-part2">
				<div class="wrap">
					<div class="cont-left">
						<h4>latest news</h4>

						<div class="grid-left">
							<div class="date">
								<img src="<c:url value="/images/prod-pic5.jpg" />" height="60"
									width="60" alt="">
							</div>
							<div class="nav-cont">
								<ul>
									<li><h6>Ready to serve</h6></li>
									<li><span>Sep 23.09.15</span></li>
								</ul>
							</div>
							<div class="clear"></div>
							<p>With resources touching virtually every facet of the
								healthcare spectrum, we stand ready to help serve the healthcare
								needs of the Indian Government's agencies and departments.</p>
						</div>
						<div class="grid-left">
							<div class="date">
								<img src="<c:url value="/images/prod-pic1.jpg" />" height="60"
									width="60" alt="">
							</div>
							<div class="nav-cont">
								<ul>
									<li><h6>Initiatives</h6></li>
									<li><span>Sep 15.09.15</span></li>
								</ul>
							</div>
							<div class="clear"></div>
							<p>The Health Care provides transformational medical
								technologies and services that are shaping a new age of patient
								care.</p>
						</div>
						<div class="grid-left">
							<div class="date">
								<img src="<c:url value="/images/prod-pic4.jpg" />" height="60"
									width="60" alt="">
							</div>
							<div class="nav-cont">
								<ul>
									<li><h6>Healthymagination</h6></li>
									<li><span>Sep 08.09.15</span></li>
								</ul>
							</div>
							<div class="clear"></div>
							<p>Healthymagination is our global initiative to provide
								better healthcare for more people around the world through
								innovations that lowers the cost, increases the access and
								improves the quality of healthcare.</p>
						</div>

					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<div class="footer-bg">
		<div class="wrap">
			<div class="footer">
				<div class="footer-link">
					<ul>
						<li><span> &copy; all rights reserved 2015
								&nbsp;|&nbsp;Design by</span> <a href="#">Aditi, Charul, Deepanshi,
								Kaushal & Shivam</a></li>
					</ul>
				</div>
				<div class="soc">
					<a href="#"><img src="<c:url value="/img/aditi.jpg" />"
						height="32px" width="32px" alt="" title="Aditi"></a> <a href="#"><img
						src="<c:url value="/img/charul.jpg" />" height="32px" width="32px"
						alt="" title="Charul"></a> <a href="#"><img
						src="<c:url value="/img/deepanshi.jpg" />" height="32px"
						width="32px" alt="" title="Deepanshi"></a> <a href="#"><img
						src="<c:url value="/img/kaushal.jpg" />" height="32px"
						width="32px" alt="" title="Kaushal"></a><img src="<c:url value="/img/shivam.jpg" />"
						height="32px" width="32px" alt="" title="Shivam"></a>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</body>
</html>
