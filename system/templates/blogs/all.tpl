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
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h5 class="txt-dark"><i class="fa fa-book"></i> Blogs</h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="/">Dashboard</a></li>
                        <li><a href="#"><span>Les Aubaines</span></a></li>
                        <li class="active"><span>Blogs</span></li>
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
                                <div class="table-wrap">
                                    <div class="table-responsive">
                                        <table id="sysadmins" class="table table-hover display  pb-30" >
                                            <thead>
                                                <tr>
                                                <th>Title</th>
                                                <th>Excerpt</th>
                                                <th>When posted</th>
                                                <th>Profile</th>
                                                <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tfoot>
                                            <tr>
                                                <th>Title</th>
                                                <th>Excerpt</th>
                                                <th>When posted</th>
                                                <th>Profile</th>
                                                <th>Action</th>
                                            </tr>
                                            </tfoot>
                                            <tbody>
                                                {foreach $blogs as $blog}
                                                    <tr>
                                                        <td>{$blog.title}</td>
                                                        <td>{$blog.excerpt|truncate:45}</td>
                                                        <td>{$blog.created_at}</td>
                                                        <td><a href="{$globals.blog.profile|cat:($blog.url)}">View</a></td>
                                                    <td><a class="label label-primary" href="/staff/profile/{$blog.url}">Edit</a> | <a href='/staff/delete/{$blog.id}' class="label label-danger">Delete</a></td>
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
<script src="/cdn/dist/js/export-table-data.js"></script>

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
