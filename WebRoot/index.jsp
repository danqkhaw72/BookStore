<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="res/index/css/style.css">
	<link rel="stylesheet" media="screen and (max-width: 768px)" href="res/index/css/mobile.css">
	<link rel="stylesheet" media="screen and (min-width: 1100px)" href="res/index/css/widescreen.css">
	<title>BookStore</title>
</head>
<body id="home">
	<!--- Navbar -->
	<jsp:include page="res-jsp/header.jsp"/>
	<!--- Header: Showcase -->
	<header id="showcase">
		<div class="showcase-content">
			<h1 class="l-heading">
				A person who won’t read has no advantage over one who can’t read
			</h1>
			<p class="lead">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae voluptatibus debitis praesentium inventore, eum deserunt.
			</p>
			<a href="#what" class="btn">Read More</a>
		</div>
	</header>

	<!-- Section: What We Do -->
	<section id="what" class="bg-light py-1">
		<div class="container">
			<h2 class="m-heading text-center"><span class="text-primary">What </span>We Do</h2>
			<div class="items">
				<div class="item">
					<i class="fas fa-university fa-2x"></i>
					<div>
						<h3>Investment Banking</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed do eiusmod
						tempor!</p>
					</div>
				</div>
				<div class="item">
					<i class="fas fa-book-reader fa-2x"></i>
					<div>
						<h3>Portfolio Management</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed do eiusmod
						tempor!</p>
					</div>
				</div>
				<div class="item">
					<i class="fas fa-pencil-alt fa-2x"></i>
					<div>
						<h3>Tax & Custodial</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed do eiusmod
						tempor!</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Section: Who We Are -->
	<div class="container" style="margin-top:30px">
		<div class="row">
		  <div class="col-sm-4">
			<h4>Bạn chính là bác sĩ tốt nhất</h4>
			<h5>Y Học</h5>
			<div class="fakeimg"><img src="res/images/home/y7.jpg" alt="Trulli" width="200" height="250"></div>
			<p>Some text about me in culpa qui officia deserunt mollit anim..</p>
			
			<hr class="d-sm-none">
		  </div>
		  <div class="col-sm-4">
			<h4>Từ điển y học</h4>
			<h5>Y Học</h5>
			<div class="fakeimg"><img src="res/images/home/y8.jpg" alt="Trulli" width="200" height="250"></div>
			<p>Some text about me in culpa qui officia deserunt mollit anim..</p>
			
			<hr class="d-sm-none">
		  </div>
		  <div class="col-sm-4">
			<h4>Ca dao việt nam</h4>
			<h5>Ngôn ngữ</h5>
			<div class="fakeimg"><img src="res/images/home/v4.jpg" alt="Trulli" width="200" height="250"></div>
			<p>Some text about me in culpa qui officia deserunt mollit anim..</p>
			
			<hr class="d-sm-none">
		  </div>
		</div>
	  </div>

	<!-- Section: Clients -->
	<section id="clients" class="py-1">
		<div class="container">
			<h2 class="m-heading text-center">
				<span class="text-primary">Our</span> Clients
			</h2>
			<div class="items py-1">
				<div><img src="res/index/img/logo/logo1.png" alt="Client"></div>
				<div><img src="res/index//img/logo/logo2.png" alt="Client"></div>
				<div><img src="res/index//img/logo/logo3.png" alt="Client"></div>
				<div><img src="res/index//img/logo/logo4.png" alt="Client"></div>
				<div><img src="res/index//img/logo/logo5.png" alt="Client"></div>
			</div>
		</div>
	</section>

	<!-- Section: Contact -->
	<section id="contact">
		<div class="contact-form bg-prymary p-2">
			<h2 class="m-heading">Contact Us</h2>
			<p>Please use the form below to contact us</p>
			<form>
				<div class="form-group">
					<label for="name">Name</label>
					<input type="text" name="name" id="name" placeholder="Enter Name">
				</div>
				<div class="form-group">
					<label for="email">Email</label>
					<input type="email" name="email" id="email" placeholder="Enter Email">
				</div>
				<div class="form-group">
					<label for="phone">Phone Number</label>
					<input type="text" name="phone" id="phone" placeholder="Enter Phone Number">
				</div>
				<div class="form-group">
					<label for="message">Message</label>
					<textarea name="message" id="message" placeholder="Enter Message"></textarea>
				</div>
				<input type="submit" value="Send" class="btn btn-dark">
			</form>
		</div>
		<div class="map"></div>
	</section>

	<!-- Footer -->
	<jsp:include page="res-jsp/footer2.jsp"/>
</body>
</html>
