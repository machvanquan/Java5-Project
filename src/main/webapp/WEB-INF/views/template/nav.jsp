<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<div class="container-fluid">
	<div class="row align-items-center py-3 px-xl-5">
		<div class="col-lg-3 d-none d-lg-block">
			<a href="/home/index" class="text-decoration-none">
				<h1 class="m-0 display-5 font-weight-semi-bold">Quân Shop</h1>
			</a>
		</div>
		<div class="col-lg-6 col-6 text-left">
			<form action="/home/product" method="post">
				<div class="input-group">
					<input type="text" name="keywords" value="${keywords}" class="form-control"
						placeholder="Search for products">&emsp; 
					<div class="input-group-append">
						<div class="input-group-append">
                           <button style="border-radius: 10px" class="btn btn-dark">Search</button>
                         </div>
					</div>
				</div>
			</form>
		</div>
		<div class="col-lg-3 col-6 text-right">
			<a href="?lang=vi" class="btn border">VN<span class="badge"></span>
			</a>
			<a href="?lang=en" class="btn border">EN<span class="badge"></span>
			</a>
			<a href="/home/cart" class="btn border"> <i
				class="fas fa-shopping-cart text-primary"></i> <span class="badge"></span>
			</a> 
			<a href="/home/checkout" class="btn border"> <i
				class="fas fa-cart-plus text-primary"></i> <span class="badge"></span>
			</a>
				<c:if test="${admin}">
				<a href="/admin/account" class="btn border"><i class="fas fa-user-circle text-primary"></i><span class="badge">Admin</span>
				</a>
				</c:if>
		</div>
	</div>
</div>

<div class="row border-top px-xl-5">
	<div class="col-lg-12">
		<nav
			class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
			<a href="" class="text-decoration-none d-block d-lg-none">
				<h1 class="m-0 display-5 font-weight-semi-bold">
					<span class="text-primary font-weight-bold border px-3 mr-1">0</span>Shopper
				</h1>
			</a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between"
				id="navbarCollapse">
				<div class="navbar-nav mr-auto py-0">
					<a href="/home/index" class="nav-item nav-link active"><s:message code="lo.mn.home"/></a> <a
						href="/home/product" class="nav-item nav-link"><s:message code="lo.mn.product"/></a> <a
						href="/home/detail" class="nav-item nav-link"><s:message code="lo.mn.detail"/></a> <a
						href="/home/contact" class="nav-item nav-link"><s:message code="lo.mn.contact"/></a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-toggle="dropdown"><s:message code="lo.mn.shop"/></a>
						<div class="dropdown-menu rounded-0 m-0">
							<a href="/home/cart" class="dropdown-item"><s:message code="lo.mn.cart"/></a>
							<a href="/home/checkout" class="dropdown-item"><s:message code="lo.mn.checkout"/></a>
								<form action="/home/myorder" method="post">
									<input type="hidden" name="username" value="${username}"
										onblur="this.form.submit()">
									<button class="dropdown-item"><s:message code="lo.mn.myorder"/></button>
								</form>
							
						</div>
					</div>

				</div>
				<div class="navbar-nav ml-auto py-0">
				<c:if test="${!isLogin}">
					<a href="/home/login" class="nav-item nav-link"><s:message code="lo.mn.login"/></a>
					<a href="/home/register" class="nav-item nav-link"><s:message code="lo.mn.register"/></a>
					<a href="/home/forgot-password" class="nav-item nav-link"><s:message code="lo.mn.forgotpassword"/></a>
				</c:if>
					<c:if test="${isLogin}">
							<a href="/home/profile" class="text-dark">${fullname}</a>
							<a href="/home/change-password" style="margin-left: 10px" class="text-dark"><s:message code="lo.mn.changepass"/></a>	
							<a href="/home/logout" style="margin-left: 10px; font-weight: 500;" class="text text-danger"><s:message code="lo.mn.logout"/></a>				
					</c:if>
					
				</div>
			</div>
		</nav>
	</div>
</div>