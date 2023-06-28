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
										<h3 class="alert alert-success">RESULT</h3>
										<table class="table table-striped table-dark">
											<thead >
												<tr>
													<th style="font-weight: bold; color:white; font-size: 19px">No.</th>
													<th style="font-weight: bold; color:white;font-size: 19px">Category
														Name</th>
													<th style="font-weight: bold; color:white;font-size: 19px">Doanh Thu</th>
													<th style="font-weight: bold; color:white;font-size: 19px">Số Lượng</th>
												</tr>
											</thead>
											<tbody>
												<c:set var="i" value="0" />
												<c:forEach var="item" items="${items}">
													<tr>
														<td>${i = i + 1 }</td>
														<td>${item.category.name}</td>
														<td>${item.revenue}</td>
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