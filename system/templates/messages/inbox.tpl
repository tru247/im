{include file="shared/admin_header.tpl"}

<body>
<!-- Preloader -->
<div class="preloader-it">
    <div class="la-anim-1"></div>
</div>
<!-- /Preloader -->
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
					  <h5 class="txt-dark">Inbox</h5>
					</div>
					<!-- Breadcrumb -->
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
					  <ol class="breadcrumb">
						<li><a href="index-2.html">Dashboard</a></li>
						<li><a href="#"><span>Messages</span></a></li>
						<li class="active"><span>inbox</span></li>
					  </ol>
					</div>
					<!-- /Breadcrumb -->
				</div>
				<!-- /Title -->
				
				<!-- Row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default card-view pa-0">
							<div class="panel-wrapper collapse in">
								<div class="panel-body pa-0">
									<div class="mail-box">
										<div class="row">
											<aside class="col-lg-3 col-md-4 pr-0">
												<div class="mt-20 mb-20 ml-15 mr-15">
													{*<a href="#myModal" data-toggle="modal" title="Compose" class="btn btn-danger btn-block">
													Compose
													</a>*}
													<!-- Modal -->
													<div aria-hidden="true" role="dialog" tabindex="-1" id="myModal" class="modal fade" style="display: none;">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
																	<h4 class="modal-title">Compose</h4>
																</div>
																<div class="modal-body">
																	<form role="form" class="form-horizontal">
																		<div class="form-group">
																			<label class="col-lg-2 control-label">To</label>
																			<div class="col-lg-10">
																				<input placeholder="" id="inputEmail1" class="form-control" type="text">
																			</div>
																		</div>
																		<div class="form-group">
																			<label class="col-lg-2 control-label">Cc / Bcc</label>
																			<div class="col-lg-10">
																				<input placeholder="" id="cc" class="form-control" type="text">
																			</div>
																		</div>
																		<div class="form-group">
																			<label class="col-lg-2 control-label">Subject</label>
																			<div class="col-lg-10">
																				<input placeholder="" id="inputPassword1" class="form-control" type="text">
																			</div>
																		</div>
																		<div class="form-group">
																			<label class="col-lg-2 control-label">Message</label>
																			<div class="col-lg-10">
																				<ul class="wysihtml5-toolbar" style=""><li class="dropdown">
  <a class="btn btn-default dropdown-toggle " data-toggle="dropdown">
    
      <span class="fa fa-font"></span>
    
    <span class="current-font">Normal text</span>
    <b class="caret"></b>
  </a>
  <ul class="dropdown-menu">
    <li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="p" tabindex="-1" href="javascript:;" unselectable="on">Normal text</a></li>
    <li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h1" tabindex="-1" href="javascript:;" unselectable="on">Heading 1</a></li>
    <li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h2" tabindex="-1" href="javascript:;" unselectable="on">Heading 2</a></li>
    <li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h3" tabindex="-1" href="javascript:;" unselectable="on">Heading 3</a></li>
    <li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h4" tabindex="-1" href="javascript:;" unselectable="on">Heading 4</a></li>
    <li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h5" tabindex="-1" href="javascript:;" unselectable="on">Heading 5</a></li>
    <li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h6" tabindex="-1" href="javascript:;" unselectable="on">Heading 6</a></li>
  </ul>
</li>
<li>
  <div class="btn-group">
    <a class="btn  btn-default" data-wysihtml5-command="bold" title="CTRL+B" tabindex="-1" href="javascript:;" unselectable="on">Bold</a>
    <a class="btn  btn-default" data-wysihtml5-command="italic" title="CTRL+I" tabindex="-1" href="javascript:;" unselectable="on">Italic</a>
    <a class="btn  btn-default" data-wysihtml5-command="underline" title="CTRL+U" tabindex="-1" href="javascript:;" unselectable="on">Underline</a>
    
    <a class="btn  btn-default" data-wysihtml5-command="small" title="CTRL+S" tabindex="-1" href="javascript:;" unselectable="on">Small</a>
    
  </div>
</li>
<li>
  <a class="btn  btn-default" data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="blockquote" data-wysihtml5-display-format-name="false" tabindex="-1" href="javascript:;" unselectable="on">
     
      <span class="fa fa-quote-left"></span>
    
  </a>
</li>
<li>
  <div class="btn-group">
    <a class="btn  btn-default" data-wysihtml5-command="insertUnorderedList" title="Unordered list" tabindex="-1" href="javascript:;" unselectable="on">
    
      <span class="fa fa-list-ul"></span>
    
    </a>
    <a class="btn  btn-default" data-wysihtml5-command="insertOrderedList" title="Ordered list" tabindex="-1" href="javascript:;" unselectable="on">
    
      <span class="fa fa-list-ol"></span>
    
    </a>
    <a class="btn  btn-default" data-wysihtml5-command="Outdent" title="Outdent" tabindex="-1" href="javascript:;" unselectable="on">
    
      <span class="fa fa-outdent"></span>
    
    </a>
    <a class="btn  btn-default" data-wysihtml5-command="Indent" title="Indent" tabindex="-1" href="javascript:;" unselectable="on">
    
      <span class="fa fa-indent"></span>
    
    </a>
  </div>
</li>
<li>
  <div class="bootstrap-wysihtml5-insert-link-modal modal fade" data-wysihtml5-dialog="createLink">
    <div class="modal-dialog ">
      <div class="modal-content">
        <div class="modal-header">
          <a class="close" data-dismiss="modal">×</a>
          <h3>Insert link</h3>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <input value="http://" class="bootstrap-wysihtml5-insert-link-url form-control" data-wysihtml5-dialog-field="href">
          </div> 
          <div class="checkbox">
            <label> 
              <input class="bootstrap-wysihtml5-insert-link-target" checked="" type="checkbox">Open link in new window
            </label>
          </div>
        </div>
        <div class="modal-footer">
          <a class="btn btn-default" data-dismiss="modal" data-wysihtml5-dialog-action="cancel" href="#">Cancel</a>
          <a href="#" class="btn btn-primary" data-dismiss="modal" data-wysihtml5-dialog-action="save">Insert link</a>
        </div>
      </div>
    </div>
  </div>
  <a class="btn  btn-default" data-wysihtml5-command="createLink" title="Insert link" tabindex="-1" href="javascript:;" unselectable="on">
    
      <span class="fa fa-share-square-o"></span>
    
  </a>
</li>
<li>
  <div class="bootstrap-wysihtml5-insert-image-modal modal fade" data-wysihtml5-dialog="insertImage">
    <div class="modal-dialog ">
      <div class="modal-content">
        <div class="modal-header">
          <a class="close" data-dismiss="modal">×</a>
          <h3>Insert image</h3>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <input value="http://" class="bootstrap-wysihtml5-insert-image-url form-control">
          </div> 
        </div>
        <div class="modal-footer">
          <a class="btn btn-default" data-dismiss="modal" data-wysihtml5-dialog-action="cancel" href="#">Cancel</a>
          <a class="btn btn-primary" data-dismiss="modal" data-wysihtml5-dialog-action="save" href="#">Insert image</a>
        </div>
      </div>
    </div>
  </div>
  <a class="btn  btn-default" data-wysihtml5-command="insertImage" title="Insert image" tabindex="-1" href="javascript:;" unselectable="on">
    
      <span class="fa fa-file-image-o"></span>
    
  </a>
</li>
</ul><textarea class="textarea_editor form-control" rows="15" style="display: none;" placeholder="Enter text ..."></textarea><input name="_wysihtml5_mode" value="1" type="hidden"><iframe class="wysihtml5-sandbox" security="restricted" allowtransparency="true" marginwidth="0" marginheight="0" style="background-color: rgb(255, 255, 255); border-collapse: separate; border-color: rgba(33, 33, 33, 0.12); border-style: solid; border-width: 1px; clear: none; display: block; float: none; margin: 0px; outline: 0px none rgb(33, 33, 33); outline-offset: 0px; padding: 6px 12px; position: static; top: auto; left: auto; right: auto; bottom: auto; z-index: auto; vertical-align: text-bottom; text-align: start; box-sizing: border-box; box-shadow: none; border-radius: 0px; width: 100%; height: auto;" width="0" height="0" frameborder="0"></iframe>
																			</div>
																		</div>
																		<div class="form-group">
																			<div class="col-lg-offset-2 col-lg-10">
																				<div class="fileupload btn btn-info btn-anim mr-10"><i class="fa fa-paperclip"></i><span class="btn-text">attachments</span>
																					<input class="upload" type="file">
																				</div>
																				
																				<button class="btn btn-success" type="submit">Send</button>
																			</div>
																		</div>
																	</form>
																</div>
															</div>
															<!-- /.modal-content -->
														</div>
														<!-- /.modal-dialog -->
													</div>
													<!-- /.modal -->
												</div>
												<ul class="inbox-nav mb-30">
													<li class="active">
														<a href="/feedback/inbox"><i class="zmdi zmdi-inbox"></i> Inbox <span class="label label-danger ml-10">{$totalMsgs}</span></a>
													</li>
													{*<li>
														<a href="#"><i class="zmdi zmdi-email-open"></i> Sent Mail</a>
													</li>
													<li>
														<a href="#"><i class="zmdi zmdi-bookmark-outline"></i> Important</a>
													</li>
													<li>
														<a href="#"><i class="zmdi zmdi-folder-outline"></i> Drafts <span class="label label-info ml-10">30</span></a>
													</li>
													<li>
														<a href="#"><i class="zmdi zmdi-delete"></i> Trash</a>
													</li>*}
												</ul>
												{*<h6 class="pl-15 mb-20">Labels</h6>
												<ul class="inbox-nav mb-30">
													<li> <a href="#"> <i class=" fa fa-stop txt-danger"></i> Work </a> </li>
													<li> <a href="#"> <i class=" fa fa-stop txt-success"></i> Design </a> </li>
													<li> <a href="#"> <i class=" fa fa-stop txt-info "></i> Family </a>
													</li>
													<li> <a href="#"> <i class=" fa fa-stop txt-warning "></i> Friends </a>
													</li>
													<li> <a href="#"> <i class=" fa fa-stop txt-primary "></i> Office </a>
													</li>
												</ul>
												<h6 class="pl-15 mb-20">online</h6>
													<ul class="chat-list-wrap">
													<li class="chat-list">
														<div class="chat-body">
															<a href="javascript:void(0)">
																<div class="chat-data">
																	<img class="user-img img-circle" src="dist/img/user.png" alt="user">
																	<div class="user-data">
																		<span class="name block capitalize-font">Clay Masse</span>
																		<span class="time block truncate txt-grey">No one saves us but ourselves.</span>
																	</div>
																	<div class="status away"></div>
																	<div class="clearfix"></div>
																</div>
															</a>
															<a href="javascript:void(0)">
																<div class="chat-data">
																	<img class="user-img img-circle" src="dist/img/user1.png" alt="user">
																	<div class="user-data">
																		<span class="name block capitalize-font">Evie Ono</span>
																		<span class="time block truncate txt-grey">Unity is strength</span>
																	</div>
																	<div class="status offline"></div>
																	<div class="clearfix"></div>
																</div>
															</a>
															<a href="javascript:void(0)">
																<div class="chat-data">
																	<img class="user-img img-circle" src="dist/img/user2.png" alt="user">
																	<div class="user-data">
																		<span class="name block capitalize-font">Madalyn Rascon</span>
																		<span class="time block truncate txt-grey">Respect yourself if you would have others respect you.</span>
																	</div>
																	<div class="status online"></div>
																	<div class="clearfix"></div>
																</div>
															</a>
															<a href="javascript:void(0)">
																<div class="chat-data">
																	<img class="user-img img-circle" src="dist/img/user3.png" alt="user">
																	<div class="user-data">
																		<span class="name block capitalize-font">Mitsuko Heid</span>
																		<span class="time block truncate txt-grey">I’m thankful.</span>
																	</div>
																	<div class="status online"></div>
																	<div class="clearfix"></div>
																</div>
															</a>
															<a href="javascript:void(0)">
																<div class="chat-data">
																	<img class="user-img img-circle" src="dist/img/user.png" alt="user">
																	<div class="user-data">
																		<span class="name block capitalize-font">Ezequiel Merideth</span>
																		<span class="time block truncate txt-grey">Patience is bitter.</span>
																	</div>
																	<div class="status offline"></div>
																	<div class="clearfix"></div>
																</div>
															</a>
														</div>
													</li>
												</ul>*}
											</aside>
											
											<aside class="col-lg-9 col-md-8 pl-0">
												<div class="panel panel-refresh pa-0">
													<div class="refresh-container">
														<div class="la-anim-1"></div>
													</div>
													<div class="panel-heading pt-20 pb-20 pl-15 pr-15">
														<div class="pull-left">
															<h6 class="panel-title txt-dark">inbox</h6>
														</div>
														<div class="pull-right">
															<form role="search" class="inbox-search inline-block pull-left mr-15">
																<div class="input-group">
																	<input name="example-input1-group2" class="form-control" placeholder="Search" type="text">
																	<span class="input-group-btn">
																	<button type="button" class="btn  btn-default" data-target="#search_form" data-toggle="collapse" aria-label="Close" aria-expanded="true"><i class="zmdi zmdi-search"></i></button>
																	</span>
																</div>
															</form>
															<a href="#" class="pull-left inline-block refresh">
																<i class="zmdi zmdi-replay"></i>
															</a>
														</div>
														<div class="clearfix"></div>
													</div>
													<div class="panel-wrapper collapse in">
														<div class="panel-body inbox-body pa-0">
															{*<div class="mail-option pl-15 pr-15">
																<div class="chk-all">
																	<div class="checkbox checkbox-default inline-block">
																		<input id="checkbox051" type="checkbox">
																		<label for="checkbox051"></label>
																	</div>
																	<div class="btn-group">
																		<a data-toggle="dropdown" href="#" class="btn  all" aria-expanded="false">
																		All
																		<i class="fa fa-angle-down "></i>
																		</a>
																		<ul class="dropdown-menu">
																			<li><a href="#"> None</a></li>
																			<li><a href="#"> Read</a></li>
																			<li><a href="#"> Unread</a></li>
																		</ul>
																	</div>
																	<div class="btn-group">
																		<a data-toggle="dropdown" href="#" class="btn  blue">
																		Move to
																		<i class="fa fa-angle-down "></i>
																		</a>
																		<ul class="dropdown-menu">
																			<li><a href="#">Personal</a></li>
																			<li><a href="#">Social</a></li>
																			<li class="divider"></li>
																			<li><a href="#">Promotional</a></li>
																			<li class="divider"></li>
																			<li><a href="#">Updates</a></li>
																		</ul>
																	</div>
																	<div class="btn-group">
																		<a data-toggle="dropdown" href="#" class="btn  blue" aria-expanded="false">
																		More
																		<i class="fa fa-angle-down "></i>
																		</a>
																		<ul class="dropdown-menu">
																			<li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
																			<li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
																			<li class="divider"></li>
																			<li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
																		</ul>
																	</div>
																</div>
																<ul class="unstyled inbox-pagination">
																	<li><span>1-10 of 234</span></li>
																	<li>
																		<a class="pl-15 pr-15" href="#"><i class="fa fa-angle-left  pagination-left"></i></a>
																	</li>
																	<li>
																		<a href="#"><i class="fa fa-angle-right pagination-right"></i></a>
																	</li>
																</ul>
															</div>*}
															<div class="table-responsive mb-0">
																<table class="table table-inbox table-hover mb-0">
																	<tbody>
																	    {foreach $messages as $msg}
    																		<tr {if $msg.status eq 'new'}class="unread"{/if}>
    																			<td class="view-message  dont-show">{$msg.name} {if $msg.status eq 'new'} <span class="label label-warning pull-right">new</span> {/if}</td>
    																			<td class="view-message ">{$msg.subject}</td>
    																			<td class="view-message  text-right">
    																				{*<i class="zmdi zmdi-attachment inline-block mr-15 font-16"></i>*}
    																				<span class="time-chat-history inline-block">{$msg.created_at}</span>
    																			</td>
    																			<td class="inbox-small-cells">
    																			    <a href="/feedback/view-message/{$msg.id}">view</a>
    																				{*<div class="checkbox checkbox-default inline-block">
    																					<input id="checkbox012" type="checkbox">
    																					<label for="checkbox012"></label>
    																				</div>
    																				<i class="zmdi zmdi-star inline-block font-16"></i>*}
    																			</td>
    																		</tr>
																	    {foreachelse}
    																		<tr class="unread">
																	            <p>No Messages Received so far</p>
																	        </tr>
																	    {/foreach}
																	</tbody>
																</table>
															</div>
														</div>
													</div>
												</div>
											</aside>
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
                        <p>
                            {$copyright}
                        </p>
                    </div>
                </div>
            </footer>
            <!-- /Footer -->
    
    </div>
    <!-- /#wrapper -->

<!-- JavaScript -->

<!-- jQuery -->
<script src="/cdn/vendors/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/cdn/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Data table JavaScript -->
<script src="/cdn/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>

<!-- Slimscroll JavaScript -->
<script src="/cdn/dist/js/jquery.slimscroll.js"></script>

<!-- simpleWeather JavaScript -->
<script src="/cdn/vendors/bower_components/moment/min/moment.min.js"></script>
<script src="/cdn/vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
<script src="/cdn/dist/js/simpleweather-data.js"></script>

<!-- Progressbar Animation JavaScript -->
<script src="/cdn/vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="/cdn/vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>

<!-- Fancy Dropdown JS -->
<script src="/cdn/dist/js/dropdown-bootstrap-extended.js"></script>

<!-- Sparkline JavaScript -->
<script src="/cdn/vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>

<!-- Owl JavaScript -->
<script src="/cdn/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- ChartJS JavaScript -->
<script src="/cdn/vendors/chart.js/Chart.min.js"></script>

<!-- EasyPieChart JavaScript -->
<script src="/cdn/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
<!-- Morris Charts JavaScript -->
<script src="/cdn/vendors/bower_components/raphael/raphael.min.js"></script>
<script src="/cdn/vendors/bower_components/morris.js/morris.min.js"></script>
<script src="/cdn/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>

<!-- Switchery JavaScript -->
<script src="/cdn/vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Bootstrap Select JavaScript -->
<script src="/cdn/vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>

<!-- Init JavaScript -->
<script src="/cdn/dist/js/init.js"></script>
<script src="/cdn/dist/js/dashboard-data.js"></script>
<script src="/cdn/dist/js/ecommerce-data.js"></script>
</body>

</html>
