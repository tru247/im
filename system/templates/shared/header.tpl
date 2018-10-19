<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Les Aubaines CMS- {$title}</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content=""/>
    <!-- META REFRESH -->
    <meta http-equiv="refresh" content="900; url=/logout" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- Morris Charts CSS -->
    <link href="/cdn/vendors/bower_components/morris.js/morris.css" rel="stylesheet" type="text/css"/>

    <link href="/cdn/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">

    <!-- bootstrap-select CSS -->
    <link href="/cdn/vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>

    <!-- Bootstrap Switches CSS -->
    <link href="/cdn/vendors/bower_components/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>

    <!-- switchery CSS -->
    <link href="/cdn/vendors/bower_components/switchery/dist/switchery.min.css" rel="stylesheet" type="text/css"/>

    <!-- vector map CSS -->
    <link href="/cdn/vendors/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" type="text/css"/>

    <!-- Calendar CSS -->
    <link href="/cdn/vendors/bower_components/fullcalendar/dist/fullcalendar.css" rel="stylesheet" type="text/css"/>

    <!-- Data table CSS -->
    <link href="/cdn/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>

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