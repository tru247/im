{include file="shared/admin_header.tpl"}

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
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <h5 style="" class="txt-dark"><i class="fa fa-user-secret"></i><strong style="color: #3ab54a;"> {$app.name}</strong> System Administrators</h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="/">Dashboard</a></li>
                        <li class="active"><span>System admins</span></li>
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
                                <div class="table-wrap">
                                    <div class="table-responsive">
                                        <table id="sysadmins" class="table table-hover display  pb-30" >
                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Position</th>
                                                    <th>Email</th>
                                                    <th>Phone</th>
                                                    <th>Start date</th>
                                                    <th>Profile</th>
                                                    {*<th>Action</th>*}
                                                </tr>
                                            </thead>
                                            <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th>Start date</th>
                                                <th>Profile</th>
                                                {*<th>Action</th>*}
                                            </tr>
                                            </tfoot>
                                            <tbody>
                                                {foreach $users as $staff}
                                                    <tr>
                                                        <td>{$staff.fname} {$staff.lname}</td>
                                                        <td>{$staff.profession|default:'N/A'}</td>
                                                        <td>{$staff.email}</td>
                                                        <td>{$staff.phone}</td>
                                                        <td>{$staff.created_at}</td>
                                                        <td><a href="{$globals.staff.profile|cat:($staff.url)}">View</a></td>
                                                        {*<td><a class="label label-primary" href="/staff/profile/{$staff.url}">Edit</a> | <a href='/staff/delete/{$staff.id}' class="label label-danger">Delete</a></td>*}
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

{include file="shared/admin_footer.tpl"}