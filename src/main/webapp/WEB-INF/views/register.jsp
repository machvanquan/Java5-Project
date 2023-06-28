<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<!-- CSS Start -->
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
			<h1 class="font-weight-semi-bold text-uppercase mb-3">REGISTER</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">Register</p>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Register Section Begin -->
	<div class="register-login-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<div class="register-form">				
						<h4>${message}</h4>
						<form:form method="get" action="/home/register"
							modelAttribute="item">
							<div class="group-input">
								<label for="username">Username or email address *:</label>
								<form:input cssClass="form-control" path="username" type="text" id="username" />
							</div>
							<div class="group-input">
								<label for="pass">Password *:</label>
								<form:input cssClass="form-control" type="text" id="password" path="password" />
							</div>
							<div class="group-input">
								<label for="con-pass">Fullname *:</label>
								<form:input cssClass="form-control" type="text" id="fullname" path="fullname" />
							</div>
							<div class="group-input">
								<label for="con-pass">Email *:</label>
								<form:input cssClass="form-control" type="email" id="email" path="email" />
							</div>
							<br>
							<div class="file-upload">
								<div class="image-upload-wrap">
									<form:input class="file-upload-input" type='file' path="photo"
										id="photo" onchange="readURL(this);" accept="images/*" />
								</div>
								<div class="file-upload-content">
								<br>
									<img class="file-upload-image" src="#" alt="your image" style="width: 200px" />
									<br>
									<div class="image-title-wrap">
										<button  style="border-radius: 10px" type="button" onclick="removeUpload()"
											class="remove-image btn-danger">
											Remove <span class="image-title">Image</span>
										</button>
									</div>
								</div>
							</div>
							<hr>
							<button style="border-radius: 10px" type="submit" class="btn btn-dark"
								formaction="/home/register/create">REGISTER</button>
						</form:form>
						<br>
						<div class="switch-login">
						<h4><a href="login" class="or-login">Or Login</a></h4>				
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Register Form Section End -->



	<!-- Footer Start -->
	<jsp:include page="template/footer.jsp" />
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>
	<!-- JavaScript Libraries -->
	<jsp:include page="template/script.jsp" />
	
	 <script>
	$(function() {
		$("#slider-range").slider({
			range : true,
			min : 0,
			max : 200,
			values : [0, 0],
			slide : function(event, ui) {
				$( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
				$("#amount_start").val(ui.values[0]);
				$("#amount_end").val(ui.values[1]);
			}
		});
		/* $("#amount").val(
				"$" + $("#slider-range").slider("values", 0) + " - $"
						+ $("#slider-range").slider("values", 1)); */
	});
	
	function readURL(input) {
		  if (input.files && input.files[0]) {

		    var reader = new FileReader();

		    reader.onload = function(e) {
		      $('.image-upload-wrap').hide();

		      $('.file-upload-image').attr('src', e.target.result);
		      $('.file-upload-content').show();

		      $('.image-title').html(input.files[0].name);
		    };

		    reader.readAsDataURL(input.files[0]);

		  } else {
		    removeUpload();
		  }
		}

		function removeUpload() {
		  $('.file-upload-input').replaceWith($('.file-upload-input').clone());
		  $('.file-upload-content').hide();
		  $('.image-upload-wrap').show();
		}
		$('.image-upload-wrap').bind('dragover', function () {
		        $('.image-upload-wrap').addClass('image-dropping');
		    });
		    $('.image-upload-wrap').bind('dragleave', function () {
		        $('.image-upload-wrap').removeClass('image-dropping');
		});
	</script>

</body>
</html>