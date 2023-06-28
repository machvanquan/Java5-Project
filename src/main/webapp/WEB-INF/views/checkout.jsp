<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Out</title>

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
			<h1 class="font-weight-semi-bold text-uppercase mb-3">Check Out</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">Check out</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Checkout Start -->
	<div class="container-fluid pt-5">
		<form action="/home/order-detail" method="post">
		<div class="row px-xl-5">
			<div class="col-lg-8">
				<div class="mb-4">
					<h4 class="font-weight-semi-bold mb-4">Billing Address</h4>
					<div class="row">
						<div class="col-md-6 form-group">
							<label>First Name</label> <input name="name" class="form-control" type="text"
								placeholder="John">
						</div>
						<div class="col-md-6 form-group">
							<label class="text text-danger">Address</label> 
							<input name="address" class="form-control"
								type="text" placeholder="123 Street">
						</div>
						<div class="col-md-6 form-group">
							<label>Country</label> <select class="custom-select">
								<option selected>Quốc Tịch</option>
								<option>Việt Nam</option>
								<option>Hoa Kì</option>
								<option>Algeria</option>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label>City</label> <input class="form-control" type="text"
								placeholder="New York">
						</div>
						<div class="col-md-6 form-group">
							<label>ZIP Code</label> <input class="form-control" type="text"
								placeholder="123">
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="card border-secondary mb-5">
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">Order Total</h4>
					</div>
					<div class="card-body">
						<h5 class="font-weight-medium mb-3">Products</h5>					
						<c:forEach var="item" items="${cart.items}">
						<div class="d-flex justify-content-between">
								<p>${item.name}  x  ${item.qty}</p>
								<p>${item.price * item.qty}</p>
						</div>
						</c:forEach>
						<hr class="mt-0">
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
					</div>
				</div>
				<div class="card border-secondary mb-5">
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">Payment</h4>
					</div>
					<div class="card-body">
						<div class="form-group">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment"
									id="paypal"> <label class="custom-control-label"
									for="paypal">Paypal</label>
							</div>
						</div>
						<div class="form-group">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment"
									id="directcheck"> <label class="custom-control-label"
									for="directcheck">Direct Check</label>
							</div>
						</div>
						<div class="">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment"
									id="banktransfer"> <label class="custom-control-label"
									for="banktransfer">Bank Transfer</label>
							</div>
						</div>
					</div>
					<div class="card-footer border-secondary bg-transparent">
						<c:if test="${isLogin}">
							<button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3">Place Order</button>			
						</c:if>
						<c:if test="${!isLogin}">
							<a href="/home/login" class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3" class="text-dark">Place Order</a>	
						</c:if>			
					</div>
				</div>
			</div>
		</div>
			</form>
	</div>
	<!-- Checkout End -->

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