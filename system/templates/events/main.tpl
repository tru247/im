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
            
			<section class="ds section_padding_70 section_padding_bottom_60 columns_padding_25">
				<div class="container">
					<div class="row">
						<div class="col-sm-10 col-sm-push-1">
							<div class="row">
							    {foreach $events as $event}
    								<div class="col-sm-12 bottommargin_40">
    									<div class="side-item event-item content-padding with_background">
    										<div class="row">
    											<div class="col-md-4">
    												<div class="item-media">
    													<img src="/uploads/{$event.image}" alt="{$event.title}">
    													<div class="media-links">
    														<a class="abs-link" title="" href="event-single-full.html"></a>
    													</div>
    												</div>
    											</div>
    											<div class="col-md-8">
    												<div class="item-content">
    													<h3 class="entry-title topmargin_0">
    														<a href="event-single-full.html">{$event.title}</a>
    													</h3>
    
    													<p>{$event.excerpt}</p>
    
    													<!--p class="item-meta grey">
    														<i class="rt-icon2-calendar4 highlight"></i> Feb 12, 2016
    														<i class="rt-icon2-world highlight"></i> Conference Hall, LA
    													</p-->
    
    												</div>
    											</div>
    										</div>
    									</div>
    								</div>
							    {/foreach}
							</div>

						</div>
						<!--eof .col-sm-* (main content)-->

					</div>
				</div>
			</section>

			<section class="ds ms section_padding_30 page_social">
				<div class="container">
					<div class="row topmargin_20 bottommargin_10">
						<div class="col-sm-12 text-center">
							<div class="page_social_icons">
								<a class="social-icon color-bg-icon soc-facebook" href="events-full.html#" title="Facebook"></a>
								<a class="social-icon color-bg-icon soc-twitter" href="events-full.html#" title="Twitter"></a>
								<a class="social-icon color-bg-icon soc-google" href="events-full.html#" title="Google"></a>
								<a class="social-icon color-bg-icon soc-linkedin" href="events-full.html#" title="LinkedIn"></a>
								<a class="social-icon color-bg-icon soc-pinterest" href="events-full.html#" title="Pinterest"></a>
							</div>
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

</body>

</html>