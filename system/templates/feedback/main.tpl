<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
	<title>Les Aubaines - {$title}</title>
	<meta charset="utf-8">
	<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <![endif]-->
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

	<link rel="stylesheet" href="/cdn/les/css/bootstrap.min.css">
	<link rel="stylesheet" href="/cdn/les/css/main.css" id="color-switcher-link">
	<link rel="stylesheet" href="/cdn/les/css/animations.css">
	<link rel="stylesheet" href="/cdn/les/css/fonts.css">
	<script src="/cdn/les/js/vendor/modernizr-2.6.2.min.js"></script>

	<!--[if lt IE 9]>
        <script src="/cdn/les/js/vendor/html5shiv.min.js"></script>
        <script src="/cdn/les/js/vendor/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<!--[if lt IE 9]>
        <div class="bg-danger text-center">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/" class="highlight">upgrade your browser</a> to improve your experience.</div>
    <![endif]-->
	

	<!-- wrappers for visual page editor and boxed version of template -->
	<div id="canvas">
		<div id="box_wrapper">

			<!-- template sections -->

			<section class="page_topline ds ms gorizontal_padding table_section">
				<div class="container-fluid with_border">
					<div class="row">
						<div class="col-sm-4 col-md-3 col-lg-2 text-xs-center text-left text-lg-right">
							
						</div>
						

					</div>
				</div>
			</section>

            {include file="shared/site_header.tpl"}

			<!--section class="ds contacts section_padding_50 ms">
				<div class="container">
					<div class="row topmargin_10 bottommargin_20">
						<div class="col-sm-4">
							<div class="teaser text-center">
								<h4 class="bottommargin_20">Reception</h4>
								Helena
								<br>
								<span class="highlight">helena@reception.com</span>
								<br> 8 (800) 456-2698
							</div>
						</div>
						<div class="col-sm-4 with_border">
							<div class="teaser text-center">
								<h4 class="bottommargin_20">Booking</h4>
								James
								<br>
								<span class="highlight">james@booking.com</span>
								<br> 8 (800) 456-2643
							</div>
						</div>
						<div class="col-sm-4">
							<div class="teaser text-center">
								<h4 class="bottommargin_20">President</h4>
								Robert
								<br>
								<span class="highlight">robert@president.com</span>
								<br> 8 (800) 456-5848
							</div>
						</div>
					</div>
				</div>
			</section-->

			<section class="ds section_padding_70">
				<div class="container">
					<div class="row">
						<div class="col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6 text-center">
							<h2 class="big margin_0">Contact Us</h2>
							<h2 class="muellerhoff topmargin_5 bottommargin_50 highlight">Contact Form</h2>

							<form class="contact-form" method="post" action="">
								<div class="form-group">
									<label for="name" class="sr-only">Full Name
										<span class="required">*</span>
									</label>
									<input type="text" aria-required="true" size="30" value="" name="name" id="name" class="form-control text-center" placeholder="Full name">
								</div>
								<div class="form-group">
									<label for="phone" class="sr-only">Phone number
										<span class="required">*</span>
									</label>
									<input type="text" aria-required="true" size="30" value="" name="phone" id="phone" class="form-control text-center" placeholder="Phone number">
								</div>
								<div class="form-group bottommargin_30">
									<label for="message" class="sr-only">Message</label>
									<textarea aria-required="true" rows="6" cols="45" name="message" id="message" class="form-control text-center" placeholder="Message"></textarea>
								</div>
								<button type="submit" id="contact_form_submit" name="contact_submit" class="theme_button color1">Send</button>
								<button type="reset" id="contact_form_clear" name="contact_clear" class="theme_button inverse bottommargin_0">Clear</button>
							</form>
						</div>
					</div>
				</div>
			</section>

			<section class="ds ms section_padding_30 page_social">
				<div class="container">
					<div class="row topmargin_20 bottommargin_10">
						<div class="col-sm-12 text-center">
                            {include file="shared/social.tpl"}
						</div>
					</div>
				</div>
			</section>

		</div>
		<!-- eof #box_wrapper -->
	</div>
	<!-- eof #canvas -->

	<script src="/cdn/les/js/compressed.js"></script>
	<script src="/cdn/les/js/main.js"></script>
	<script src="/cdn/les/js/switcher.js"></script>

	<!-- Google Map Script 
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTwYSMRGuTsmfl2z_zZDStYqMlKtrybxo"></script>-->
</body>

</html>