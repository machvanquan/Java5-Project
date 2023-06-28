<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<!-- CSS Start -->
<jsp:include page="template/ADcss.jsp" />

</head>
<body>

	<div class="dashboard-main-wrapper">
	<jsp:include page="template/ADheader.jsp" />
	<jsp:include page="template/ADaside.jsp" />

		<div class="dashboard-wrapper">
			<div class="dashboard-ecommerce">
				<div class="container-fluid dashboard-content ">
					<div class="ecommerce-widget">
					<!-- ============================================================== -->
					<!-- Page Header Start -->
	<div class="container-fluid bg-white mb-5">
		<div
			class="d-flex flex-column align-items-center justify-content-center"
			style="min-height: 200px">
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
					</div>
				</div>
			</div>
		</div>
	</section>
					<!-- ============================================================== -->
					</div>
				</div>
			</div>
		</div>
	</div>
	


</body>
</html>