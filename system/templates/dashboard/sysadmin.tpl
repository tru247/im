<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Wakaka Media FiMS - {$title}</title>
    <meta name="description" content="Hound" />
    <meta name="keywords" content="" />
    <meta name="author" content=""/>
    <!-- META REFRESH -->
    <meta http-equiv="refresh" content="7200; url=/logout" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- Morris Charts CSS -->
    <link href="/cdn/vendors/bower_components/morris.js/morris.css" rel="stylesheet" type="text/css"/>

    <!-- Data table CSS -->
    <link href="/cdn/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>

    <link href="/cdn/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">

    <!-- bootstrap-select CSS -->
    <link href="/cdn/vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>

    <!-- Bootstrap Switches CSS -->
    <link href="/cdn/vendors/bower_components/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>

    <!-- switchery CSS -->
    <link href="/cdn/vendors/bower_components/switchery/dist/switchery.min.css" rel="stylesheet" type="text/css"/>

    <!-- Custom CSS -->
    <link href="/cdn/dist/css/style.css" rel="stylesheet" type="text/css">
</head>

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
        <div class="container-fluid pt-25">
            <!-- Row -->
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="panel panel-default card-view pa-0">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body pa-0">
                                <div class="sm-data-box bg-red">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                <span class="txt-light block counter"><span class="counter-anim">{$sysadmins|default: '0'}</span></span>
                                                <span class="weight-500 uppercase-font txt-light block font-13">System Administrator(s)</span>
                                            </div>
                                            <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                <i class="zmdi zmdi-code-setting txt-light data-right-rep-icon"></i>
                                            </div>
                                        </div>
                                    </div>
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
                                                <span class="txt-light block counter"><span class="counter-anim">{$admins|default: '0'}</span></span>
                                                <span class="weight-500 uppercase-font txt-light block">General Manager(s)</span>
                                            </div>
                                            <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                <i class="zmdi zmdi-blogger txt-light data-right-rep-icon"></i>
                                            </div>
                                        </div>
                                    </div>
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
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                <span class="txt-light block counter"><span class="counter-anim">{$staff|default: '0'}</span></span>
                                                <span class="weight-500 uppercase-font txt-light block">Staff Member(s)</span>
                                            </div>
                                            <div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
                                                <i class="zmdi zmdi-account txt-light data-right-rep-icon"></i>
                                            </div>
                                        </div>
                                    </div>
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
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                <span class="txt-light block counter"><span class="counter-anim">{$clients|default: '0'}</span></span>
                                                <span class="weight-500 uppercase-font txt-light block">Client(s)</span>
                                            </div>
                                            <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">
                                                <div id="sparkline_4" style="width: 100px; overflow: hidden; margin: 0px auto;"></div>
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
            <!-- Row -->
            <!-- <div class="row"> -->
                <!-- <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="panel panel-default card-view pa-0">
                        <div class="panel-wrapper collapse in">
                            <div class="panel-body pa-0">
                                <div class="sm-data-box bg-blue">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
                                                <span class="txt-light block counter"><span class="counter-anim">{$products|default: '0'}</span></span>
                                                <span class="weight-500 uppercase-font txt-light block">Product(s)</span>
                                            </div>
                                            <div class="col-xs-6 text-center  pl-0 pr-0 pt-25  data-wrap-right">
                                                <div id="sparkline_4" style="width: 100px; overflow: hidden; margin: 0px auto;"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
            <!-- </div> -->
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
<script src="/cdn/dist/js/ecommerce-data.js"></script>
</body>

</html>
