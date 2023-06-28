<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
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
			<h1 class="font-weight-semi-bold text-uppercase mb-3">FORGET PASSWORD</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">Forget Password</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Register Section Begin -->
	<div class="register-login-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<div class="login-form">
						<h5 class="text-danger">${message}</h5>
						<br>
						<form action="forgot-password" method="post" modelAttribute="ac">
							<div class="group-input">
								<label for="varify">Username *:</label> 
								<input class="form-control" type="text"
									id="varify" name="username">
							</div>
							<br>
							<div class="group-input">
								<label for="email">Email *:</label> 
								<input class="form-control" type="email" id="email"
									name="email">
							</div>
							<br>
							<button style="border-radius: 10px" type="submit" class="btn btn-dark">Send Mail</button>
						</form>
						<br>
						<div class="switch-login">
							<h5><a href="register" class="or-login">Or Create Account</a></h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Register Form Section End -->


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