<div class="fixed-sidebar-left">
    <ul class="nav navbar-nav side-nav nicescroll-bar">
        <li class="navigation-header">
            <span style="color: #0EADA9">
                <span>Main</span>
                <i class="zmdi zmdi-more"></i>
            </span>
        </li>
        <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#dashboard_dr">
                <div class="pull-left">
                    <span style="color: #0EADA9">
                        <i class="fa fa-tachometer mr-20"></i>
                        <span class="right-nav-text">Analytics</span>
                    </span>
                </div>
                <div class="pull-right">
                    <i class="zmdi zmdi-caret-down"></i>
                </div>
                <div class="clearfix"></div>
            </a>
            <ul id="dashboard_dr" class="collapse collapse-level-1">
                <li>
                    <a  href="{$globals.dashboard.main}"><i class="fa fa-tachometer mr-20"></i> Dashboard</a>
                </li>
                <li>
                    <a  href="#"><i class="fa fa-upload mr-20"></i> Uploads</a>
                </li>
                <li>
                    <a  href="#"><i class="fa fa-briefcase mr-20"></i> Projects</a>
                </li>
                {*<li>
                    <a  href="{$globals.dashboard.testimonials}"><i class="fa fa-bullhorn mr-20"></i> Testimonial(s)</a>
                </li>
                <li>
                    <a  href="{$globals.dashboard.faqs}"><i class="fa fa-question-circle mr-20"></i> F.A.Qs</a>
                </li>*}
            </ul>
        </li>
        <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#app_dr">
                <div class="pull-left">
                    <span style="color: #0EADA9">
                        <i class="fa fa-users mr-20"></i>
                        <span class="right-nav-text">Human Resource </span>
                    </span>
                </div>
                <div class="pull-right">
                    <i class="zmdi zmdi-caret-down"></i>
                </div>
                <div class="clearfix"></div>
            </a>
            <ul id="app_dr" class="collapse collapse-level-1">
                <li>
                    <a href="{$globals.staff.new}"><i class="fa fa-plus-square-o mr-20"></i>New Personnel</a>
                </li>
                {*if $session eq 'sysadmin'*}
                    <li>
                        <a href="{$globals.staff.sysadmins}"><i class="fa fa-user-secret mr-20"></i>Sysadmins</a>
                    </li>
                {*/if*}
                <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#staff"><i class="fa fa-users mr-20"></i> Staff<div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div><div class="clearfix"></div></a>
                    <ul id="staff" class="collapse collapse-level-2">
                        <li>
                            <a href="{$globals.staff.admins}">Shop Manager(s)</a>
                        </li>
                        <li>
                            <a href="{$globals.staff.all}">Staff</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#inventory">
                <div class="pull-left">
                    <span style="color: #0EADA9">
                        <i class="fa fa-database mr-20"></i>
                        <span class="right-nav-text">Inventory Management</span>
                    </span>
                </div>
                <div class="pull-right">
                    <i class="zmdi zmdi-caret-down"></i>
                </div>
                <div class="clearfix"></div>
            </a>
            <ul id="inventory" class="collapse collapse-level-1">
                <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#categories">
                        <i class="fa fa-list mr-20"></i> 
                        Categories
                        <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="categories" class="collapse collapse-level-2">
                        <li>
                            <a href="/category"><i class="fa fa-database mr-20"></i> All Categories</a>
                        </li>
                        <li>
                            <a href="/category/new"><i class="fa fa-plus mr-20"></i> Add New</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#produkty">
                        <i class="fa fa-database mr-20"></i> 
                        Products
                        <div class="pull-right"><i class="zmdi zmdi-caret-down"></i></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="produkty" class="collapse collapse-level-2">
                        <li>
                            <a href="/product"><i class="fa fa-list mr-20"></i> All Products</a>
                        </li>
                        <li>
                            <a href="/product/new"><i class="fa fa-plus mr-20"></i> Add New</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#sales">
                <div class="pull-left">
                    <span style="color: #0EADA9">
                        <i class="fa fa-money mr-20"></i>
                        <span class="right-nav-text"> Sales </span>
                    </span>
                </div>
                <div class="pull-right">
                    <i class="zmdi zmdi-caret-down"></i>
                </div>
                <div class="clearfix"></div>
            </a>
            <ul id="sales" class="collapse collapse-level-1">                
                <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#clients">
                        <i class="fa fa-briefcase mr-20"></i> Clients
                        <div class="pull-right">
                            <i class="zmdi zmdi-caret-down"></i>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="clients" class="collapse collapse-level-2">
                        <li>
                            <a href="/client/new"><i class="fa fa-plus mr-20"></i> New</a>
                        </li>
                        <li>
                            <a href="/clients"><i class="fa fa-briefcase mr-20"></i> Client(s)</a>
                        </li>
                    </ul>
                </li>              
                <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#orders">
                        <i class="fa fa-shopping-basket mr-20"></i> Orders
                        <div class="pull-right">
                            <i class="zmdi zmdi-caret-down"></i>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="orders" class="collapse collapse-level-2">
                        <li>
                            <a href="/order/new"><i class="fa fa-plus mr-20"></i> New</a>
                        </li>
                        <li>
                            <a href="/orders"><i class="fa fa-shopping-basket mr-20"></i> Order(s)</a>
                        </li>
                    </ul>
                </li>              
                <li>
                    <a href="javascript:void(0);" data-toggle="collapse" data-target="#records">
                        <i class="fa fa-money mr-20"></i> Sales
                        <div class="pull-right">
                            <i class="zmdi zmdi-caret-down"></i>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="records" class="collapse collapse-level-2">
                        <li>
                            <a href="/order/new-sale"><i class="fa fa-plus mr-20"></i> New</a>
                        </li>
                        <li>
                            <a href="/orders/sales"><i class="fa fa-money mr-20"></i> Sale(s)</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>

        <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#blogs">
                <div class="pull-left">
                    <span style="color: #0EADA9">
                        <i class="fa fa-book mr-20"></i>
                        <span class="right-nav-text">Blogs</span>
                    </span>
                </div>
                <div class="pull-right">
                    <i class="zmdi zmdi-caret-down"></i>
                </div>
                <div class="clearfix"></div>
            </a>
            <ul id="blogs" class="collapse collapse-level-1">
                <li>
                    <a  href="/blog/new"><i class="fa fa-plus mr-20"></i> New</a>
                </li>
                <li>
                    <a  href="/blogs"><i class="fa fa-bookmark mr-20"></i> Blog(s)</a>
                </li>
            </ul>
        </li>
        {*<li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#events">
                <div class="pull-left">
                    <i class="fa fa-calendar mr-20"></i>
                    <span class="right-nav-text">Events</span>
                </div>
                <div class="pull-right">
                    <i class="zmdi zmdi-caret-down"></i>
                </div>
                <div class="clearfix"></div>
            </a>
            <ul id="events" class="collapse collapse-level-1">
                <li>
                    <a  href="/events/new"><i class="fa fa-plus-square-o mr-20"></i> New</a>
                </li>
                <li>
                    <a  href="/events"><i class="fa fa-list mr-20"></i> All</a>
                </li>
            </ul>
        </li>*}
        <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#content_dr">
                <div class="pull-left">
                    <span style="color: #0EADA9">
                        <i class="fa fa-cogs mr-20"></i>
                        <span class="right-nav-text">Configurations</span>
                    </span>
                </div>
                <div class="pull-right">
                    <i class="zmdi zmdi-caret-down"></i>
                </div>
                <div class="clearfix"></div>
            </a>
            <ul id="content_dr" class="collapse collapse-level-1">
                <li>
                    <!-- logo upload; about us content; payment details; -->
                    <a href="/settings/basic-information"><i class="fa fa-info-circle mr-20"></i> Shop Information</a>
                </li>
                {*<li>
                    <a href="/settings/contact-information"><i class="fa fa-phone mr-20"></i> Contact Info</a>
                </li>
                <li>
                    <a href="/settings/our-services"><i class="fa fa-server mr-20"></i> Our Services</a>
                </li>
                <li>
                    <a href="/settings/server-information"><i class="fa fa-database mr-20"></i> Server Configs</a>
                </li>*}
            </ul>
        </li>
    </ul>
</div>