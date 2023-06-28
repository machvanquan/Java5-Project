<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>	
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
<jsp:include page="template/css.jsp" />
</head>
<body>

	<!-- Topbar Start -->
	<jsp:include page="template/nav.jsp" />
	<!-- Topbar End -->

	<!-- Page Header Start -->
	<div class="container-fluid bg-secondary mb-5">
		<div
			class="d-flex flex-column align-items-center justify-content-center"
			style="min-height: 300px">
			<h1 class="font-weight-semi-bold text-uppercase mb-3">Product Shop</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">Shop</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->
	
	 <!-- Shop Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <!-- Shop Sidebar Start -->
            <div class="col-lg-3 col-md-12">
                <!-- Price Start -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">Filter by price</h5>
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="price-all">
                            <label class="custom-control-label" for="price-all">All Price</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-1">
                            <label class="custom-control-label" for="price-1">$0 - $100</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-2">
                            <label class="custom-control-label" for="price-2">$100 - $200</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-3">
                            <label class="custom-control-label" for="price-3">$200 - $400</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-4">
                            <label class="custom-control-label" for="price-4">$400 - $700</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="price-5">
                            <label class="custom-control-label" for="price-5">$700 - $1000</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                    <hr>
                     <h5 class="font-weight-semi-bold mb-4">Filter by slider</h5>
                    <br>
                    	<form class="text-center" action="/home/product/price" method="post">
						<div class="filter-range-wrap">
						<span style="font-weight: bold;">$ 0</span>
							<input type="hidden" name="min" value="0">
							<input style="width: 315px; cursor: pointer;" type="range" name="max" min="0" max="999" step="1" value="${max}" class="slider-pic" id="id1">
							<span style="font-weight: bold;">$ <span  id="f"></span></span>
						</div>
						<script>
						var slideCol = document.getElementById("id1");
						var y = document.getElementById("f");
						y.innerHTML = slideCol.value;

						slideCol.oninput = function() {
						    y.innerHTML = this.value;
						}
						</script>
						<br>
						<button class="btn btn-secondary" style="width: 100px; height: 40px; border-radius: 10px">Filter</button>
					</form>
                </div>
                <!-- Price End -->  
                                         
            </div>
            <!-- Shop Sidebar End -->


            <!-- Shop Product Start -->
            <div class="col-lg-9 col-md-12">
                    <div class="col-12">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <form action="/home/product" method="post">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="keywords" value="${keywords}" placeholder="Search by name">
                                    <div class="input-group-append">
                                           &ensp; <button style="border-radius: 10px" class="btn btn-dark">Search</button>
                                    </div>
                                </div>
                            </form>
                            <div class="dropdown ml-4" style="margin-right: 30px">
                                <button class="btn border dropdown-toggle" type="button" id="triggerId" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                            Sort by
                                        </button>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
                                    <a class="dropdown-item" href="/home/product/sort/name">Name</a>
                                    <a class="dropdown-item" href="/home/product/sort/price">Price</a>
                                    <a class="dropdown-item" href="/home/product/sort/createDate">Time Update</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row col-12">                                                       
                        	<c:forEach var="item" items="${page.content}">                      		                      	
							<div class="col-4 card product-item border-0 mb-4" style="width: 18rem;">
								<div
									class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
									<img class="img-fluid w-100" src="/images/${item.image}" alt="">
								</div>
								<div
									class="card-body border-left border-right text-center p-0 pt-4 pb-3">
									<h6>${item.id}</h6>
									<br>
									<h6 class="text-truncate mb-3">${item.name}</h6>
									<div class="d-flex justify-content-center">
										<h6>$ ${item.price}</h6>
										<h6 class="text-muted ml-2">
											(${item.createDate})
										</h6>
									</div>
								</div>
								<div
									class="card-footer d-flex justify-content-between bg-light border">
									<a href="/home/detail/${item.id}" class="btn btn-sm text-dark p-0"><i
										class="fas fa-eye text-primary mr-1"></i>View Detail</a> 
										<a href="/home/cart/add/${item.id}" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
								</div>
							</div>
						</c:forEach>                               
                 </div>
                 
                    <center><div class="col-12">
                        <nav aria-label="Page navigation">
                         <a class="btn btn-dark" href="/home/product?p=0">First</a>
						 <a class="btn btn-dark" href="/home/product?p=${page.number-1}">Previous</a> 
						 <a class="btn btn-dark" href="/home/product?p=${page.number+1}">Next</a> 
						 <a class="btn btn-dark" href="/home/product?p=${page.totalPages-1}">Last</a>
                        </nav>
                    </div></center>
                    <br>
                </div>
            <!-- Shop Product End -->
        </div>
    </div>
    <!-- Shop End -->
    
	<!-- Footer Start -->
	<jsp:include page="template/footer.jsp" />
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"> <i
		class="fa fa-angle-double-up"></i></a>

	<!-- JavaScript Libraries -->
	<jsp:include page="template/script.jsp" />



</body>
</html>