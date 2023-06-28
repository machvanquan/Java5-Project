<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>

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
			<h1 class="font-weight-semi-bold text-uppercase mb-3">Shopping
				Cart</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">Shopping Cart</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Cart Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5">
			<div class="col-lg-8 table-responsive mb-5">
				<table class="table table-bordered text-center mb-0">
					<thead class="bg-secondary text-dark">
						<tr>
							<th>Image</th>
							<th>Name</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Total</th>
							<th>Remove</th>
						</tr>
					</thead>
					<tbody class="align-middle">
						<c:forEach var="item" items="${cart.items}">
							<form action="/home/cart/update" method="post">
								<input type="hidden" name="id" value="${item.id}">
								<tr>
									<td><img alt="" style="width: 60px" src="/images/${item.image}"> </td>
									<td class="align-middle">${item.name}</td>
									<td class="align-middle">${item.price}</td>
									<td class="align-middle"><a class="btn btn-sm btn-primary"
										href="/home/cart/sub/${item.id}"> - </a> <input
										disabled="disabled" onblur="this.form.submit()" name="qty"
										value="${item.qty}" min="0" class="text-center"
										style="width: 50px; height: 30px; font-size: 18px; border: none">
										<a class="btn btn-sm btn-primary"
										href="/home/cart/add/${item.id}"> + </a></td>
									<td class="align-middle">${item.price * item.qty}</td>
									<td class="align-middle"><a class="btn btn-sm btn-primary"
										href="/home/cart/remove/${item.id}"> <i
											class="fa fa-times"></i></a></td>
								</tr>
							</form>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-lg-4">
				<div class="card border-secondary mb-5">
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
					</div>
					<div class="card-body">
						<div class="d-flex justify-content-between mb-3 pt-1">
							<h6 class="font-weight-medium">Subtotal</h6>
							<h6 class="font-weight-medium">$ ${cart.total}</h6>
						</div>
						<div class="d-flex justify-content-between">
							<h6 class="font-weight-medium">Shipping</h6>
							<h6 class="font-weight-medium">$ 20.0</h6>
						</div>
					</div>
					<div class="card-footer border-secondary bg-transparent">
						<div class="d-flex justify-content-between mt-2">
							<h5 class="font-weight-bold">Total</h5>
							<h5 class="font-weight-bold">$ ${cart.total + 20}</h5>
						</div>
						<a href="/home/checkout" class="btn btn-block btn-primary my-3 py-3">Order
							To Checkout</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="cart-buttons">
				<a href="/home/product" class="btn btn-dark continue-shop">Continue Shopping</a>
				<a href="/home/cart/clear" class="btn btn-dark up-cart">Clear cart</a>
			</div>
		</div>
	</div>
	<!-- Cart End -->

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