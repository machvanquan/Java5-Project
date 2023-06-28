<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact</title>

<!-- CSS Start -->
<jsp:include page="template/css.jsp" />

</head>
<body>

	<!-- Topbar Start -->
	<jsp:include page="template/nav.jsp" />
	<!-- Topbar End -->

	<!-- Page Header Start -->
	<div class="container-fluid bg-secondary mb-5">
		<div
			class="d-flex flex-column align-items-center justify-content-center"
			style="min-height: 300px">
			<h1 class="font-weight-semi-bold text-uppercase mb-3">Contact Us</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">Contact</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Contact Start -->
	<div class="container-fluid pt-5">
		<div class="text-center mb-4">
			<h2 class="section-title px-5">
				<span class="px-2">Google Map</span>
			</h2>
		</div>
		<div class="text-center mb-8">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4435801915715!2d106.62350817558976!3d10.853827289299687!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752b684ce076f3%3A0x4da1cf0078f423fa!2zRlBUIFBvbHl0ZWNobmljIEjhu5MgQ2jDrSBNaW5oIC0gVG_DoCBU!5e0!3m2!1svi!2s!4v1685861709031!5m2!1svi!2s"
				width="70%" height="450" style="border: 0;" allowfullscreen=""
				loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		</div>
		<br>
		<br>
		<div class="text-center mb-4">
			<h2 class="section-title px-5">
				<span class="px-2">Contact For Any Queries</span>
			</h2>
		</div>
		<br>
		<div class="row px-xl-5">
			<div class="col-lg-7 mb-5">
				<div class="contact-form">
					<div id="success"></div>
					<form name="sentMessage" id="contactForm" novalidate="novalidate">
						<div class="control-group">
							<input type="text" class="form-control" id="name"
								placeholder="Your Name" required="required"
								data-validation-required-message="Please enter your name" />
							<p class="help-block text-danger"></p>
						</div>
						<div class="control-group">
							<input type="email" class="form-control" id="email"
								placeholder="Your Email" required="required"
								data-validation-required-message="Please enter your email" />
							<p class="help-block text-danger"></p>
						</div>
						<div class="control-group">
							<input type="text" class="form-control" id="subject"
								placeholder="Subject" required="required"
								data-validation-required-message="Please enter a subject" />
							<p class="help-block text-danger"></p>
						</div>
						<div class="control-group">
							<textarea class="form-control" rows="6" id="message"
								placeholder="Message" required="required"
								data-validation-required-message="Please enter your message"></textarea>
							<p class="help-block text-danger"></p>
						</div>
						<div>
							<button class="btn btn-primary py-2 px-4" type="submit"
								id="sendMessageButton">Send Message</button>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-5 mb-5">
				<h5 class="font-weight-semi-bold mb-3">Get In Touch</h5>
				<p>Justo sed diam ut sed amet duo amet lorem amet stet sea
					ipsum, sed duo amet et. Est elitr dolor elitr erat sit sit. Dolor
					diam et erat clita ipsum justo sed.</p>
				<div class="d-flex flex-column mb-3">
					<h5 class="font-weight-semi-bold mb-3">Store 1</h5>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street,
						New York, USA
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope text-primary mr-3"></i>info@example.com
					</p>
					<p class="mb-2">
						<i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890
					</p>
				</div>
				<div class="d-flex flex-column">
					<h5 class="font-weight-semi-bold mb-3">Store 2</h5>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street,
						New York, USA
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope text-primary mr-3"></i>info@example.com
					</p>
					<p class="mb-0">
						<i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Contact End -->


	<!-- Footer Start -->
	<jsp:include page="template/footer.jsp" />
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"> <i
		class="fa fa-angle-double-up"></i></a>

	<!-- JavaScript Libraries -->
	<jsp:include page="template/script.jsp" />



</body>
</html>