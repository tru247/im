<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>{$appName}- Product Profile</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content=""/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- jquery-steps css -->
    <link rel="stylesheet" href="/cdn/admin/vendors/bower_components/jquery.steps/demo/css/jquery.steps.css">

    <!-- bootstrap-touchspin CSS -->
    <link href="/cdn/admin/vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" type="text/css"/>

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
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h5 class="txt-dark">product detail</h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="/">Dashboard</a></li>
                        <li><a href="/product"><span>Products</span></a></li>
                        <li class="active"><span>{$p.name}</span></li>
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
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="item-big">
                                            <!-- START carousel-->
                                            <div id="carousel-example-captions-1" data-ride="carousel" class="carousel slide">
                                                <ol class="carousel-indicators">
                                                    <li data-target="#carousel-example-captions-1" data-slide-to="0" class="active"></li>
                                                    <li data-target="#carousel-example-captions-1" data-slide-to="1"></li>
                                                </ol>
                                                <div role="listbox" class="carousel-inner">
                                                    <div class="item active"> <img src="/products/{$p.image}" alt="First slide image"> </div>
							                        {foreach $gallery as $photo}
                                                        <div class="item"> <img src="/products/{$photo.image}" alt="Second slide image"> </div>
                                                    {/foreach}
                                                </div>
                                            </div>
                                            <!-- END carousel-->
                                        </div>
                                    </div>

                                    <div class="col-md-9">
                                        <div class="product-detail-wrap">
                                            <div class="product-rating inline-block mb-10">
                                                <a href="javascript:void(0);" class="zmdi zmdi-star"></a><a href="javascript:void(0);" class="zmdi zmdi-star"></a><a href="javascript:void(0);" class="zmdi zmdi-star"></a><a href="javascript:void(0);" class="zmdi zmdi-star"></a><a href="javascript:void(0);" class="zmdi zmdi-star-outline"></a>
                                            </div>
                                            <div class="average-review inline-block mb-10">&nbsp;(<span class="review-count">5</span> customer review)</div>
                                            <h3 class="mb-20 weight-500">{$p.name}</h3>
                                            <div class="product-price head-font mb-30">
                                                <strong>{$app.currency}.</strong> {$p.price|number_format:2:".":","}
                                            </div>
                                            <p class="mb-50">
                                                {$p.summary}
                                            </p>

                                            {*Create a form here with invinsible form that does all the add to cart activities...*}
                                            <a class="btn btn-danger btn-anim" href="/product/edit/{$p.id}"><i class="fa fa-edit"></i>Edit</a>
                                            {*<form id="add-cart-form" action="{$globals.cart.add|cat:$info}">
                                                <input type="hidden" name="pname" value="{$p.name}">
                                                <input type="hidden" name="pprice" value="{$p.price}">
                                                <input type="hidden" name="pimage" value="{$p.imgUrl}">

                                            <input class="vertical-spin" type="text" data-bts-button-down-class="btn btn-default"   data-bts-button-up-class="btn btn-default" value="1" name="vertical-spin">

                                            <div class="btn-group mr-10">
                                                    <button class="btn btn-danger btn-anim">
                                                        <i class="fa fa-shopping-cart"></i>
                                                        <span class="btn-text">add to cart</span>
                                                    </button>
                                                </form>
                                            </div>*}
                                            {*<div class="btn-group wishlist">*}
                                                {*Create a form here with invinsible form that does all the add to wishlist activities...*}
                                                {*<button class="btn btn-success btn-outline btn-anim"><i class="icon-heart"></i><span class="btn-text">add to wishlist</span></button>*}
                                            {*</div>*}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Row -->

            <!-- Row -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-default card-view">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                                <div  class="tab-struct custom-tab-1 product-desc-tab">
                                    <ul role="tablist" class="nav nav-tabs nav-tabs-responsive" id="myTabs_7">
                                        <li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" id="descri_tab" href="#descri_tab_detail"><span>Description</span></a></li>
                                        {*<li role="presentation" class=""><a  data-toggle="tab" id="review_tab" role="tab" href="#review_tab_detail" aria-expanded="false"><span>Review<span class="inline-block">(<span class="review-count">0</span>)</span></span></a></li>*}
                                    </ul>
                                    <div class="tab-content" id="myTabContent_7">
                                        <div  id="descri_tab_detail" class="tab-pane fade active in pt-0" role="tabpanel">
                                            <p class="pt-15">
                                                {$p.description}
                                            </p>
                                        </div>
                                        <div  id="review_tab_detail" class="tab-pane pt-0 fade" role="tabpanel">
                                            <p class="muted review-tag pt-15">No reviews yet.</p>
                                            <div class="row mt-40">
                                                <div class="col-sm-6">
                                                    <div class="form-wrap">
                                                        <form>
                                                            <div class="form-group">
                                                                <label class="control-label mb-10" for="review">Your rating</label>
                                                                <div class='product-rating starrr' id='star1'></div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label mb-10" for="review">Your review</label>
                                                                <textarea class="form-control" id="review" placeholder="add review"></textarea>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10" for="exampleInputuname_2">User Name</label>
                                                                        <input type="text" class="form-control" id="exampleInputuname_2" placeholder="Username"/>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label class="control-label mb-10" for="exampleInputEmail_2">Email address</label>
                                                                        <input type="email" class="form-control" id="exampleInputEmail_2" placeholder="Enter email">
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="form-group mb-0">
                                                                <button type="submit" class="btn btn-success  mr-10">Submit</button>
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
<script src="/cdn/admin/vendors/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/cdn/admin/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Form Wizard JavaScript -->
<script src="/cdn/admin/vendors/bower_components/jquery.steps/build/jquery.steps.min.js"></script>

<!-- Bootstrap Touchspin JavaScript -->
<script src="/cdn/admin/vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>

<!-- Starrr JavaScript -->
<script src="/cdn/admin/dist/js/starrr.js"></script>

<!-- Product Detail Data JavaScript -->
<script src="/cdn/admin/dist/js/product-detail-data.js"></script>

<!-- Slimscroll JavaScript -->
<script src="/cdn/admin/dist/js/jquery.slimscroll.js"></script>

<!-- Owl JavaScript -->
<script src="/cdn/admin/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Switchery JavaScript -->
<script src="/cdn/admin/vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Fancy Dropdown JS -->
<script src="/cdn/admin/dist/js/dropdown-bootstrap-extended.js"></script>

<!-- Init JavaScript -->
<script src="/cdn/admin/dist/js/init.js"></script>
<script src="/cdn/admin/dist/js/emboga.js"></script>

</body>
</html>
