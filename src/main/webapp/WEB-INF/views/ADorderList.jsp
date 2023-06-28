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
										<table class="table table-striped text-center">
											<thead class="thead-dark">
												<tr>
													<th style="font-weight: bolder; font-size: 18px">Order
														ID</th>
													<th style="font-weight: bolder; font-size: 18px">Username</th>
													<th style="font-weight: bolder; font-size: 18px">Create
														Date</th>
													<th style="font-weight: bolder; font-size: 18px">Address</th>
													<th style="font-weight: bolder; font-size: 18px">Action</th>
													<th style="font-weight: bolder; font-size: 18px">Edit</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${page.content}">
													<tr>
														<td>${item.id}</td>
														<td>${item.account.username}</td>
														<td>${item.createDate}</td>
														<td>${item.address}</td>
														<td class="text-success"><a style="border-radius: 10px; font-size: 15px" class="btn btn-success btn-xs" href="/admin/orderDetail?id=${item.id}">Đang Giao Hàng</a></td>
														<td><a class='btn btn-danger btn-xs'
															style="border-radius: 10px; font-size: 15px" href="order/delete/${item.id}">
																<span class="glyphicon glyphicon-edit"></span> Hủy Đơn
														</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<hr />
										<div class="text-center">
											<a href="/admin/order?p=0" class="btn btn-primary">First</a>
											<a href="/admin/order?p=${page.number-1}"
												class="btn btn-primary">Previous</a> <a
												href="/admin/order?p=${page.number+1}"
												class="btn btn-primary">Next</a> <a
												href="/admin/order?p=${page.totalPages-1}"
												class="btn btn-primary">Last</a>
										</div>
										<hr />
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