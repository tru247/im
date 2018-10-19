{include file="shared/admin_header.tpl"}

<body>
<!-- Preloader 
<div class="preloader-it">
    <div class="la-anim-1"></div>
</div>
/Preloader -->
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
        <div class="container-fluid pt-25">
                <h1 style="font-size: 30px" class="text-center"><i class="fa fa-tachometer"></i><strong style="color: #3ab54a;"> {$app.name}</strong> Dashboard</h1 style="font-size: 30px"><hr>
            <!-- Row -->
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="panel panel-default card-view pa-0">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body pa-0">
                                <div class="sm-data-box bg-yellow">
                                    <a href="/staff/sysadmins">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-light block counter"><span class="counter-anim">{$sysadmins|default: '0'}</span></span>
                                                    <span class="weight-500 uppercase-font txt-light block font-13">System Admin(s)</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <i class="fa fa-user-secret txt-light data-right-rep-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="panel panel-default card-view pa-0">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body pa-0">
                                <div class="sm-data-box bg-red">
                                    <a href="/staff/admins">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-light block counter"><span class="counter-anim">{$admins|default: '0'}</span></span>
                                                    <span class="weight-500 uppercase-font txt-light block">Gen. Manager(s)</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <i class="fa fa-user txt-light data-right-rep-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="panel panel-default card-view pa-0">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body pa-0">
                                <div class="sm-data-box bg-green">
                                    <a href="/staff/all">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-light block counter"><span class="counter-anim">{$staff|default: '0'}</span></span>
                                                    <span class="weight-500 uppercase-font txt-light block">Staff Member(s)</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <i class="fa fa-users txt-light data-right-rep-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="panel panel-default card-view pa-0">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body pa-0">
                                <div class="sm-data-box bg-blue">
                                    <a href="/clients">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-light block counter"><span class="counter-anim">{$clients|default: '0'}</span></span>
                                                    <span class="weight-500 uppercase-font txt-light block">Client(s)</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">
                                                    <i class="fa fa-briefcase txt-light data-right-rep-icon"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Row -->
            
            <!-- Row -->
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="panel panel-default card-view pa-0">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body pa-0">
                                <div class="sm-data-box bg-blue">
                                    <a href="/category">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-light block counter"><span class="counter-anim">{$categories|default: '0'}</span></span>
                                                    <span class="weight-500 uppercase-font txt-light block">Category(ies)</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                    <i style="color:#ffffff;" class="fa fa-4x fa-server"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="panel panel-default card-view pa-0">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body pa-0">
                                <div class="sm-data-box bg-green">
                                    <a href="/product">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-light block counter"><span class="counter-anim">{$products|default: '0'}</span></span>
                                                    <span class="weight-500 uppercase-font txt-light block">Products(s)</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">
                                                    <i style="color:#ffffff;" class="fa fa-4x fa-database"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="panel panel-default card-view pa-0">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body pa-0">
                                <div class="sm-data-box bg-red">
                                    <a href="/order">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                    <span class="txt-light block counter"><span class="counter-anim">{$orderCount|default: '0'}</span></span>
                                                    <span class="weight-500 uppercase-font txt-light block">Order(s)</span>
                                                </div>
                                                <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">
                                                    <i style="color:#ffffff;" class="fa fa-4x fa-shopping-basket"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="panel panel-default card-view pa-0">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body pa-0">
                                <div class="sm-data-box bg-yellow">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                <span class="txt-light block counter"><span class="counter-anim">{$sales|default: '0'}</span></span>
                                                <span class="weight-500 uppercase-font txt-light block">Sale(s)</span>
                                            </div>
                                            <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">
                                                <i style="color:#ffffff;" class="fa fa-4x fa-money"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Row -->
            
            <hr>
            
            <!-- Row -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <div class="panel panel-default card-view">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div class="table-wrap">
                                    <div class="table-responsive">
                                        <h2><i class="fa fa-shopping-basket"></i><strong style="color: #3ab54a;"> {$app.name}</strong> Orders</h2>
                                        <hr>
                                        {include file="shared/orders.tpl"}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Row -->
            <hr>

            <!-- Row 
            <div class="row">
                <h4 style="text-decoration: underline;" class="text-center">{$appName} Social Media Management System</h4><br />
				<div class="col-lg-8 col-md-7 col-sm-12 col-xs-12">
					<div class="panel panel-default card-view panel-refresh">
						<div class="refresh-container">
							<div class="la-anim-1"></div>
						</div>
						<div class="panel-heading">
							<div class="pull-left">
								<h6 class="panel-title txt-dark">social campaigns</h6>
							</div>
							<div class="pull-right">
								<a href="#" class="pull-left inline-block refresh mr-15">
									<i class="zmdi zmdi-replay"></i>
								</a>
								<a href="#" class="pull-left inline-block full-screen mr-15">
									<i class="zmdi zmdi-fullscreen"></i>
								</a>
								<div class="pull-left inline-block dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi zmdi-more-vert"></i></a>
									<ul class="dropdown-menu bullet dropdown-menu-right" role="menu">
										<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>Edit</a></li>
										<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>Delete</a></li>
										<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-trash" aria-hidden="true"></i>New</a></li>
									</ul>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-wrapper collapse in">
							<div class="panel-body row pa-0">
								<div class="table-wrap">
									<div class="table-responsive">
										<table class="table table-hover mb-0">
											<thead>
												<tr>
													<th>Campaign</th>
													<th>Client</th>
													<th>Changes</th>
													<th>Budget</th>
													<th>Status</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><span class="txt-dark weight-500">Facebook</span></td>
													<td>Beavis</td>
													<td><span class="txt-success"><i class="zmdi zmdi-caret-up mr-10 font-20"></i><span>2.43%</span></span></td>
													<td>
														<span class="txt-dark weight-500">$1478</span>
													</td>
													<td>
														<span class="label label-primary">Active</span>
													</td>
												</tr>
												<tr>
													<td><span class="txt-dark weight-500">Youtube</span></td>
													<td>Felix</td>
													<td><span class="txt-success"><i class="zmdi zmdi-caret-up mr-10 font-20"></i><span>1.43%</span></span></td>
													<td>
														<span class="txt-dark weight-500">$951</span>
													</td>
													<td>
														<span class="label label-danger">Closed</span>
													</td>
												</tr>
												<tr>
													<td><span class="txt-dark weight-500">Twitter</span></td>
													<td>Cannibus</td>
													<td><span class="txt-danger"><i class="zmdi zmdi-caret-down mr-10 font-20"></i><span>-8.43%</span></span></td>
													<td>
														<span class="txt-dark weight-500">$632</span>
													</td>
													<td>
														<span class="label label-default">Hold</span>
													</td>
												</tr>
												<tr>
													<td><span class="txt-dark weight-500">Spotify</span></td>
													<td>Neosoft</td>
													<td><span class="txt-success"><i class="zmdi zmdi-caret-up mr-10 font-20"></i><span>7.43%</span></span></td>
													<td>
														<span class="txt-dark weight-500">$325</span>
													</td>
													<td>
														<span class="label label-default">Hold</span>
													</td>
												</tr>
												<tr>
													<td><span class="txt-dark weight-500">Instagram</span></td>
													<td>Hencework</td>
													<td><span class="txt-success"><i class="zmdi zmdi-caret-up mr-10 font-20"></i><span>9.43%</span></span></td>
													<td>
														<span class="txt-dark weight-500">$258</span>
													</td>
													<td>
														<span class="label label-primary">Active</span>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>	
							</div>	
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-5 col-sm-12 col-xs-12">
					<div class="panel panel-default card-view panel-refresh">
						<div class="refresh-container">
							<div class="la-anim-1"></div>
						</div>
						<div class="panel-heading">
							<div class="pull-left">
								<h6 class="panel-title txt-dark">Advertising &amp; Promotions</h6>
							</div>
							<div class="pull-right">
								<a href="#" class="pull-left inline-block refresh mr-15">
									<i class="zmdi zmdi-replay"></i>
								</a>
								<div class="pull-left inline-block dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi zmdi-more-vert"></i></a>
									<ul class="dropdown-menu bullet dropdown-menu-right" role="menu">
										<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>option 1</a></li>
										<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>option 2</a></li>
										<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-trash" aria-hidden="true"></i>option 3</a></li>
									</ul>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-wrapper collapse in">
							<div class="panel-body">
								<div><iframe class="chartjs-hidden-iframe" style="width: 100%; display: block; border: 0px none; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
									<canvas id="chart_2" height="253" style="display: block; width: 358px; height: 253px;" width="358"></canvas>
								</div>	
								<div class="label-chatrs mt-30">
									<div class="inline-block mr-15">
										<span class="clabels inline-block bg-yellow mr-5"></span>
										<span class="clabels-text font-12 inline-block txt-dark capitalize-font">Active</span>
									</div>
									<div class="inline-block mr-15">
										<span class="clabels inline-block bg-red mr-5"></span>
										<span class="clabels-text font-12 inline-block txt-dark capitalize-font">Closed</span>
									</div>	
									<div class="inline-block">
										<span class="clabels inline-block bg-green mr-5"></span>
										<span class="clabels-text font-12 inline-block txt-dark capitalize-font">Hold</span>
									</div>											
								</div>
							</div>
						</div>	
					</div>	
				</div>	
			</div>
             /Row -->
        </div>

        <!-- Footer -->
        <footer class="footer container-fluid pl-30 pr-30">
            <div class="row">
                <div class="col-sm-12">
                    <p>
                        {$copyright}
                    </p>
                </div>
            </div>
        </footer>
        <!-- /Footer -->

    </div>
    <!-- /Main Content -->

</div>
<!-- /#wrapper -->

{include file="shared/admin_footer.tpl"}