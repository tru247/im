<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Kimsape : {$title}</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content=""/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- vector map CSS -->
    <link href="/cdn/vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css"/>

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
                    <h5 class="txt-dark">{$title}</h5>
                </div>

                <!-- Breadcrumb -->
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="index-2.html">Dashboard</a></li>
                        <li><a href="#"><span>Clients</span></a></li>
                        <li class="active"><span>Add new</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->

            </div>
            <!-- /Title -->

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
                                            <form id="client-reg-form" action="{$globals.client.add}" method="post" class="form-horizontal" enctype="multipart/form-data">
                                                <div class="form-body">
                                                    <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-account mr-10"></i>Person's Info</h6>
                                                    <hr class="light-grey-hr"/>

                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">First Name</label>
                                                                <div class="col-md-9">
                                                                    <input type="text" name="fname" class="form-control" placeholder="James">
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
                                                                    <input type="text" name="lname" class="form-control" placeholder="Mkulima">
                                                                    <!-- <span class="help-block"> This field has error. </span>  -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <!-- /Row -->

                                                    <!-- Row -->
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Password</label>
                                                                <div class="col-md-9">
                                                                    <input type="Password" name="pwd" class="form-control" placeholder="*******">
                                                                    <!-- <span class="help-block"> This is inline help </span>  -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Confirm Password</label>
                                                                <div class="col-md-9">
                                                                    <input type="Password" name="re-pwd" class="form-control" placeholder="*******">
                                                                    <!-- <span class="help-block"> This is inline help </span>  -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- /Row -->
                                                </div>
                                                <div class="form-body">
                                                    <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-my-location"></i> Address Information</h6>
                                                    <hr class="light-grey-hr">

                                                    <!-- Row -->
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3">Email</label>
                                                                <div class="col-md-9">
                                                                    <input type="text" name="email" class="form-control" placeholder="james@emboga.co.ke">
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
                                                                    <input type="text" name="phone" class="form-control" placeholder="07********">
                                                                    <!-- <span class="help-block"> This field has error. </span>  -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <!-- /Row -->
                                                    <div class="row">
                                                        <!--/span-->
                                                        <div class="col-md-6">
                                                            <!-- has-error-->
                                                            <div class="form-group ">
                                                                <label for="estate" class="control-label col-md-3">Estate</label>
                                                                <div class="col-md-9">
                                                                    <textarea id="estate" class="form-control" name="estate"></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="town" class="control-label col-md-3">Town</label>
                                                                <div class="col-md-9">
                                                                    <select id="town" name="town" class="form-control">
                                                                        <option value="m">Mombasa</option>
                                                                        <option value="f">Kisumu</option>
                                                                        <option value="g">Nairobi</option>
                                                                    </select>
                                                                    <span class="help-block"> Select your town. </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <!-- /Row -->
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="county" class="control-label col-md-3">County</label>
                                                                <div class="col-md-9">
                                                                    <select id="county" name="county" class="form-control">
                                                                        <option value="MBS">Mombasa</option>
                                                                        <option value="KIL">Kilifi</option>
                                                                        <option value="NRB">Nairobi</option>
                                                                        <option value="KSM">Kisumu</option>
                                                                    </select>
                                                                    <span class="help-block"> Select your County. </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="country" class="control-label col-md-3">Country</label>
                                                                <div class="col-md-9">
                                                                    <select id="country" name="country" class="form-control">
                                                                        <option value="KE">Kenya</option>
                                                                        <option value="UG">Uganda</option>
                                                                        <option value="RW">Rwanda</option>
                                                                        <option value="TZ">Tanzania</option>
                                                                    </select>
                                                                    <span class="help-block"> Select your Country. </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <!-- /Row -->
                                                </div>
                                                <div class="form-body">
                                                    <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-money mr-10"></i> Financial Details</h6>
                                                    <hr class="light-grey-hr"/>

                                                    <!-- Row -->
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label for="bank" class="control-label col-md-2">Bank Details</label>
                                                                <div class="col-md-10">
                                                                    <textarea id="bank" name="bankDetails" class="form-control"></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
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

<!-- JavaScript -->

<!-- jQuery -->
<script src="/cdn/vendors/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/cdn/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/cdn/vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

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
