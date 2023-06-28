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
													<th style="font-weight: bolder; font-size: 18px">Product
														ID</th>
													<th style="font-weight: bolder; font-size: 18px">Product
														Name</th>
													<th style="font-weight: bolder; font-size: 18px">Image</th>
													<th style="font-weight: bolder; font-size: 18px">Price</th>
													<th style="font-weight: bolder; font-size: 18px">CreateDate</th>
													<th style="font-weight: bolder; font-size: 18px">Available</th>
													<th style="font-weight: bolder; font-size: 18px">Category
														ID</th>
													<th style="font-weight: bolder; font-size: 18px">Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${page.content}">
													<tr>
														<td>${item.id}</td>
														<td>${item.name}</td>
														<td><img src="/forUser/img/products/${item.image }"
															alt="" width=50% /></td>
														<td>${item.price}</td>
														<td>${item.createDate}</td>
														<td>${item.available}</td>
														<td>${item.category.name}</td>
														<td><a class='btn btn-dark btn-xs'
															style="font-size: 14px" href="product/edit/${item.id}">
																<span class="glyphicon glyphicon-edit"></span> Edit
														</a> <a href="product/delete/${item.id}"
															style="font-size: 14px" class="btn btn-danger btn-xs">
																<span class="glyphicon glyphicon-remove"></span> Delete
														</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<hr />
										<div class="text-center">
											<a href="/admin/product?p=0" class="btn btn-primary">First</a>
											<a href="/admin/product?p=${page.number-1}"
												class="btn btn-primary">Previous</a> <a
												href="/admin/product?p=${page.number+1}"
												class="btn btn-primary">Next</a> <a
												href="/admin/product?p=${page.totalPages-1}"
												class="btn btn-primary">Last</a>
												<a href="productControl"
												class="btn btn-dark float-right">Add New Product</a>
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