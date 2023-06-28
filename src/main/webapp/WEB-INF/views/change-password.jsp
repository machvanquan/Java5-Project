<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
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
			<h1 class="font-weight-semi-bold text-uppercase mb-3">CHANGE
				PASSWORD</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">Change Password</p>
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
						<form action="change-password" method="post">
							<h5 class="text-danger">${message }</h5>
							<div class="group-input">
								<label for="username">Username *</label> <input class="form-control" type="text"
									id="username" name="username">
							</div>
							<div class="group-input">
								<label for="pass">Password *</label><input class="form-control" type="password"
									id="password" name="password">
							</div>

							<div class="group-input">
								<label for="pass">New Password *</label><input class="form-control" type="password"
									id="newpassword" name="newpassword">
							</div>

							<div class="group-input">
								<label for="pass">Confirm New Password *</label> <input
									class="form-control" type="password" id="confirmpassword" name="confirmpassword">
							</div>
							<br>
							<button  style="border-radius: 10px" type="submit" class="btn btn-dark">Confirm</button>
						</form>
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