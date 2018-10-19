<!DOCTYPE html>
<html lang="en">

<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>{$appName} | {$title}</title>
<!-- Bootstrap stylesheet -->
<link href="/cdn/new/bootstrap/css/bootstrap.css" rel="stylesheet">
<!-- crousel css -->
<link href="/cdn/new/js/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css" />
<!--bootstrap select-->
<link href="/cdn/new/js/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
<!-- font -->
<link href="https://fonts.googleapis.com/css?family=Fira+Sans:300,400,500,600,700,800,900" rel="stylesheet">
<!-- font-awesome -->
<link href="/cdn/new/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="/cdn/new/css/ele-style.css" rel="stylesheet" type="text/css"/>
<!-- stylesheet -->
<link href="/cdn/new/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<!--top start here -->
<div class="top">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
				<ul class="list-inline pull-left icon">
					<li>
						<a href="contactus.html">
							<i class="icon_phone"></i> Call us : {$app.phone}
						</a>
					</li>
					<li>
						<a href="mailto:{$app.email}">
							<i class="fa fa-envelope"></i> Email : {$app.email}
						</a>
					</li>
				</ul>
				<ul class="list-inline pull-right  icons">
					<li class="dropdown currency">
						<a href="/access" target="_blank" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-tachometer"></i> Admin</a>
					</li>
					<li class="dropdown cart">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon_cart"></i> Cart</a>
					</li>
					<li class="dropdown login">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon_profile"></i> My Account</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!--top end here -->

<!-- header start here-->

<!-- header end here -->

<!-- bread-crumb start here -->
<div class="bread-crumb">
	<img src="/cdn/new/images/top-banner.jpg" class="img-responsive" alt="banner-top" title="banner-top">
	<div class="container">
		<div class="matter">
			<h2><span>e-mboga.co.ke</span> Coming Soon</h2>
			<ul class="list-inline">
				<li>
					<a href="">Coming Soon</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- bread-crumb end here -->

<!-- comingsoon start here -->
<div class="comingsoon">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-xs-12 text-center">
				<h4>We're Launching Soon</h4>
				<p class="text">Seriously, We're Working Really Smart!</p>
				<p class="desc"></p>
				<div class="timer">
					<div id="ctime"></div>
				</div>
				<!-- <div class="subscribe text-center">
					<form class="form-horizontal" name="subscribe">
						<div class="form-group">
							<input  value="" name="email" id="email" placeholder="Search..." type="text">
							<button class="btn btn-news" type="submit" value="submit">Search</button>
						</div>
					</form>
				</div>  -->
			</div>
		</div>
	</div>
</div>
<!-- comingsoon end here -->

<!-- footer start here -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
				<!-- <img src="" class="img-responsive" title="logo" alt="logo"> -->
				<p></p>
				<ul class="list-unstyled contact">
					<li>
						<a href="contactus.html">
							<i class="fa fa-map-marker"></i> {$app.address}
						</a>
					</li>
					<li>
						<a href="contactus.html">
							<i class="icon_phone"></i> Phone - {$app.phone}
						</a>
					</li>
					<li>
						<a href="contactus.html">
							<i class="fa fa-envelope"></i> Email - {$app.email}
						</a>
					</li>
				</ul>
			</div>
			<div class="col-md-9 col-sm-9 col-lg-9 col-xs-12">
				<!-- <div id="newsletter">
					<form class="form-horizontal" name="subscribe">
						<div class="form-group">
							<div class="input-group">
								<span class="news">newsletter</span>
								<input  value="" name="subscribe_email" id="subscribe_email" placeholder="Email" type="text">
								<button class="btn btn-news" type="submit" value="submit">Subscribe Now</button>
							</div>
						</div>
					</form>
				</div> -->
				<div class="row">
					<div class="col-sm-4 col-md-4 col-lg-4 col-xs-12">
						<h5>Categories</h5>
						<hr>
						<ul class="list-unstyled">
							<li>
								<a href="#">Vegetables</a>
							</li>
							<li>
								<a href="#">Fruits</a>
							</li>
							<li>
								<a href="#">Meats</a>
							</li>
							<li>
								<a href="#">Others</a>
							</li>
						</ul>
					</div>
					<div class="col-sm-4 col-md-4 col-lg-4 col-xs-12">
						<h5>my account</h5>
						<hr>
						<ul class="list-unstyled">
							<li>
								<a href="login_register.html">My Account</a>
							</li>
							<li>
								<a href="#">Discount</a>
							</li>
							<li>
								<a href="#">Person information</a>
							</li>
							<li>
								<a href="#">Order History</a>
							</li>
							<li>
								<a href="#">Wishlist</a>
							</li>
						</ul>
					</div>
					<div class="col-sm-4 col-md-4 col-lg-4 col-xs-12">
						<h5>Stay Connected</h5>
						<hr>
						<ul class="list-unstyled social">
							<li>
								<a href="https://www.facebook.com/" target="_blank">
									<i class="social_facebook"></i> Facebook
								</a>
							</li>
							<li>
								<a href="https://twitter.com/" target="_blank">
									<i class="social_twitter"></i> Twitter
								</a>
							</li>
							<li>
								<a href="https://plus.google.com/" target="_blank">
									<i class="social_googleplus"></i> Google+
								</a>
							</li>
							<li>
								<a href="https://www.youtube.com/" target="_blank">
									<i class="social_youtube"></i> Youtube
								</a>
							</li>
							<li>
								<a href="https://in.linkedin.com/" target="_blank">
									<i class="social_linkedin"></i> Linked In
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="powered">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-12 col-xs-12 text-right">
					<ul class="list-inline">
						<li>
							<img src="/cdn/new/images/card1.png" class="img-responsive" alt="card" title="card" />
						</li>
						<li>
							<img src="/cdn/new/images/card2.png" class="img-responsive" alt="card" title="card" />
						</li>
						<li>
							<img src="/cdn/new/images/card3.png" class="img-responsive" alt="card" title="card" />
						</li>
						<li>
							<img src="/cdn/new/images/card4.png" class="img-responsive" alt="card" title="card" />
						</li>
						<li>
							<img src="/cdn/new/images/card5.png" class="img-responsive" alt="card" title="card" />
						</li>
						<li>
							<img src="/cdn/new/images/card6.png" class="img-responsive" alt="card" title="card" />
						</li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
					<p>{$copyright}</p>
				</div>
			</div>	
		</div>
	</div>
</footer>
<!-- footer end here -->

<!-- jquery -->
<script src="/cdn/new/js/jquery.2.1.1.min.js"></script>
<!-- bootstrap js -->
<script src="/cdn/new/bootstrap//cdn/new/js/bootstrap.min.js"></script>
<!--bootstrap select-->
<script src="/cdn/new/js/dist//cdn/new/js/bootstrap-select.js"></script>
<!--internal js-->
<script src="/cdn/new/js/internal.js"></script>
<!-- owlcarousel js -->
<script src="/cdn/new/js/owl-carousel/owl.carousel.min.js"></script>
<!-- timer js -->
<script src="/cdn/new/js/timer.js"></script>
</body>

</html>