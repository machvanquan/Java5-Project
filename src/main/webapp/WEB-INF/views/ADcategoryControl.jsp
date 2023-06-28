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
										<form:form name="qryform" id="qryform"
											action="/admin/category" class="px-3" modelAttribute="item">
											<div class="card">
												<div class="card-header">
													<h3 class="alert alert-success">
														CATEGORY CONTROL 
													</h3>
													<div class="bg-success text-light px-3">${message }</div>
												</div>
												<div class="card-body">
													<div class="form-group">
														<form:input type="text" class="form-control" id="id"
															path="id" aria-describedby="idHid"
															placeholder="Category ID" />
														<small id="idHid" class="form-text text-muted">Category
															ID is invalid</small>
													</div>
													<div class="form-group">
														<form:input type="text" class="form-control" id="name"
															path="name" aria-describedby="nameHid"
															placeholder="Category Name" />
														<small id="nameHid" class="form-text text-muted">Category
															name is invalid</small>
													</div>
												</div>
												<div class="card-footer text-muted">
													<button type="submit" class="btn btn-primary "
														formaction="/admin/category/create">Insert</button>
													<button type="submit" class="btn btn-primary"
														formaction="/admin/category/update">Update</button>
													<button type="submit" class="btn btn-primary"
														formaction="/admin/category/delete/${item.id}">Delete</button>
													<button type="submit" class="btn btn-primary"
														formaction="/admin/category">Reset</button>
														<a href="/admin/category"
															class="btn btn-dark float-right">Category List</a>
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