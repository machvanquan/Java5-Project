<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

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
			<h1 class="font-weight-semi-bold text-uppercase mb-3">LOGIN</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">Login</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->


	<!-- Register Section Begin -->
	<div class="register-login-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 offset-lg-4">
					<div class="login-form">
						<form action="login" method="post">
							<h5 class="text-danger">${message}</h5>
							<div class="group-input">
								<label for="username">Username *: </label> <br>
								<input class="form-control" type="text" id="username" name="username">
							</div>
							<br>
							<div class="group-input">
								<label for="pass">Password *: </label>
								<br> 
								<input class="form-control" type="password" id="password" name="password">
							</div>
							<div class="group-input gi-check">
								<div class="gi-more">
								<br>
								<input type="checkbox" name="remember" id="save-pass"><span class="checkmark"></span>			
								<label for="save-pass">Remember me ?</label> <a href="forgot-password" style="float: right;" class="forget-pass">Forget your Password</a>
								<br>
								</div>
							</div>
							<br>
							<button style="border-radius: 10px" type="submit" class="btn btn-dark">Sign In</button>
						</form>
						<br>
						<div class="switch-login">
							<a href="register" class="or-login">Or Create An Account</a>
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
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>
	<!-- JavaScript Libraries -->
	<jsp:include page="template/script.jsp" />

</body>
</html>