<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Kimsape - Add New Product</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content=""/>
    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- Custom CSS -->
    <link href="/cdn/dist/css/style.css" rel="stylesheet" type="text/css">
</head>
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
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h5 class="txt-dark">add-products</h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="index-2.html">Dashboard</a></li>
                        <li><a href="#"><span>Inventory</span></a></li>
                        <li class="active"><span>Add product details</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->
            </div>
            <!-- /Title -->

            <!-- Row -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-default card-view">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div class="form-wrap">
                                    <form id="prod-details-form" action="{$globals.prod.add_details|cat:($p.sku)}" method="post" enctype="multipart/form-data">
                                        <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-info-outline mr-10"></i>about product</h6>
                                        <hr class="light-grey-hr"/>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="name" class="control-label mb-10">Product Name</label>
                                                    <input type="text" id="name" name="name" class="form-control">
                                                    <input type="hidden" id="name" name="creator" class="form-control" value="{$uID}">
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="summary" class="control-label mb-10">Product summary</label>
                                                    <input type="text" id="summary" name="summary" class="form-control" placeholder="globe type chair for rest">
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!-- Row -->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="category" class="control-label mb-10">Category</label>
                                                    <select id="category" class="form-control" name="category" data-placeholder="Choose a Category" tabindex="1">
                                                        {foreach $cats as $cat}
                                                            {if $cat.ref neq 'CAT001'}
                                                                <option value="{$cat.ref}">{$cat.name}</option>
                                                            {/if}
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
                                                                <input type="radio" name="status" id="radio1" value="published">
                                                                <label for="radio1">Published</label>
                                                            </div>
                                                        </div>
                                                        <div class="radio-inline">
                                                            <div class="radio radio-info">
                                                                <input type="radio" name="status" id="radio2" value="draft">
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
                                                    <label for="price" class="control-label mb-10">Price</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon"><i class="ti-money"></i></div>
                                                        <input type="text" class="form-control" id="price" name="price">
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="discount" class="control-label mb-10">Discount</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon"><i class="ti-cut"></i></div>
                                                        <input type="text" class="form-control" name="discount" id="discount" placeholder="16%">
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <div class="seprator-block"></div>
                                        <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-comment-text mr-10"></i>Product Description</h6>
                                        <hr class="light-grey-hr"/>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <textarea name="description" class="form-control" rows="4">

                                                    </textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="mtitle" class="control-label mb-10">Meta Title</label>
                                                    <input id="mtitle" name="mtitle" type="text" class="form-control">
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="mkey" class="control-label mb-10">Meta Keyword</label>
                                                    <input id="mkey" name="mkey" type="text" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="seprator-block"></div>
                                        <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-collection-image mr-10"></i>Product image</h6>
                                        <hr class="light-grey-hr"/>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="img-upload-wrap">
                                                    <img class="img-responsive" src="/uploads/{$p.imgUrl}" alt="{$p.name}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="seprator-block"></div>

                                        <div class="form-actions">
                                            <button class="btn btn-success btn-icon left-icon mr-10 pull-left"> <i class="fa fa-check"></i> <span>save</span></button>
                                            <button type="button" class="btn btn-warning pull-left">Cancel</button>
                                            <div class="clearfix"></div>
                                        </div>
                                    </form>
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
                    <p>2017 &copy; <a href="https://www.Kimsape.co.ke">Kimsape</a>. Pampered by Trulance Technologies.</p>
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
<script src="/cdn/dist/js/emboga.js"></script>

</body>

</html>