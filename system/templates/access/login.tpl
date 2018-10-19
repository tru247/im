<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>{$app.name}- Admin Login</title>
		<meta name="" />
		<meta name="" />
		<meta name="author" content="ceo.ogego@gmial.com"/>
	  	
	  	<!-- Favicon -->
	  	<link rel="icon" href="/cdn/imran/favicon.png" type="image/x-icon" />
		
		<!-- vector map CSS -->
		<link href="/cdn/admin/vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css"/>	
		
		<!-- Custom CSS -->
		<link href="/cdn/admin/dist/css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<!--Preloader-->
		<div class="preloader-it">
			<div class="la-anim-1"></div>
		</div>
		<!--/Preloader-->
		
		<div class="wrapper pa-0">
			<header class="sp-header">
				<div class="sp-logo-wrap pull-left">
					<a href="index-2.html">
						<span class="brand-text"><span style="color:#0EADA9"><i class="fa fa-print"></i> </span><span style="color: #000000 !important;">{$app.name}</span></span>
					</a>
				</div>
				<!-- <div class="form-group mb-0 pull-right">
					<span class="inline-block pr-10">Don't have an account?</span>
					<a class="inline-block btn btn-info btn-rounded btn-outline" href="signup.html">Sign Up</a>
				</div> -->
				<div class="clearfix"></div>
			</header>
			
			<!-- Main Content -->
			<div class="page-wrapper pa-0 ma-0 auth-page">
				<div class="container-fluid">
					<!-- Row -->
					<div class="table-struct full-width full-height">
						<div class="table-cell vertical-align-middle auth-form-wrap">
							<div class="auth-form  ml-auto mr-auto no-float">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<div class="mb-30">
											<h5 class="text-center"><i style="color: #0EADA9;" class="fa fa-5x fa-print"></i></h5>
											<h3 class="text-center txt-dark mb-10">Sign in to <span style="color:#0EADA9"></span><span style="color: #000000 !important;">{$app.name}</span> Printshop Content & Shopping Management System</h3>
											<h6 class="text-center nonecase-font txt-grey">Enter your details below</h6>
										</div>	
										<div class="form-wrap">
											<form id="emboga-login-form" action="/access/login" method="POST" enctype="multipart/form-data">
												<div class="form-group">
													<label class="control-label mb-10" for="exampleInputEmail_2">Email address</label>
													<input type="text" name="login-uid" class="form-control" required="" id="exampleInputEmail_2" placeholder="Enter email/phone">
												</div>
												<div class="form-group">
													<label class="pull-left control-label mb-10" for="exampleInputpwd_2">Password</label>
													<!-- <a class="capitalize-font txt-primary block mb-10 pull-right font-12" href="forgot-password.html">forgot password ?</a> -->
													<div class="clearfix"></div>
													<input type="password" name="login-pass" class="form-control" required="" id="exampleInputpwd_2" placeholder="Enter pwd">
												</div>							
												
												<div class="form-group text-center">
													<button style="background: #0eada9 !important;border: 1px solid #0eada9 !important;" type="submit" class="btn btn-info btn-rounded">sign in</button>
												</div>
											</form>
										</div>
									</div>	
								</div>
							</div>
						</div>
					</div>
					<!-- /Row -->	
				</div>
				
			</div>
			<!-- /Main Content -->
		
		</div>
		<!-- /#wrapper -->
		
		<!-- JavaScript -->
		
		<!-- jQuery -->
		<script src="/cdn/admin/vendors/bower_components/jquery/dist/jquery.min.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="/cdn/admin/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<script src="/cdn/admin/vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
		
		<!-- Slimscroll JavaScript -->
		<script src="/cdn/admin/dist/js/jquery.slimscroll.js"></script>
		
		<!-- Init JavaScript -->
		<script src="/cdn/admin/dist/js/init.js"></script>
		<script src="/cdn/admin/dist/js/emboga.js"></script>
	</body>

</html>
