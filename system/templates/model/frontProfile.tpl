<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
	<title>{$model.fname} {$model.lname}</title>
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

	<!-- search modal -->
	<div class="modal" tabindex="-1" role="dialog" aria-labelledby="search_modal" id="search_modal">
		<div class="widget widget_search">
			<form method="get" class="searchform form-inline" action="http://webdesign-finder.com/">
				<div class="form-group">
					<input type="text" value="" name="search" class="form-control" placeholder="Type search keyword here..." id="modal-search-input">
				</div>
				<button type="submit" class="theme_button input_button">Search</button>
			</form>
		</div>
	</div>

	<!-- wrappers for visual page editor and boxed version of template -->
	<div id="canvas">
		<div id="box_wrapper">

			<!-- template sections -->

            {include file="shared/site_header.tpl"}

			<section class="ds model-page section_padding_70 section_padding_bottom_60 columns_padding_25">
				<div class="container">
					<div class="row">

						<div class="col-md-5 col-md-push-7">
							<div class="vertical-item with_background models_square">
								<div class="item-media">
									<img src="/uploads/{$model.image}" alt="{$model.nick}">
								</div>
								<div class="item-content with_padding">
									<h2 class="big topmargin_0 bottommargin_25">{$model.fname} {$model.lname}</h2>
									<div class="page_social_icons">
										{if !empty($model.fb)}
                                            <a class="social-icon color-bg-icon soc-facebook" href="https://{$model.fb}" target="_blank" title="Facebook"></a>
                                        {/if}
                                        {if !empty($model.tw)}
                                            <a class="social-icon color-bg-icon soc-twitter" href="https://{$model.tw}" target="_blank" title="Twitter"></a>
                                        {/if}
                                        {if !empty($model.gp)}
                                            <a class="social-icon color-bg-icon soc-google" href="https://{$model.gp}" target="_blank" title="Google"></a>
                                        {/if}
                                        {if !empty($model.ln)}
                                            <a class="social-icon color-bg-icon soc-linkedin" href="https://{$model.ln}" target="_blank" title="Google"></a>
                                        {/if}
                                        {if !empty($model.ln)}
                                            <a class="social-icon color-bg-icon soc-pinterest" href="https://{$model.pin}" target="_blank" title="Pinterest"></a>
                                        {/if}
									</div>
								</div>
								
								<div class="item-content with_padding">
									<ul class="media-list">
										<li class="media">
											<div class="media-left">
												<i class="rt-icon2-location2 highlight"></i>
											</div>
											<div class="media-body">
												<span class="bold fontsize_12 text-uppercase grey">Address:</span>
												<br>
												<span>{$model.address|default:'N/A'}</span>
											</div>
										</li>
										<li class="media">
											<div class="media-left">
												<i class="rt-icon2-phone5 highlight"></i>
											</div>
											<div class="media-body">
												<span class="bold fontsize_12 text-uppercase grey">Phone:</span>
												<br>
												<span>{$model.phone}</span>
											</div>
										</li>
										<li class="media">
											<div class="media-left">
												<i class="rt-icon2-mail highlight"></i>
											</div>
											<div class="media-body">
												<span class="bold fontsize_12 text-uppercase grey">Email:</span>
												<br>
												<a href="mailto:{$model.email}">
													<em>{$model.email}</em>
												</a>
											</div>
										</li>
									</ul>
								</div>


							</div>

						</div>

						<div class="col-md-7 col-md-pull-5">
							<h2 class="topmargin_0 bottommargin_30">About {$model.fname} {$model.lname}</h2>
							<p>{$model.about}</p>

							<div class="filters isotope_filters topmargin_50">
								<h2>
								<span class="highlight muellerhoff">Gallery</span>
							</h2>
							</div>

							<div class="columns_padding_5">
								<div class="isotope_container isotope row masonry-layout" data-filters=".isotope_filters">
								    {foreach $gallery as $image}
    									<div class="isotope-item bottommargin_10 col-md-3 col-sm-4 col-xs-6 snaps">
    										<div class="vertical-item gallery-item content-absolute text-center cs">
    											<div class="item-media">
    												<img src="/models/{$image.image}" alt="">
    												<div class="media-links">
    													<a class="prettyPhoto abs-link" title="" data-gal="prettyPhoto[gal]" href="/models/{$image.image}"></a>
    												</div>
    											</div>
    										</div>
    									</div>
								    {foreachelse}
								        <p>No gallery has been set up for this model yet.</p>
								    {/foreach}
								</div>
							</div>
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

</body>

</html>