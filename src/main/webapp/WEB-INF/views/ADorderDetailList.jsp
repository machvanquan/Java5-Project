<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						<!-- Page wrapper  -->
						<div class="page-wrapper py-2">
							<!-- Container fluid  -->
							<div class="container-fluid">
								<!-- Sales Cards  -->
								<div class="row">
									<div class="col-md-10 offset-md-1">
										<div class="col row">
											<div class="col-3  alert alert-primary">
												<h3 class="text-center">Order</h3>
												<h5>ID: ${ord.id}</h5>
												<h5>Create Date: ${ord.createDate}</h5>
											</div>
												<div style="margin-top: 25px" class="col-6">
												<h3 class="alert alert-secondary">&ensp; Đã Xác Nhận <i class="fas fa-arrow-alt-circle-down float-right"></i></h3>
												<h3 class="alert alert-success">&ensp; Đang Giao Hàng <i class="fas fa-arrow-alt-circle-down float-right"></i></h3>
												<h3 class="alert alert-secondary">&ensp; Đã Nhận Hàng <i class="fas fa-arrow-alt-circle-down float-right"></i></h3>
												</div>
											<div class="col-3 alert alert-primary">
												<h3 class="text-center">Customer</h3>
												<h5>ID: ${ord.account.username }</h5>
												<h5>Name: ${ord.account.fullname }</h5>
												<h5>Address: ${ord.address }</h5>
												<h5>Email: ${ord.account.email }</h5>
											</div>
										</div>

										<table class="table text-center">
											<thead class="thead-dark">
												<tr>
													<th style="font-weight: bolder; font-size: 18px">OrderDetail
														ID</th>
													<th style="font-weight: bolder; font-size: 18px">Product
														Image</th>
													<th style="font-weight: bolder; font-size: 18px">Product
														ID</th>
													<th style="font-weight: bolder; font-size: 18px">Product
														Name</th>
													<th style="font-weight: bolder; font-size: 18px">Product
														Price</th>
													<th style="font-weight: bolder; font-size: 18px">Quantity</th>
													<th style="font-weight: bolder; font-size: 18px">Order
														ID</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${page.content}">
													<tr>
														<td>${item.id}</td>
														<td><img style="width: 70px"
															src="/images/${item.product.image}" alt=""
															width=50% /></td>
														<td>${item.product.id}</td>
														<td>${item.product.name}</td>
														<td>$${item.product.price}</td>
														<td>${item.quantity }</td>
														<td>${item.order.id}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- End Container fluid  -->
						</div>
						<!-- ============================================================== -->
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>