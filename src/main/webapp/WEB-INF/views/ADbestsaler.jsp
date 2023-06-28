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
						<div class="page-wrapper">
							<!-- Container fluid  -->
							<div class="container-fluid">
								<!-- Sales Cards  -->
								<div class="row my-2">
									<div class="col-md-10 offset-md-1">
										<table class="table table-striped text-center">
											<thead class="thead-dark">
												<tr>
													<th style="font-weight: bolder; font-size: 18px">No.</th>
													<th style="font-weight: bolder; font-size: 18px">Product
														Image</th>
													<th style="font-weight: bolder; font-size: 18px">Product
														ID</th>
													<th style="font-weight: bolder; font-size: 18px">Product
														Name</th>
													<th style="font-weight: bolder; font-size: 18px">Product
														Price</th>
													<th style="font-weight: bolder; font-size: 18px">Quantity</th>
												</tr>
											</thead>
											<tbody>
												<c:set var="i" value="0" />
												<c:forEach var="item" items="${topList.content}">
													<tr>
														<td>${i = i + 1 }</td>
														<td><img
															src="/images/${item.product.image}" alt=""
															width="50px"></td>
														<td>${item.product.id}</td>
														<td>${item.product.name}</td>
														<td>${item.product.price}</td>
														<td>${item.sum }</td>
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