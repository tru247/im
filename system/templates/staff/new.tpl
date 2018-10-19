{include file="shared/admin_header.tpl"}
	
<body>
	<!--Preloader-->
	<div class="preloader-it">
		<div class="la-anim-1"></div>
	</div>
	<!--/Preloader-->
	
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
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <h5 style="" class="txt-dark"><i class="fa fa-plus"></i> New User Form</h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <ol class="breadcrumb">
						<li><a href="/dashboard">Dashboard</a></li>
						<li class="active"><span>Add new user</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->
            </div>
            <!-- /Title -->
            <hr>
				
			<!-- Row -->
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default card-view">
						<!-- <div class="panel-heading">
							<div class="pull-left">
								<h6 class="panel-title txt-dark">New Staff Form</h6>
							</div>
							<div class="clearfix"></div>
						</div> -->
						<div class="panel-wrapper collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-12">
										<div class="form-wrap">
											<form id="staff-reg-form" action="{$globals.staff.add}" method="post" class="form-horizontal" enctype="multipart/form-data">
												<div class="form-body">
													<h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-account mr-10"></i>Person's Info</h6>
													<hr class="light-grey-hr"/>
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">First Name</label>
																<div class="col-md-9">
																	<input type="text" name="fname" class="form-control" placeholder="John" required>
																	<!-- <span class="help-block"> This is inline help </span>  -->
																</div>
															</div>
														</div>
														<!--/span-->
														<div class="col-md-6">
															<!-- has-error-->
															<div class="form-group ">
																<label class="control-label col-md-3">Last Name</label>
																<div class="col-md-9">
																	<input type="text" name="lname" class="form-control" placeholder="Doe" required>
																	<!-- <span class="help-block"> This field has error. </span>  -->
																</div>
															</div>
														</div>
														<!--/span-->
													</div>
													<!-- /Row -->
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Email</label>
																<div class="col-md-9">
																	<input type="email" name="email" class="form-control" placeholder="johndoe@gmail.com" required>
																	<!-- <span class="help-block"> This is inline help </span>  -->
																</div>
															</div>
														</div>
														<!--/span-->
														<div class="col-md-6">
															<!-- has-error-->
															<div class="form-group ">
																<label class="control-label col-md-3">Phone</label>
																<div class="col-md-9">
																	<input type="text" name="phone" class="form-control" placeholder="" required>
																	<!-- <span class="help-block"> This field has error. </span>  -->
																</div>
															</div>
														</div>
														<!--/span-->
													</div>
													<!-- /Row -->
													<div class="row">
														<div class="col-md-6">
															<!-- has-error-->
															<div class="form-group ">
																<label class="control-label col-md-3">Role</label>
																<div class="col-md-9">
																	<select name="role" class="form-control" required>
																		<option value="">--Select User Role--</option>
																		{foreach $roles as $role}
																			{if $role.id neq 4 && $role.id neq 1}
																				<option value="{$role.id}">{ucfirst($role.title)}</option>
																			{/if}
																		{/foreach}
																	</select>
																</div>
															</div>
														</div>
														<!--/span-->
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Password</label>
																<div class="col-md-9">
																	<input type="Password" name="pwd" class="form-control"  required>
																	<!-- <span class="help-block"> This is inline help </span>  -->
																</div>
															</div>
														</div>
														<!--/span-->
													</div>
													<!-- /Row -->
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Gender</label>
																<div class="col-md-9">
																	<select name="gender" class="form-control">
																		<option value="">--Select your gender--</option>
																		<option value="m">Male</option>
																		<option value="f">Female</option>
																		<option value="g">Geek</option>
																	</select>
																	<span class="help-block"> Select your gender. </span> 
																</div>
															</div>
														</div>
														<!--/span
														<div class="col-md-6">
															<div class="form-group">
																<label class="control-label col-md-3">Date of Birth</label>
																<div class="col-md-9">
																	<input type="text" id="dob" name="dob" class="form-control" placeholder="yyyy/mm/dd">
																</div>
															</div>
														</div>
														/span-->
													</div>
													<!-- /Row -->
												</div>
												<div class="form-actions mt-10">
													<div class="row">
														<div class="col-md-6">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																	<button type="submit" class="btn btn-success  mr-10">Submit</button>
																	<button type="button" class="btn btn-default">Cancel</button>
																</div>
															</div>
														</div>
														<div class="col-md-6"> </div>
													</div>
												</div>
											</form>
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

{include file="shared/admin_footer.tpl"}