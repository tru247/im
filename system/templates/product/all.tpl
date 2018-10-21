<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>{$appName}- Products</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content=""/>

    <!-- Favicon -->
    <link rel="icon" href="/cdn/imran/favicon.png" type="image/x-icon" />

    <!--alerts CSS -->
    <link href="/cdn/admin/vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">

    <!-- Custom Fonts -->
    <link href="/cdn/admin/dist/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Calendar CSS -->
    <link href="/cdn/admin/vendors/bower_components/fullcalendar/dist/fullcalendar.css" rel="stylesheet" type="text/css"/>

    <!-- Custom CSS -->
    <link href="/cdn/admin/dist/css/style.css" rel="stylesheet" type="text/css">

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
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <h5 style="" class="txt-dark"><i class="fa fa-list"></i><strong style="color: #3ab54a;"> {$app.name}</strong> Products &amp; Services</h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="/dashboard">Dashboard</a></li>
                        <li class="active"><span>Products &amp; Services</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->
            </div>
            <!-- /Title -->
            <!-- <hr> -->

            <!-- Product Row One -->
            <div class="row">
            	<a href="/product/new" class="btn btn-success"><i class="fa fa-plus"></i> Add Product</a>
            	<hr>
                {foreach $products as $product}
                    <div class="col-lg-2 col-md-4 col-sm-4 col-xs-6">
                        <div class="panel panel-default card-view pa-0 h280">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <article class="col-item">
                                        <div class="photo">
                                            <div class="options">
                                                <a href="/product/edit/{$product.id}" class="font-18 txt-grey mr-10 pull-left"><i class="zmdi zmdi-edit"></i></a>
                                                <a href="/product/delete/{$product.id}" class="font-18 txt-grey pull-left"><i class="zmdi zmdi-close"></i></a>
                                            </div>

                                            <a href="{$globals.prod.profile|cat:($product.url)}"> <img src="/products/{$product.image}" class="img-responsive" alt="{$product.name}" /> </a>
                                        </div>
                                        <div class="info">
                                            <h6>{$product.name|truncate:30}</h6>
                                            <!--div class="product-rating inline-block">
                                                <a href="javascript:void(0);" class="font-12 txt-success zmdi zmdi-star mr-0"></a>
                                                <a href="javascript:void(0);" class="font-12 txt-success zmdi zmdi-star mr-0"></a>
                                                <a href="javascript:void(0);" class="font-12 txt-success zmdi zmdi-star mr-0"></a>
                                                <a href="javascript:void(0);" class="font-12 txt-success zmdi zmdi-star mr-0"></a>
                                                <a href="javascript:void(0);" class="font-12 txt-success zmdi zmdi-star-outline mr-0"></a>
                                            </div-->
                                            <span class="head-font block text-warning font-16">KShs. {$product.price|number_format:2:".":","}</span>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
            <!-- /Product Row Four -->

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

</body>
</html>
