<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Les Aubaines - Models</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content=""/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
    <!-- Data table CSS -->
    <link href="/cdn/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>

    <!-- Custom CSS -->
    <link href="/cdn/dist/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
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
                    <h5 class="txt-dark">Les Aubaines Models</h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="/">Dashboard</a></li>
                        <li><a href="#"><span>Les Aubaines</span></a></li>
                        <li class="active"><span>Model A/C</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->
            </div>
            <!-- /Title -->

            <!-- Row -->
            <div class="row">
                <div class="col-md-12">
					<div class="panel panel-default card-view">
						<div class="panel-heading">
							<div class="pull-left">
								<h6 class="panel-title txt-dark">{$model.fname} {$model.lname}'s Account</h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-wrapper collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-12">
										<div class="form-wrap">
											<!--form class="form-horizontal" role="form"-->
												<div class="form-body">
													<h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-account mr-10"></i>Model's Basic Info</h6>
													<hr class="light-grey-hr">
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">First Name:</label>
																<div class="col-md-9">
																	<p class="form-control-static"> {$model.fname} </p>
																</div>
															</div>
														</div>
														<!--/span-->
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Last Name:</label>
																<div class="col-md-9">
																	<p class="form-control-static"> {$model.lname} </p>
																</div>
															</div>
														</div>
														<!--/span-->
													</div>
													<!-- /Row -->
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Nick Name:</label>
																<div class="col-md-9">
																	<p class="form-control-static"> {$model.nick} </p>
																</div>
															</div>
														</div>
														<!--/span-->
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Modelling Category:</label>
																<div class="col-md-9">
																	<p class="form-control-static"> {$model.type} </p>
																</div>
															</div>
														</div>
														<!--/span-->
													</div>
													<!-- /Row -->
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<label class="control-label col-md-3">About {$model.nick}</label>
																<div class="col-md-9">
																	<p class="form-control-static"> {$model.about|default:'N/A'} </p>
																</div>
															</div>
														</div>
														<!--/span-->
													</div>
													<!-- /Row -->
													
													<div class="seprator-block"></div>
													
													<h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-account-box mr-10"></i>Physical Features</h6>
													<hr class="light-grey-hr">
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Eyes:</label>
																<div class="col-md-9">
																	<p class="form-control-static"> {$model.eyes}</p>
																</div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Shoe size:</label>
																<div class="col-md-9">
																	<p class="form-control-static"> {$model.shoes} </p>
																</div>
															</div>
														</div>
														<!--/span-->
													</div>
													<!-- /Row -->
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Height:</label>
																<div class="col-md-9">
																	<p class="form-control-static"> {$model.height} </p>
																</div>
															</div>
														</div>
														<!--/span-->
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Biust:</label>
																<div class="col-md-9">
																	<p class="form-control-static"> {$model.biust}</p>
																</div>
															</div>
														</div>
														<!--/span-->
													</div>
													<!-- /Row -->
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Waist:</label>
																<div class="col-md-9">
																	<p class="form-control-static"> {$model.waist} </p>
																</div>
															</div>
														</div>
														<!--/span-->
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Hips:</label>
																<div class="col-md-9">
																	<p class="form-control-static"> {$model.hips} </p>
																</div>
															</div>
														</div>
														<!--/span-->
													</div>
													<!-- /Row -->
													
													<div class="seprator-block"></div>
													
													<h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-account-box mr-10"></i>Profile Photo</h6>
													<hr class="light-grey-hr">
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Profile Image:</label>
																<div class="col-md-9">
																	<img src="/uploads/{$model.image}" width="150" height="300" alt="{$model.nick}" class="img-thumbnail">
																</div>
															</div>
														</div>
														<!--/span-->
													</div>
													<!-- /Row -->
													
													<div class="seprator-block"></div>
													
													<h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-account-box mr-10"></i>{$model.nick}'s Photo Album</h6>
													<hr class="light-grey-hr">
													
													<div class="row">
                                						<div class="col-md-12">
                                							<div class="panel panel-default card-view pa-0">
                                								<div class="panel-wrapper collapse in">
                                									<div class="panel-body pa-0">
                                										<div class="">
                                											<div class="col-lg-3 col-md-4 file-directory pa-0">
                                												<div class="ibox float-e-margins">
                                													<div class="ibox-content">
                                													    <form action="/model/update-gallery/{$model.url}" method="post" enctype="multipart/form-data">
                                    														<div class="file-manager">
                                    															<div class="mt-20 mb-20 ml-15 mr-15">
                                    																<div class="fileupload btn btn-warning btn-anim btn-block"><i class="fa fa-upload"></i><span class="btn-text">Upload model pictures</span>
                                    																	<input class="upload" type="file" name="photos[]" multiple>
                                    																</div>
                                    															</div>
                                    															<div class="clearfix"></div>
                                    														</div>
                                        													<div class="row">
                                        														<div class="col-md-6">
                                        															<div class="form-group">
                                        															    <button class="form-control" type="submit" style="margin-left: 85px;">Update gallery</button>
                                        															</div>
                                        														</div>
                                        													</div>
                                													    </form>
                                													</div>
                                												</div>
                                											</div>
                                											<div class="col-lg-9 col-md-8 file-sec pt-20">
                                												<div class="row">
                                													<div class="col-lg-12">
                                        												<div class="row">
                                        												    {foreach $gallery as $photo} 
                                    															<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12  file-box">
                                    																<div class="file">
                                    																	<a href="#">
                                    																		<div class="image" style="background-image:url(/models/{$photo.image})">
                                    																		</div>
                                    																		<div class="file-name">
                                    																			<span>Added: {$photo.created_at}</span>
                                    																		</div>
                                    																	</a>
                                    																</div>
                                    															</div>
                                            												{foreachelse}
                                            												    <p>No photos uploaded yet.</p>
                                        												    {/foreach}
                                        												</div>
                                													</div>
                                												</div>
                                											</div>
                                										</div>
                                									</div>
                                								</div>
                                							</div>
                                						</div>
                                					</div>
                                					<!-- /Row-->
												</div>
												<div class="form-actions mt-10">
													<div class="row">
														<div class="col-md-6">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																	<a class="btn btn-info btn-icon left-icon  mr-10" href="/model/profile/{$model.url}"> <i class="zmdi zmdi-edit"></i> <span>Edit</span></a>
																	
																</div>
															</div>
														</div>
														<div class="col-md-6"> </div>
													</div>
												</div>
											<!--/form-->
										</div>
									</div>
								</div>
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

<!-- Data table JavaScript -->
<script src="/cdn/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="/cdn/vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="/cdn/vendors/bower_components/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="/cdn/vendors/bower_components/jszip/dist/jszip.min.js"></script>
<script src="/cdn/vendors/bower_components/pdfmake/build/pdfmake.min.js"></script>
<script src="/cdn/vendors/bower_components/pdfmake/build/vfs_fonts.js"></script>

<script src="/cdn/vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="/cdn/vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
{*<script src="/cdn/dist/js/export-table-data.js"></script>*}

<!-- Slimscroll JavaScript -->
<script src="/cdn/dist/js/jquery.slimscroll.js"></script>

<!-- Owl JavaScript -->
<script src="/cdn/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Switchery JavaScript -->
<script src="/cdn/vendors/bower_components/switchery/dist/switchery.min.js"></script>


<!-- Fancy Dropdown JS -->
<script src="/cdn/dist/js/dropdown-bootstrap-extended.js"></script>

<!-- Init JavaScript -->
<script src="/cdn/dist/js/init.js"></script>

</body>

</html>
