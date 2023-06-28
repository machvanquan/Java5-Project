<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Detail</title>

<!-- CSS Start -->
<jsp:include page="template/css.jsp" />

</head>
<body>

	<!-- Topbar Start -->
	<jsp:include page="template/nav.jsp" />
	<!-- Topbar End -->

	<!-- Navbar Start -->
	<jsp:include page="template/slide.jsp" />
	<!-- Navbar End -->




<!-- Shopping Cart Section Begin -->
<section class="checkout-section spad">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="alert alert-success col row mx-1" role="alert">
  					Order Successfully!
				</div>
				<div class="mx-1 mb-2">
						<h5><strong>Order ID : </strong> ${order.id}</h5>
						<h5><strong>Name : </strong> ${order.account.fullname}</h5>
						<h5><strong>Address : </strong> ${order.address}</h5>
						<h5><strong>Email : </strong> ${order.account.email}</h5>
						<h5><strong>Create Date : </strong> ${order.createDate}</h5>
				</div>
				<br>
					<table class="table">
						<thead>
							<tr>
								<th>No.</th>
								<th>Product Name</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0"/>
							<c:forEach var="item" items="${items}">
								<input type="hidden" name="id" value="${item.id}">
								<tr>
									<td>${i=i+1}</td>
									<td class="cart-title first-row">
										<h5>${item.product.name}</h5>
									</td>
									<td class="p-price first-row">$ ${item.price}</td>
									<td class="p-price first-row">${item.quantity}</td>
									<td class="total-price first-row">$ ${item.price*item.quantity}</td>	
								</tr>
							</c:forEach>
						</tbody>
					</table>
				<div class="row">
					<div class="col-lg-4">
						<div class="cart-buttons">
							<strong><a href="/home/product" class="text text-dark continue-shop">&ensp;<i class="fas fa-arrow-left"></i>
							&ensp;Continue shopping</a></strong>
						</div>
					</div>
					<c:set var="total" value="${0}" />
					<c:forEach var="item" items="${items}">
						<c:set var="total" value="${total+(item.price*item.quantity) }" />
					</c:forEach>
					<div class="col-lg-4 offset-lg-4">
						<div class="proceed-checkout">
							<ul>
								<strong><li class="text text-darkcart-total">Total Ship : $ ${total+20} <span></span></li></strong>
							</ul>
						</div>
					</div>
				</div>
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