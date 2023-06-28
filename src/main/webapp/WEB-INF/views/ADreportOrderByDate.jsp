<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
										<h3 class="alert alert-success">Report Order By Date</h3>
										<div class="row px-3 py-1">
											<div class="col-3 alert alert-primary offset-1">
												<form action="/admin/reportOrderByDate" method="post">
													<div class="form-group">
														Form Date:<input type="text" class="form-control"
															name="firstDate" id="firstDate"
															aria-describedby="firstDateHid" placeholder="dd-mm-yyyy" />
													</div>
													<div class="form-group">
														To Date: <input type="text" class="form-control"
															name="lastDate" id="lastDate"
															aria-describedby="lastDateHid" placeholder="dd-mm-yyyy" />
													</div>
													<button type="submit" class="btn btn-dark">Search</button>
												</form>
											</div>
											<div class="col-3 alert alert-primary offset-4">
												<h3 class="text-center">Order</h3>
												<h5>
													From:
													<fmt:formatDate pattern="MM-dd-yyyy" value="${firstDate }" />
												</h5>
												<h5>
													To:
													<fmt:formatDate pattern="MM-dd-yyyy" value="${lastDate }" />
												</h5>
												<h5>Total: ${page.totalElements }</h5>
											</div>
										</div>

										<table class="table table-striped">
											<thead>
												<tr>
													<th style="font-weight: bolder; font-size: 18px">No.</th>
													<th style="font-weight: bolder; font-size: 18px">Order
														ID</th>
													<th style="font-weight: bolder; font-size: 18px">Address</th>
													<th style="font-weight: bolder; font-size: 18px">Create
														Date</th>
												</tr>
											</thead>
											<tbody>
												<c:set var="i" value="0" />
												<c:forEach var="item" items="${page.content}">
													<tr>
														<td>${i =i+1}</td>
														<td>${item.id }</td>
														<td>${item.address }</td>
														<td>${item.createDate }</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>

						</div>
						<!-- ============================================================== -->
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>