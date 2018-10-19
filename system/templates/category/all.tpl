<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>{$app.name}- Product Categories</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content=""/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
    <!-- Data table CSS -->
    <link href="/cdn/admin/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>

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
                    <h5 style="" class="txt-dark"><i class="fa fa-list"></i><strong style="color: #3ab54a;"> {$app.name}</strong>  Inventory Categories</h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="/">Dashboard</a></li>
                        <li class="active"><span>Category(ies)</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->
            </div>
            <!-- /Title -->
            <hr>

            <!-- Row -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-default card-view">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body">
                            	<a href="/category/new" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a>
                            	<hr>
                                <div class="table-wrap">
                                    <div class="table-responsive">
                                        <table id="cats" class="table table-hover display  pb-30" >
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Name</th>
                                                <th>Description</th>
                                                <th>Since</th>
                                                <th>View</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tfoot>
                                            <tr>
                                                <th>#</th>
                                                <th>Name</th>
                                                <th>Description</th>
                                                <th>Since</th>
                                                <th>View</th>
                                                <th>Action</th>
                                            </tr>
                                            </tfoot>
                                            <tbody>
                                            {foreach $cats as $cat}
                                                <tr>
                                                    <td><input type="checkbox" name="{$cat.id}" ></td>
                                                    <td><strong>{$cat.name}</strong></td>
                                                    <td>{$cat.description|truncate: 100}</td>
                                                    <td>{$cat.created_at}</td>
                                                    <td><a class="label label-success" href="/category/profile/{$cat.url}">Profile</a></td>
                                                    <td><a class="label label-primary" href="/category/edit/{$cat.id} ">Edit</a> | <a class="label label-danger" href="/category/delete/{$cat.id}">Delete</a> </td>
                                                </tr>
                                            {/foreach}
                                            </tbody>
                                        </table>
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

<!-- Data table JavaScript -->
<script src="/cdn/admin/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="/cdn/admin/vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="/cdn/admin/vendors/bower_components/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="/cdn/admin/vendors/bower_components/jszip/dist/jszip.min.js"></script>
<script src="/cdn/admin/vendors/bower_components/pdfmake/build/pdfmake.min.js"></script>
<script src="/cdn/admin/vendors/bower_components/pdfmake/build/vfs_fonts.js"></script>

<script src="/cdn/admin/vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="/cdn/admin/vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="/cdn/admin/dist/js/export-table-data.js"></script>

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

</body>

</html>
