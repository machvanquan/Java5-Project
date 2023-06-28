<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Order Detail</title>
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
			<h1 class="font-weight-semi-bold text-uppercase mb-3">My Order
				Detail</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">My order detail</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Shopping Cart Section Begin -->
	<section class="shopping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
						<table class="table table-striped">
							<thead class="thead-dark">
								<tr>
									<th>No.</th>
									<th>Product Image</th>
									<th>Product ID</th>
									<th>Product Name</th>
									<th>Product Price</th>
									<th>Quantity</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="i" value="0" />
								<c:forEach var="item" items="${page.content}">
									<tr>
										<td class="p-price text-dark">${i=i+1}</td>
										<td><img style="width: 60px" alt="" src="/images/${item.product.image}"></td>
										<td>${item.product.id}</td>
										<td>${item.product.name}</td>
										<td>$${item.product.price}</td>
										<td>${item.quantity}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
	</section>
	<!-- Shopping Cart Section End -->


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