<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Order</title>
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
			<h1 class="font-weight-semi-bold text-uppercase mb-3">My Order</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">My order</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Shopping Cart Section Begin -->
	<section class="shopping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
				<div class="alert alert-success col row mx-1" role="alert">
  					<h3>${message}</h3>
				</div>
						<table class="table table-striped">
							<thead class="thead-dark">
								<tr>
									<th>No.</th>
									<th>Order ID</th>
									<th>Create Date</th>
									<th>Address</th>
									<th>Order Details</th>
									<th>Edit</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="i" value="0" />
								<c:forEach var="item" items="${items}">
									<tr>
										<td class="p-price text-dark">${i=i+1}</td>
										<td class="p-price first-row">
											<h5>${item.id }</h5>
										</td>
										<td class="p-price text-dark first-row">${item.createDate}</td>
										<td class="cart-title first-row text-dark">${item.address}</td>
										<td class="total-price first-row"><a
											href="/home/myorderdetail?id=${item.id}"
											style="font-size: 14px">Order Detail</a></td>
										<td class="p-price text-dark"><a class="text text-dark" href="/home/myorder/delete/${item.id}">Hủy Đơn</a></td>
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