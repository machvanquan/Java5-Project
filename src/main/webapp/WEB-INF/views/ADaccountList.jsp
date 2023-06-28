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
						<div class="page-wrapper py-2">
							<!-- Container fluid  -->
							<div class="container-fluid">
								<!-- Sales Cards  -->
								<div class="row">
									<div class="col-md-10 offset-md-1">
										<table class="table table-striped text-center">
											<thead class="thead-dark">
												<tr>
													<th style="font-weight: bold; font-size: 18px">Photo</th>
													<th style="font-weight: bold; font-size: 18px">Username</th>
													<th style="font-weight: bold; font-size: 18px">Password</th>
													<th style="font-weight: bold; font-size: 18px">Fullname</th>
													<th style="font-weight: bold; font-size: 18px">Email</th>
													<th style="font-weight: bold; font-size: 18px">Activated</th>
													<th style="font-weight: bold; font-size: 18px">Admin</th>
													<th style="font-weight: bold; font-size: 18px">Edit</th>
												</tr>
											</thead>
											<tbody style="font-size: 17px">
												<c:forEach var="item" items="${page.content}">
													<tr>
														<td class="px-0 m-0" width="10%"><img
															src="/images/${item.photo}" alt=""
															width="50%" class="img-fluid"></td>
														<td>${item.username}</td>
														<td>${item.password}</td>
														<td>${item.fullname}</td>
														<td>${item.email}</td>

														<td>${item.activated}</td>
														<td>${item.admin}</td>
														<td><a class='btn btn-dark btn-xs'
															style="font-size: 14px"
															href="account/edit/${item.username}"> <span
																class="glyphicon glyphicon-edit"></span> Edit
														</a> <a href="account/delete/${item.username}"
															style="font-size: 14px" class="btn btn-danger btn-xs">
																<span class="glyphicon glyphicon-remove"></span> Delete
														</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<hr />
										<div class="text-center">
											<a href="/admin/account?p=0" class="btn btn-primary">First</a>
											<a href="/admin/account?p=${page.number-1}"
												class="btn btn-primary">Previous</a> <a
												href="/admin/account?p=${page.number+1}"
												class="btn btn-primary">Next</a> <a
												href="/admin/account?p=${page.totalPages-1}"
												class="btn btn-primary">Last</a>
												<a href="accountControl"
												class="btn btn-dark float-right">Add New Account</a>
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