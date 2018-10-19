{include file="shared/header.tpl"}

    <!-- Main Content -->
    <div class="page-wrapper">
        <div class="container-fluid pt-25">

            <!-- Row -->
            <div class="row">
                <div class="container-fluid well span6">
                	<div class="row-fluid">
                        <div class="span8">
                            <h3>{$admin.fname} {$admin.lname}</h3>
                            <h6><span class="icon-envelope"></span> Email: {$admin.email}</h6>
                            <h6><span class="icon-phone"></span> Phone: {$admin.phone}</h6>
                            <h6><span class="icon-clock"></span> Member since: {$admin.created_at}</h6>
                            <!--<h6><a href="#">More... </a></h6-->
                        </div>
                        
                        <div class="span2">
                            <div class="btn-group">
                                <a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="#">
                                    Action 
                                    <span class="icon-cog icon-white"></span><span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#"><span class="icon-wrench"></span> Modify</a></li>
                                    <li><a href="#"><span class="icon-trash"></span> Delete</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Row -->
        </div>

{include file="shared/footer.tpl"}
