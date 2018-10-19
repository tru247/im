<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>{$app.name}- Edit Product</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content=""/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!--alerts CSS -->
    <link href="/cdn/admin/vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">

    <!-- Custom Fonts -->
    <link href="/cdn/admin/dist/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Calendar CSS -->
    <link href="/cdn/admin/vendors/bower_components/fullcalendar/dist/fullcalendar.css" rel="stylesheet" type="text/css"/>

    <!-- Custom CSS -->
    <link href="/cdn/admin/dist/css/style.css" rel="stylesheet" type="text/css">
    
    <style>
        .btn-file {
            position: relative;
            overflow: hidden;
        }
        .btn-file input[type=file] {
            position: absolute;
            top: 0;
            right: 0;
            min-width: 100%;
            min-height: 100%;
            font-size: 100px;
            text-align: right;
            filter: alpha(opacity=0);
            opacity: 0;
            outline: none;
            background: white;
            cursor: inherit;
            display: block;
        }
        
        #img-upload{
            width: 100%;
        }
    </style>

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
                    <h5 class="txt-dark">New Product Form</h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="/dashboard">Dashboard</a></li>
                        <li><a href="/product"><span>Inventory</span></a></li>
                        <li class="active"><span>{$prod.name}</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->
            </div>
            <!-- /Title -->

            <!-- Product Row One -->
            <div class="row">
        		<div class="col-sm-12">
        			<div class="panel panel-default card-view">
        				<div class="panel-wrapper collapse in">
        					<div class="panel-body">
        						<div class="form-wrap">
        							<form action="/product/update/{$prod.id}" method="POST" enctype="multipart/form-data">
        								<h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-info-outline mr-10"></i>about product</h6>
        								<hr class="light-grey-hr">
        								<div class="row">
        									<div class="col-md-6">
        										<div class="form-group">
        											<label class="control-label mb-10">Product Name</label>
        											<input id="" class="form-control" placeholder="Product 1" name="pname" type="text" value="{$prod.name}">
        										</div>
        									</div>
        									<!--/span-->
        									<div class="col-md-6">
        										<div class="form-group">
        											<label class="control-label mb-10">Product Summary</label>
        											<input id="lastName" class="form-control" placeholder="Short product summary" name="psummary" type="text" value="{$prod.summary}">
        										</div>
        									</div>
        									<!--/span-->
        								</div>
        								<!-- Row -->
        								<div class="row">
        									<div class="col-md-6">
        										<div class="form-group">
        											<label class="control-label mb-10">Product Category</label>
        											<select name="cat" class="form-control" data-placeholder="Choose a Category" tabindex="1">
        											    <option value="{$prod.cat}">--Select category ---</option>
        											{foreach $cats as $cat}
        												<option value="{$cat.url}">{$cat.name}</option>
        											{/foreach}
        											</select>
        										</div>
        									</div>
        									<!--/span-->
        									<div class="col-md-6">
        										<div class="form-group">
        											<label class="control-label mb-10">Status</label>
        											<div class="radio-list">
        												<div class="radio-inline pl-0">
        													<div class="radio radio-info">
        														<input name="status" id="radio1" value="1" type="radio" {if $prod.status eq 1} checked {/if}>
        														<label for="radio1">Published</label>
        													</div>
        												</div>
        												<div class="radio-inline">
        													<div class="radio radio-info">
        														<input name="status" id="radio2" value="0" type="radio" {if $prod.status eq 0} checked {/if}>
        														<label for="radio2">Draft</label>
        													</div>
        												</div>
        											</div>
        										</div>
        									</div>
        									<!--/span-->
        								</div>
        								<!--/row-->
        								<div class="row">
        									<div class="col-md-6">
        										<div class="form-group">
        											<label class="control-label mb-10">Price</label>
        											<div class="input-group">
        												<div class="input-group-addon"><i class="ti-money"></i></div>
        												<input class="form-control" name="pprice" id="exampleInputuname" placeholder="1530" type="number" value="{$prod.price}">
        											</div>
        										</div>
        									</div>
        									<!--/span-->
        									<div class="col-md-6">
        										<div class="form-group">
        											<label class="control-label mb-10">Discount</label>
        											<div class="input-group">
        												<div class="input-group-addon"><i class="ti-cut"></i></div>
        												<input name="discount" class="form-control" id="exampleInputuname_1" placeholder="12" type="number" value="{$prod.discount}">
        											</div>
        										</div>
        									</div>
        									<!--/span-->
        								</div>
        								<div class="row">
        									<div class="col-md-6">
        										<div class="form-group">
        											<label class="control-label mb-10">Sales commission</label>
        											<div class="input-group">
        												<div class="input-group-addon"><i class="ti-money"></i></div>
        												<input class="form-control" name="commission" id="exampleInputuname" placeholder="10" type="number" value="{$prod.commission}">
        											</div>
        										</div>
        									</div>
        									<!--/span-->
        									</div>
        								<div class="seprator-block"></div>
        								<h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-comment-text mr-10"></i>Product Description</h6>
        								<hr class="light-grey-hr">
        								<div class="row">
        									<div class="col-md-12">
        										<div class="form-group">
        											<textarea name="pdescription" class="form-control" rows="4">{$prod.description}</textarea>
        										</div>
        									</div>
        								</div>
        								<!--/row-->
        								<div class="row">
        									<div class="col-md-6">
        										<div class="form-group">
        											<label class="control-label mb-10">Meta Title</label>
        											<input class="form-control" type="text" name="metatitle" value="{$prod.metaTitle}">
        										</div>
        									</div>
        									<!--/span-->
        									<div class="col-md-6">
        										<div class="form-group">
        											<label class="control-label mb-10">Meta Keyword</label>
        											<input class="form-control" type="text" name="metakey" value="{$prod.metaKey}">
        										</div>
        									</div>
        								</div>
        								
        								<div class="row">
        									<div class="col-sm-6">
        										<div class="form-group">
        											<label class="control-label mb-10">Brand</label>
        											<input class="form-control" placeholder="L'Oreal" name="brand" type="text" value="{$prod.brand}">
        										</div>
        									</div>
        									<div class="col-sm-6">
        										<div class="form-group">
        											<label class="control-label mb-10">Stock quantity</label>
        											<input class="form-control" placeholder="Stock quantity" name="stock" type="number" value="{$prod.stock}">
        										</div>
        									</div>
        								</div>
        								<div class="row">
        									<div class="col-sm-12">
        										<div class="form-group">
        											<label class="control-label mb-10">Payment &amp; Delivery Condition</label>
        											<textarea class="form-control" name="delivery">{$prod.deliveryCondition}</textarea>
        										</div>
        									</div>
        								</div>
        								<div class="form-actions">
        									<button class="btn btn-success btn-icon left-icon mr-10 pull-left" type="submit"> <i class="fa fa-edit"></i> <span>UPDATE</span></button>
        									<div class="clearfix"></div>
        								</div>
        							</form>
													
									<div class="seprator-block"></div>
        						    <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-info-outline mr-10"></i>{$prod.name} Image</h6>
    								<hr class="light-grey-hr">
    								<div class="row">
    									<div class="col-md-6">
    										<div class="form-group">
    											<label class="control-label mb-10">Edit Image</label>
    											<div class="photo">
                                                    <a href="/product/profile/{$prod.url}"> <img src="/products/{$prod.image}" class="img-responsive" alt="{$prod.name}"> </a>
                                                </div>
    										</div>
    									</div>
    									<!--/span-->
                                        <div class="col-md-6">
                                            <form action="/product/edit-image/{$prod.id}" method="POST" enctype="multipart/form-data">
                                                <div class="form-group">
                                                    <label>Upload Image</label>
                                                    <div class="input-group">
                                                        <span class="input-group-btn">
                                                            <span class="btn btn-default btn-file">
                                                                Browse… <input type="file" id="imgInp" name="newImage">
                                                            </span>
                                                        </span>
                                                        <input type="text" class="form-control" readonly>
                                                    </div>
                                                    <img id='img-upload'/>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-success">UPLOAD NEW IMAGE</button>
                                                </div>
                                            </form>
                                        </div>
    									<!--/span-->
    								</div>
    								
    								<div class="seprator-block"></div>
    								<h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-account-box mr-10"></i>{$prod.name}'s Photo Album</h6>
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
                													    <form action="/product/add-product-gallery/{$prod.url}" method="post" enctype="multipart/form-data">
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
                    																		<div class="image" style="background-image:url(/products/{$photo.image})"> 
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
        					</div>
        				</div>
        			</div>
        		</div>
        	</div>

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
<script src="/cdn/admin/vendors/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/cdn/admin/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Slimscroll JavaScript -->
<script src="/cdn/admin/dist/js/jquery.slimscroll.js"></script>

<!-- Owl JavaScript -->
<script src="/cdn/admin/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Sweet-Alert  -->
<script src="/cdn/admin/vendors/bower_components/sweetalert/dist/sweetalert.min.js"></script>
<script src="/cdn/admin/dist/js/sweetalert-data.js"></script>

<!-- Switchery JavaScript -->
<script src="/cdn/admin/vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Fancy Dropdown JS -->
<script src="/cdn/admin/dist/js/dropdown-bootstrap-extended.js"></script>

<!-- Init JavaScript -->
<script src="/cdn/admin/dist/js/init.js"></script>

{literal}
    <script>
        $(document).ready( function() {
        	$(document).on('change', '.btn-file :file', function() {
        	var input = $(this),
        		label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
        	input.trigger('fileselect', [label]);
        	});
        
        	$('.btn-file :file').on('fileselect', function(event, label) {
        	    
        	    var input = $(this).parents('.input-group').find(':text'),
        	        log = label;
        	    
        	    if( input.length ) {
        	        input.val(log);
        	    } else {
        	        if( log ) alert(log);
        	    }
            
        	});
        	function readURL(input) {
        	    if (input.files && input.files[0]) {
        	        var reader = new FileReader();
        	        
        	        reader.onload = function (e) {
        	            $('#img-upload').attr('src', e.target.result);
        	        }
        	        
        	        reader.readAsDataURL(input.files[0]);
        	    }
        	}
        
        	$("#imgInp").change(function(){
        	    readURL(this);
        	}); 	
        });
    </script>
{/literal}

</body>
</html>
