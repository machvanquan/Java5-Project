<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
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
			<h1 class="font-weight-semi-bold text-uppercase mb-3">Profile</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">Profile</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Contact Section Begin -->
	<section class="contact-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3 ">
					<div class="contact-title">
						<h4>Your Profile</h4>
					</div>
					<div class="contact-widget">
						<div class="offset-3 col-6 pb-2">
							<img src="/images/${photo}" alt=""
								class=" img-thumbnail" />
						</div>

						<div class="cw-item">
							<div class="ci-icon">
								<i class="ti-user"></i>
							</div>
								<span>Username:</span><h3>${username}</h3>
						</div>
						<div class="cw-item">
							<div class="ci-icon">
								<i class="ti-face-smile"></i>
							</div>
							<div class="ci-text">
								<span>Fullname:</span>
								<h3>${fullname}</h3>
							</div>
						</div>
						<div class="cw-item">
							<div class="ci-icon">
								<i class="ti-email"></i>
							</div>
							<div class="ci-text">
								<span>Email:</span>
								<h3>${email}</h3>
							</div>
						</div>
						<div class="cw-item">
							<div class="ci-text col p-0 m-0 pr-4">
								<form action="/home/myorder" method="post">
									<input type="hidden" name="username" value="${username}"
										onblur="this.form.submit()">
									<button class="btn btn-dark text-light col"
										style="font-size: 20px; font-weight: bolder;">My
										Order</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

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