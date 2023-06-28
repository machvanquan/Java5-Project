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
								<div class="row ">
									<div class="col-md-10 offset-md-1">
										<table class="table table-striped text-center">
											<thead class="thead-dark">
												<tr>
													<th style="font-weight: bolder; font-size: 18px">No.</th>
													<th style="font-weight: bolder; font-size: 18px">Category
														Name</th>
													<th style="font-weight: bolder; font-size: 18px">Product
														Sum</th>
													<th style="font-weight: bolder; font-size: 18px">Product
														Count</th>
												</tr>
											</thead>
											<tbody>
												<c:set var="i" value="0" />
												<c:forEach var="item" items="${items}">
													<tr>
														<td>${i = i + 1 }</td>
														<td>${item.group.name}</td>
														<td>${item.sum}</td>
														<td>${item.count}</td>
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