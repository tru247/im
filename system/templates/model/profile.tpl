<!DOCTYPE html>
<html lang="en">
<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>Model Profile</title>
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<meta name="author" content=""/>
		<!-- Favicon -->
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="icon" href="favicon.ico" type="image/x-icon">
		<!-- vector map CSS -->
		<link href="/cdn/vendors/bower_components/jquery-wizard.js/css/wizard.css" rel="stylesheet" type="text/css"/>
		
		<!-- jquery-steps css -->
		<link rel="stylesheet" href="/cdn/vendors/bower_components/jquery.steps/demo/css/jquery.steps.css">
		
		
		
		<!-- Data table CSS -->
		<link href="/cdn/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
		
		<!-- bootstrap-touchspin CSS -->
		<link href="/cdn/vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" type="text/css"/>
		
		<!-- Custom CSS -->
		<link href="/cdn/dist/css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<!--Preloader
		<div class="preloader-it">
			<div class="la-anim-1"></div>
		</div>
		/Preloader-->
		<div class="wrapper theme-1-active pimary-color-red">
		
			<!-- Top Menu Items -->
            {include file="shared/topMenu.tpl"}
            <!-- /Top Menu Items -->
        
            <!-- Left Sidebar Menu -->
            {include file="shared/leftMenu.tpl"}
            <!-- /Left Sidebar Menu -->
        
            <!-- Right Sidebar Menu -->
            {include file="shared/rightMenu.tpl"}
            <!-- /Right Sidebar Menu -->
        
            <!-- Right Setting Menu -->
            {include file="shared/rightSettingMenu.tpl"}
            <!-- /Right Setting Menu -->
			
			<!-- Right Sidebar Backdrop -->
			<div class="right-sidebar-backdrop"></div>
			<!-- /Right Sidebar Backdrop -->
			
			<!-- Main Content -->
			<div class="page-wrapper">
				<div class="container-fluid">
					
					<!-- Title -->
					<div class="row heading-bg">
						<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						  <h5 class="txt-dark">Model Profile</h5>
						</div>
						<!-- Breadcrumb -->
						<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						  <ol class="breadcrumb">
							<li><a href="index-2.html">Dashboard</a></li>
							<li><a href="#"><span>Model</span></a></li>
							<li class="active"><span>Profile</span></li>
						  </ol>
						</div>
						<!-- /Breadcrumb -->
					</div>
					<!-- /Title -->
					
					<!-- Row -->
					<div class="row">
						<div class="col-sm-12">
							<div class="panel panel-default card-view">
								<div class="panel-heading">
									<div class="pull-left">
										<h6 class="panel-title txt-dark">Model Profile</h6>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="panel-wrapper collapse in">
									<div class="panel-body">
									    <form class="form-horizontal" method="post" action="/model/update/{$model.id}" enctype="multipart/form-data">
										    <div id="example-basic">
    											<h3><span class="head-font capitalize-font">Basic Information</span></h3>
    											<section>
													<div class="form-group">
														<label for="exampleInputuname_3" class="col-sm-3 control-label">First Name*</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="icon-user"></i></div>
																<input class="form-control" value="{$model.fname}" type="text" name="fname">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputEmail_3" class="col-sm-3 control-label">Last Name*</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="icon-user"></i></div>
																<input class="form-control" value="{$model.lname}" type="text" name="lname">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputweb_31" class="col-sm-3 control-label">Username</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="icon-user"></i></div>
																<input class="form-control" value="{$model.nick}" type="text" name="nick">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputweb_31" class="col-sm-3 control-label">Modelling category</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="icon-user"></i></div>
                                                                <select class="form-control" id="" name="type">
                                                                    <option value={$model.type}>{$model.type}</option>
                                                                    {foreach $types as $type}
                                                                        <option value={$type.url}>{$type.title}</option>
                                                                    {/foreach}
                                                                </select>
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputpwd_32" class="col-sm-3 control-label">About</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="icon-user"></i></div>
																<textarea class="form-control" name="about">
																    {$model.about}
																</textarea>
															</div>
														</div>
													</div><br />
													<div></div>
    											</section>
    											<h3><span class="head-font capitalize-font">Physical Features</span></h3>
    											<section>
													<div class="form-group">
														<label for="exampleInputuname_3" class="col-sm-3 control-label">Color of eye</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="icon-user"></i></div>
																<input class="form-control" value="{$model.eyes}" type="text" name="eyes">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputEmail_3" class="col-sm-3 control-label">Height</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="icon-user"></i></div>
																<input class="form-control" value="{$model.height}" type="number" name="height">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputweb_31" class="col-sm-3 control-label">Biust</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="icon-user"></i></div>
																<input class="form-control" value="{$model.biust}" type="number" name="biust">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputweb_31" class="col-sm-3 control-label">Waist</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="icon-user"></i></div>
																<input class="form-control" value="{$model.waist}" type="number" name="waist">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputweb_31" class="col-sm-3 control-label">Hips</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="icon-user"></i></div>
																<input class="form-control" value="{$model.hips}" type="number" name="hips">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputweb_31" class="col-sm-3 control-label">Size of shoes</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="icon-user"></i></div>
																<input class="form-control" value="{$model.shoes}" type="number" name="shoes">
															</div>
														</div>
													</div><br />
													
													<div></div>
    											</section>
    											<h3><span class="head-font capitalize-font">Contact &amp; Info Social Media</span></h3>
    											<section>
    												<div class="form-group">
														<label for="exampleInputuname_3" class="col-sm-3 control-label">Email</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="fa fa-at"></i></div>
																<input class="form-control" value="{$model.email}" type="text" name="email">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputEmail_3" class="col-sm-3 control-label">Phone</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="fa fa-phone"></i></div>
																<input class="form-control" value="{$model.phone}" type="text" name="phone">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputweb_31" class="col-sm-3 control-label">Address</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="fa fa-globe"></i></div>
																<input class="form-control" value="{$model.address}" type="text" name="address">
															</div>
														</div>
													</div><br />
    												<div class="form-group">
														<label for="exampleInputuname_3" class="col-sm-3 control-label">Facebook</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="fa fa-facebook"></i></div>
																<input class="form-control" value="{$model.fb}" type="text" name="fb">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputEmail_3" class="col-sm-3 control-label">Twitter</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="fa fa-twitter"></i></div>
																<input class="form-control" value="{$model.tw}" type="text" name="tw">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputweb_31" class="col-sm-3 control-label">Google+</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="fa fa-google-plus"></i></div>
																<input class="form-control" value="{$model.gp}" type="text" name="gp">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputweb_31" class="col-sm-3 control-label">LinkedIn</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="fa fa-linkedin"></i></div>
																<input class="form-control" value="{$model.ln}" type="text" name="ln">
															</div>
														</div>
													</div><br />
													<div class="form-group">
														<label for="exampleInputweb_31" class="col-sm-3 control-label">Pinterest</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="fa fa-pinterest"></i></div>
																<input class="form-control" value="{$model.pin}" type="text" name="pin">
															</div>
														</div>
													</div><br />
													<div></div>
    											</section>
    											<h3><span class="head-font capitalize-font">Pictures</span></h3>
    											<section>
    												<div class="form-group">
    												    <img src="/uploads/{$model.image}" width="150" height="300" alt="{$model.nick}" class="img-thumbnail">
														<label for="exampleInputuname_3" class="col-sm-3 control-label">Model Image</label>
														<div class="col-sm-9">
															<div class="input-group">
																<div class="input-group-addon"><i class="fa fa-file-upload"></i></div>
																<input class="form-control" type="file" name="photo">
															</div>
														</div>
													</div>
                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                          <button type="submit" class="btn btn-lg btn-success">Now Update the Profile</button>
                                                        </div>
                                                    </div>
    											</section>
    										</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /Row -->
					
				</div>
				
			<!-- Footer -->
			<footer class="footer container-fluid pl-30 pr-30">
				<div class="row">
					<div class="col-sm-12">
						<p>{$copyright}</p>
					</div>
				</div>
			</footer>
			<!-- /Footer -->
				
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /#wrapper -->
		
		<!-- JavaScript -->
		
		<!-- jQuery -->
		<script src="/cdn/vendors/bower_components/jquery/dist/jquery.min.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="/cdn/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<script src="/cdn/vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>		
		
		<!-- Form Wizard JavaScript -->
		<script src="/cdn/vendors/bower_components/jquery.steps/build/jquery.steps.min.js"></script>
		<script src="../../../../ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
		
		<!-- Form Wizard Data JavaScript -->
		<script src="/cdn/dist/js/form-wizard-data.js"></script>
		
		<!-- Data table JavaScript -->
		<script src="/cdn/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
		
		<!-- Bootstrap Touchspin JavaScript -->
		<script src="/cdn/vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
		
		<!-- Starrr JavaScript -->
		<script src="/cdn/dist/js/starrr.js"></script>
		
		<!-- Slimscroll JavaScript -->
		<script src="/cdn/dist/js/jquery.slimscroll.js"></script>
	
		<!-- Fancy Dropdown JS -->
		<script src="/cdn/dist/js/dropdown-bootstrap-extended.js"></script>
		
		<!-- Owl JavaScript -->
		<script src="/cdn/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>
	
		<!-- Switchery JavaScript -->
		<script src="/cdn/vendors/bower_components/switchery/dist/switchery.min.js"></script>
	
		<!-- Init JavaScript -->
		<script src="/cdn/dist/js/init.js"></script>
			
	</body>
</html>