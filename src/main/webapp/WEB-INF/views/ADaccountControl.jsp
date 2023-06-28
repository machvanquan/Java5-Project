<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
									<div class="col-6 offset-3">
										<form:form name="qryform" id="qryform" action="/admin/account"
											class="px-3" modelAttribute="item">
											<div class="card">
												<div class="card-header">
													<h3 class="alert alert-success">
														ACCOUNT CONTROL
													</h3>
													<div class="bg-success text-light px-3">${message}</div>
												</div>
												<div class="card-body">
													<div class="form-group row">
														<div class="col-6">
															<div class="form-group">
																<form:input type="text" class="form-control"
																	id="username" path="username" aria-describedby="usHid"
																	placeholder="Username" />
																<small id="usHid" class="form-text text-muted">Username
																	ID is invalid</small>
															</div>
															<div class="form-group">
																<form:input type="password" class="form-control"
																	id="password" path="password"
																	aria-describedby="passHid" placeholder="Password" />
																<small id="passHid" class="form-text text-muted">Password
																	is invalid</small>
															</div>
															<div class="form-group">
																<form:input type="file" class="form-control" id="photo"
																	path="photo" aria-describedby="photoHid"
																	placeholder="photo" />
																<small id="photoHid" class="form-text text-muted">photo
																	is invalid</small>
															</div>
															<div class="form-group">
																Activity:
																<form:radiobuttons class="mx-2" path="activated"
																	items="${activateds}" delimiter="" />
															</div>
														</div>
														<div class="col-6">
															<div class="form-group">
																<form:input type="text" class="form-control"
																	id="fullname" path="fullname"
																	aria-describedby="fullnameHid" placeholder="fullname" />
																<small id="fullnameHid" class="form-text text-muted">Fullname
																	is invalid</small>
															</div>
															<div class="form-group">
																<form:input type="email" class="form-control" id="email"
																	path="email" aria-describedby="emailHid"
																	placeholder="email" />
																<small id="emailHid" class="form-text text-muted">Email
																	is invalid</small>
															</div>
															<div class="form-group">
																Role:
																<form:radiobuttons class="mx-2" path="admin"
																	items="${admins}" delimiter="" />
															</div>
														</div>
													</div>
												</div>
												<div class="card-footer text-muted">
													<button type="submit" class="btn btn-primary "
														formaction="/admin/account/create">Insert</button>
													<button type="submit" class="btn btn-primary"
														formaction="/admin/account/update">Update</button>
													<button type="submit" class="btn btn-primary"
														formaction="/admin/account/delete/${item.username}">Delete</button>
													<button type="submit" class="btn btn-primary"
														formaction="/admin/accountControl">Reset</button>
														<a href="/admin/account"
															class="btn btn-dark float-right">Account List</a>
												</div>
											</div>
										</form:form>
									</div>
								</div>

							</div>
						</div>
						<!-- End Page wrapper  -->
						<!-- ============================================================== -->
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>