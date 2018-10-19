<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>{$app.name}: Category Profile</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content=""/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- vector map CSS -->
    <link href="/cdn/admin/vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <!-- Data table CSS -->
    <link href="/cdn/admin/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>

    <!-- Custom CSS -->
    <link href="/cdn/admin/dist/css/style.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .box10{
            background:#000; 
            overflow:hidden; 
            position:relative;
        }
        .box10:after,.box10:before{
            border-width:0 180px 140px; 
            border-style:solid; 
            border-color:transparent transparent #0d5f45;
            position:absolute;
            bottom:0;
            left:50%;
            z-index:1;
            transform:translate(-55%,100%);
            transition:all .5s 0s cubic-bezier(.6,-.28,.735,.045);
        }
        .box10:after{
            border-width:150px 250px;
            border-color:transparent #18ab69 #18ab69 #008148;
            top:25%;
            transform:translate(-60%,100%);
        }
        .box10:hover:before{
            transition:all .4s 0s cubic-bezier(.175,.885,.32,1.275);
            transform:translate(-55%,0);
            transition-delay:.2s;
        }
        .box10:hover:after{
            transition:all .4s 0s cubic-bezier(.175,.885,.32,1.275);
            transform:translate(-60%,0);
            transition-delay:0s;
        }
        .box10 img{
            width:100%;
            height:auto;
            opacity:1;
            transform:scale(1.1) translateY(3%);
            transition:all .5s ease 0s;
        }   
        .box10:hover img{
            transform:scale(1.1) translateY(-3%);
            opacity:.4;
        }
        .box10 .box-content{
            padding:20px 0 0 20px;
            position:absolute;
            top:0;
            left:0;
            opacity:0;
            z-index:2;
            transform:translateY(20%);
            transition:all .5s ease 0s;
        }
        .box10:hover .box-content{
            opacity:1;
            transform:translate(0);
            transition-delay:.1s;
        }
        .box10 .title{
            font-size:23px;
            font-weight:800;
            color:#fff;
        }
        .box10 .icon{
            padding:0;
            margin:0;
            list-style:none;
        }
        .box10 .icon li{
            display:inline-block;
        }
        .box10 .icon li a{
            display:block;
            font-size:18px;
            color:#fff;
            margin-right:10px;
            transition:all .3s ease 0s;
        }
        .box11 .icon li,.box11 .icon li a,.box11 .title,.box12 .icon li,.box12 .title{
            display:inline-block;
        }
        .box10 .icon li a:hover{
            transform:rotate(360deg);
        }
        @media only screen and (max-width:990px){
            .box10{
                margin-bottom:20px;
            }
        }
        @media only screen and (max-width:767px) and (min-width:600px){
            .box10:before{
                border-width:0 250px 240px;
            }
            .box10:after{
                border-width:260px 460px;
            }
        }
        @media only screen and (max-width:599px) and (min-width:430px){
            .box:before{
                border-width:0 220px 120px;
            }
            .box10:after{
                border-width:260px 460px;
            }
        }
    </style>
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
                    <h5 class="txt-dark">Category  Profile</h5>
                </div>

                <!-- Breadcrumb -->
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="index-2.html">Dashboard</a></li>
                        <li><a href="#"><span>Category</span></a></li>
                        <li class="active"><span>Profile</span></li>
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
                                            {*<form id="cat-reg-form" action="{$globals.cat.add}" method="post" class="form-horizontal" enctype="multipart/form-data">*}
                                                <div class="form-body">
                                                    <h6 class="txt-dark capitalize-font"><i class="zmdi zmdi-account mr-10"></i><strong>1.</strong> {$profile.title} Info</h6>
                                                    <hr class="light-grey-hr"/>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3" style=" font-weight: bold;">Name: </label>
                                                                <div class="col-md-9">
                                                                    {*<input type="text" name="cname" class="form-control" placeholder="">*}
                                                                    <p><span class="form-control" style="border: none !important;"> {$profile.name} </span></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                        <div class="col-md-6">
                                                            <!-- has-error-->
                                                            <div class="form-group ">
                                                                {if isset($parent.name)}
                                                                    <label for="parent" class="control-label col-md-3" style=" font-weight: bold;">Parent Category</label>
                                                                    <div class="col-md-9">
                                                                        <p><span class="form-control" style="border: none !important; "> {$parent.name} </span></p><br>
                                                                    </div>
                                                                {/if}
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <!-- /Row -->
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label col-md-3" style=" font-weight: bold;">Page Title: </label>
                                                                <div class="col-md-9">
                                                                    {*<input type="text" name="cname" class="form-control" placeholder="">*}
                                                                    <p><span class="form-control" style="border: none !important;"> {$profile.title|capitalize|default:'N/A'} </span></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                        <div class="col-md-6">
                                                            <!-- has-error-->
                                                            <div class="form-group ">
                                                                {if isset($parent.name)}
                                                                    <label for="parent" class="control-label col-md-3" style=" font-weight: bold;">Parent Category</label>
                                                                    <div class="col-md-9">
                                                                        <p><span class="form-control" style="border: none !important; "> {$parent.name|capitalize} </span></p><br>
                                                                    </div>
                                                                {/if}
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                {if isset($profile.description)}
                                                                    <label for="desc" class="control-label col-md-2" style=" font-weight: bold;">Category Description</label>
                                                                    <div class="col-md-10">
                                                                        <p>{$profile.description}</p>
                                                                    </div>
                                                                {/if}
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <!-- /Row -->
                                                    <br><br>
                                                    <h6 class="txt-dark capitalize-font"><i class="fa fa-picture-o mr-10"></i><strong>2.</strong> {$profile.title} Images</h6>
                                                    <hr class="light-grey-hr"/>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <div class="box10">
                                                                    <img src="https://via.placeholder.com/849x227" alt="{$profile.name|capitalize}" class="img-thumbnail">
                                                                    <div class="box-content">
                                                                        <h3 class="title">Main Image</h3>
                                                                        <ul class="icon">
                                                                            <li>
                                                                                <a class="btn btn-primary" data-toggle="modal" data-target="#delete-modal">
                                                                                    <i class="fa fa-edit"></i> 
                                                                                    Change
                                                                                </a>
                                                                                <div id="delete-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                                  <div class="modal-dialog modal-lg">
                                                                                    <div class="modal-content">
                                                                                      Content
                                                                                    </div>
                                                                                  </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#" class="btn btn-danger">
                                                                                    <i class="fa fa-trash-o"></i> 
                                                                                    Delete
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <!-- /Row -->
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group ">
                                                                <div class="box10">
                                                                    <img src="https://via.placeholder.com/1141x200" alt="{$profile.name|capitalize}">
                                                                    <div class="box-content">
                                                                        <h3 class="title">Promo Image</h3>
                                                                        <ul class="icon">
                                                                            <li>
                                                                                <a class="btn btn-primary" data-toggle="modal" data-target="#delete-modal">
                                                                                    <i class="fa fa-edit"></i> 
                                                                                    Change
                                                                                </a>
                                                                                <div id="delete-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                                  <div class="modal-dialog modal-lg">
                                                                                    <div class="modal-content">
                                                                                      Content
                                                                                    </div>
                                                                                  </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#" class="btn btn-danger">
                                                                                    <i class="fa fa-trash-o"></i> 
                                                                                    Delete
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                        <div class="col-md-6">
                                                            <!-- has-error-->
                                                            <div class="form-group ">
                                                                {if isset($parent.name)}
                                                                    <label for="parent" class="control-label col-md-3" style=" font-weight: bold;">Parent Category</label>
                                                                    <div class="col-md-9">
                                                                        <p><span class="form-control" style="border: none !important; "> {$parent.name|capitalize} </span></p><br>
                                                                    </div>
                                                                {/if}
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <!-- /Row -->
                                                    <br><br>
                                                    <h6 class="txt-dark capitalize-font"><i class="fa fa-list mr-10"></i><strong>3.</strong> {$profile.title} Products</h6>
                                                    <hr class="light-grey-hr"/>
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="panel panel-default card-view">
                                                                <div class="panel-wrapper collapse in">
                                                                    <div class="panel-body">
                                                                        <a href="/product/new" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a>
                                                                        <hr>
                                                                        <div class="table-wrap">
                                                                            <div class="table-responsive">
                                                                                <table id="cat-prods" class="table table-hover display  pb-30" >
                                                                                    <thead>
                                                                                    <tr>
                                                                                        <th>#</th>
                                                                                        <th>Status</th>
                                                                                        <th>Image</th>
                                                                                        <th>Name</th>
                                                                                        <th>When Added</th>
                                                                                        <th>View</th>
                                                                                        <th>Action</th>
                                                                                    </tr>
                                                                                    </thead>
                                                                                    <tfoot>
                                                                                    <tr>
                                                                                        <th>#</th>
                                                                                        <th>Status</th>
                                                                                        <th>Image</th>
                                                                                        <th>Name</th>
                                                                                        <th>When Added</th>
                                                                                        <th>View</th>
                                                                                        <th>Action</th>
                                                                                    </tr>
                                                                                    </tfoot>
                                                                                    <tbody>
                                                                                    {foreach $prods as $p}
                                                                                        <tr>
                                                                                            <td><input type="checkbox" name="{$p.id}" ></td>
                                                                                            <td>
                                                                                                {if $p.status eq 1}
                                                                                                    <span class="label label-success">Published</span>
                                                                                                {else}
                                                                                                    <span class="label label-danger">Draft</span>
                                                                                                {/if}
                                                                                            </td>
                                                                                            <td>
                                                                                                <img width="99" height="75" src="/products/{$p.image}" class="img-thumbnail">
                                                                                            </td>
                                                                                            <td><strong>{$p.name}</strong></td>
                                                                                            <td>{$p.created_at}</td>
                                                                                            <td><a class="label label-success" href="/product/profile/{$p.url}">Profile</a></td>
                                                                                            <td><a class="label label-primary" href="/product/edit/{$p.id} ">Edit</a> | <a class="label label-danger" href="/product/delete/{$p.id}">Delete</a> </td>
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
                                                    <!-- /Row -->
                                                </div>
                                            {*</form>*}
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
<script src="/cdn/admin/vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

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

<!-- Fancy Dropdown JS -->
<script src="/cdn/admin/dist/js/dropdown-bootstrap-extended.js"></script>

<!-- Owl JavaScript -->
<script src="/cdn/admin/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Switchery JavaScript -->
<script src="/cdn/admin/vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Init JavaScript -->
<script src="/cdn/admin/dist/js/init.js"></script>
<script src="/cdn/admin/dist/js/emboga.js"></script>
</body>

</html>
