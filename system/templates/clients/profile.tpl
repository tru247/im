{include file="shared/header.tpl"}

<!-- Main Content -->
<div class="page-wrapper">
    <div class="container-fluid pt-25">

        <!-- Row -->
        <div class="row">
            <div class="col-lg-3 col-xs-12">
                <div class="panel panel-default card-view  pa-0">
                    <div class="panel-wrapper collapse in">
                        <div class="panel-body  pa-0">
                            <div class="profile-box">
                                <div class="profile-cover-pic">
                                    <div class="fileupload btn btn-default">
                                        <span class="btn-text">edit</span>
                                        <input class="upload" type="file">
                                    </div>
                                    <div class="profile-image-overlay"></div>
                                </div>
                                <div class="profile-info text-center">
                                    <div class="profile-img-wrap">
                                        <img class="inline-block mb-10" src="/cdn/dist/img/logo.png" alt="user"/>
                                        <div class="fileupload btn btn-default">
                                            <span class="btn-text">edit</span>
                                            <input class="upload" type="file">
                                        </div>
                                    </div>
                                    <h5 class="block mt-10 mb-5 weight-500 capitalize-font txt-danger">{$admin.fname} {$admin.lname}</h5>
                                    <h6 class="block capitalize-font pb-20">{$admin.profession|cat:('N/A')}</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-xs-12">
                <div class="panel panel-default card-view pa-0">
                    <div class="panel-wrapper collapse in">
                        <div  class="panel-body pb-0">
                            <div  class="tab-struct custom-tab-1">
                                <ul role="tablist" class="nav nav-tabs nav-tabs-responsive" id="myTabs_8">
                                    <li class="active" role="presentation"><a  data-toggle="tab" id="profile_tab_8" role="tab" href="#profile_8" aria-expanded="false"><span>profile</span></a></li>
                                    {*<li  role="presentation" class="next"><a aria-expanded="true"  data-toggle="tab" role="tab" id="follo_tab_8" href="#follo_8"><span>followers<span class="inline-block">(246)</span></span></a></li>*}
                                    {*<li role="presentation" class=""><a  data-toggle="tab" id="photos_tab_8" role="tab" href="#photos_8" aria-expanded="false"><span>photos</span></a></li>*}
                                    <li role="presentation" class=""><a  data-toggle="tab" id="earning_tab_8" role="tab" href="#earnings_8" aria-expanded="false"><span>earnings</span></a></li>
                                    {*<pre>{$url|print_r}</pre>*}
                                    {*<pre>{$uID|print_r}</pre>*}
                                    {*{if $url eq $uID || }*}
                                        <li role="presentation" class=""><a  data-toggle="tab" id="settings_tab_8" role="tab" href="#settings_8" aria-expanded="false"><span>settings</span></a></li>
                                    {*{/if}*}
                                    {*<li class="dropdown" role="presentation">*}
                                    {*<a  data-toggle="dropdown" class="dropdown-toggle" id="myTabDrop_7" href="#" aria-expanded="false"><span>More</span> <span class="caret"></span></a>*}
                                    {*<ul id="myTabDrop_7_contents"  class="dropdown-menu">*}
                                    {*<li class=""><a  data-toggle="tab" id="dropdown_13_tab" role="tab" href="#dropdown_13" aria-expanded="true">About</a></li>*}
                                    {*<li class=""><a  data-toggle="tab" id="dropdown_14_tab" role="tab" href="#dropdown_14" aria-expanded="false">Followings</a></li>*}
                                    {*<li class=""><a  data-toggle="tab" id="dropdown_15_tab" role="tab" href="#dropdown_15" aria-expanded="false">Likes</a></li>*}
                                    {*<li class=""><a  data-toggle="tab" id="dropdown_16_tab" role="tab" href="#dropdown_16" aria-expanded="false">Reviews</a></li>*}
                                    {*</ul>*}
                                    {*</li>*}
                                </ul>
                                <div class="tab-content" id="myTabContent_8">
                                    <div  id="profile_8" class="tab-pane fade active in" role="tabpanel">
                                        <div class="col-md-12">
                                            <div class="pt-20">
                                                <div class="streamline user-activity">
                                                    <div class="sl-item">
                                                        <a href="javascript:void(0)">
                                                            <div class="sl-avatar avatar avatar-sm avatar-circle">
                                                                <img class="img-responsive img-circle" src="/cdn/dist/img/user.png" alt="avatar"/>
                                                            </div>
                                                            <div class="sl-content">
                                                                <p class="inline-block"><span class="capitalize-font txt-success mr-5 weight-500">Clay Masse</span><span>invited to join the meeting in the conference room at 9.45 am</span></p>
                                                                <span class="block txt-grey font-12 capitalize-font">3 Min</span>
                                                            </div>
                                                        </a>
                                                    </div>

                                                    <div class="sl-item">
                                                        <a href="javascript:void(0)">
                                                            <div class="sl-avatar avatar avatar-sm avatar-circle">
                                                                <img class="img-responsive img-circle" src="/cdn/dist/img/user1.png" alt="avatar"/>
                                                            </div>
                                                            <div class="sl-content">
                                                                <p class="inline-block"><span class="capitalize-font txt-success mr-5 weight-500">Evie Ono</span><span>added three new photos in the library</span></p>
                                                                <div class="activity-thumbnail">
                                                                    <img src="/cdn/dist/img/thumb-1.jpg" alt="thumbnail"/>
                                                                    <img src="/cdn/dist/img/thumb-2.jpg" alt="thumbnail"/>
                                                                    <img src="/cdn/dist/img/thumb-3.jpg" alt="thumbnail"/>
                                                                </div>
                                                                <span class="block txt-grey font-12 capitalize-font">8 Min</span>
                                                            </div>
                                                        </a>
                                                    </div>

                                                    <div class="sl-item">
                                                        <a href="javascript:void(0)">
                                                            <div class="sl-avatar avatar avatar-sm avatar-circle">
                                                                <img class="img-responsive img-circle" src="/cdn/dist/img/user2.png" alt="avatar"/>
                                                            </div>
                                                            <div class="sl-content">
                                                                <p class="inline-block"><span class="capitalize-font txt-success mr-5 weight-500">madalyn rascon</span><span>assigned a new task</span></p>
                                                                <span class="block txt-grey font-12 capitalize-font">28 Min</span>
                                                            </div>
                                                        </a>
                                                    </div>

                                                    <div class="sl-item">
                                                        <a href="javascript:void(0)">
                                                            <div class="sl-avatar avatar avatar-sm avatar-circle">
                                                                <img class="img-responsive img-circle" src="/cdn/dist/img/user3.png" alt="avatar"/>
                                                            </div>
                                                            <div class="sl-content">
                                                                <p class="inline-block"><span class="capitalize-font txt-success mr-5 weight-500">Ezequiel Merideth</span><span>completed project wireframes</span></p>
                                                                <span class="block txt-grey font-12 capitalize-font">yesterday</span>
                                                            </div>
                                                        </a>
                                                    </div>

                                                    <div class="sl-item">
                                                        <a href="javascript:void(0)">
                                                            <div class="sl-avatar avatar avatar-sm avatar-circle">
                                                                <img class="img-responsive img-circle" src="/cdn/dist/img/user4.png" alt="avatar"/>
                                                            </div>
                                                            <div class="sl-content">
                                                                <p class="inline-block"><span class="capitalize-font txt-success mr-5 weight-500">jonnie metoyer</span><span>created a group 'Hencework' in the discussion forum</span></p>
                                                                <span class="block txt-grey font-12 capitalize-font">18 feb</span>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div  id="follo_8" class="tab-pane fade" role="tabpanel">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="followers-wrap">
                                                    <ul class="followers-list-wrap">
                                                        <li class="follow-list">
                                                            <div class="follo-body">
                                                                <div class="follo-data">
                                                                    <img class="user-img img-circle"  src="/cdn/dist/img/user.png" alt="user"/>
                                                                    <div class="user-data">
                                                                        <span class="name block capitalize-font">Clay Masse</span>
                                                                        <span class="time block truncate txt-grey">No one saves us but ourselves.</span>
                                                                    </div>
                                                                    <button class="btn btn-success pull-right btn-xs fixed-btn">Follow</button>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                                <div class="follo-data">
                                                                    <img class="user-img img-circle"  src="/cdn/dist/img/user1.png" alt="user"/>
                                                                    <div class="user-data">
                                                                        <span class="name block capitalize-font">Evie Ono</span>
                                                                        <span class="time block truncate txt-grey">Unity is strength</span>
                                                                    </div>
                                                                    <button class="btn btn-success btn-outline pull-right btn-xs fixed-btn">following</button>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                                <div class="follo-data">
                                                                    <img class="user-img img-circle"  src="/cdn/dist/img/user2.png" alt="user"/>
                                                                    <div class="user-data">
                                                                        <span class="name block capitalize-font">Madalyn Rascon</span>
                                                                        <span class="time block truncate txt-grey">Respect yourself if you would have others respect you.</span>
                                                                    </div>
                                                                    <button class="btn btn-success btn-outline pull-right btn-xs fixed-btn">following</button>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                                <div class="follo-data">
                                                                    <img class="user-img img-circle"  src="/cdn/dist/img/user3.png" alt="user"/>
                                                                    <div class="user-data">
                                                                        <span class="name block capitalize-font">Mitsuko Heid</span>
                                                                        <span class="time block truncate txt-grey">I’m thankful.</span>
                                                                    </div>
                                                                    <button class="btn btn-success pull-right btn-xs fixed-btn">Follow</button>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                                <div class="follo-data">
                                                                    <img class="user-img img-circle"  src="/cdn/dist/img/user.png" alt="user"/>
                                                                    <div class="user-data">
                                                                        <span class="name block capitalize-font">Ezequiel Merideth</span>
                                                                        <span class="time block truncate txt-grey">Patience is bitter.</span>
                                                                    </div>
                                                                    <button class="btn btn-success pull-right btn-xs fixed-btn">Follow</button>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                                <div class="follo-data">
                                                                    <img class="user-img img-circle"  src="/cdn/dist/img/user1.png" alt="user"/>
                                                                    <div class="user-data">
                                                                        <span class="name block capitalize-font">Jonnie Metoyer</span>
                                                                        <span class="time block truncate txt-grey">Genius is eternal patience.</span>
                                                                    </div>
                                                                    <button class="btn btn-success btn-outline pull-right btn-xs fixed-btn">following</button>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div  id="photos_8" class="tab-pane fade" role="tabpanel">
                                        <div class="col-md-12 pb-20">
                                            <div class="gallery-wrap">
                                                <div class="portfolio-wrap project-gallery">
                                                    <ul id="portfolio_1" class="portf auto-construct  project-gallery" data-col="4">
                                                        <li  class="item"   data-src="/cdn/dist/img/gallery/equal-size/mock1.jpg" data-sub-html="<h6>Bagwati</h6><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>" >
                                                            <a href="#">
                                                                <img class="img-responsive" src="/cdn/dist/img/gallery/equal-size/mock1.jpg"  alt="Image description" />
                                                                <span class="hover-cap">Bagwati</span>
                                                            </a>
                                                        </li>
                                                        <li class="item" data-src="/cdn/dist/img/gallery/equal-size/mock2.jpg"   data-sub-html="<h6>Not a Keyboard</h6><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                                                            <a href="#">
                                                                <img class="img-responsive" src="/cdn/dist/img/gallery/equal-size/mock2.jpg"  alt="Image description" />
                                                                <span class="hover-cap">Not a Keyboard</span>
                                                            </a>
                                                        </li>
                                                        <li class="item" data-src="/cdn/dist/img/gallery/equal-size/mock3.jpg" data-sub-html="<h6>Into the Woods</h6><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                                                            <a href="#">
                                                                <img class="img-responsive" src="/cdn/dist/img/gallery/equal-size/mock3.jpg"  alt="Image description" />
                                                                <span class="hover-cap">Into the Woods</span>
                                                            </a>
                                                        </li>
                                                        <li class="item" data-src="/cdn/dist/img/gallery/equal-size/mock4.jpg"  data-sub-html="<h6>Ultra Saffire</h6><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                                                            <a href="#">
                                                                <img class="img-responsive" src="/cdn/dist/img/gallery/equal-size/mock4.jpg"  alt="Image description" />
                                                                <span class="hover-cap"> Ultra Saffire</span>
                                                            </a>
                                                        </li>

                                                        <li class="item" data-src="/cdn/dist/img/gallery/equal-size/mock5.jpg" data-sub-html="<h6>Happy Puppy</h6><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                                                            <a href="#">
                                                                <img class="img-responsive" src="/cdn/dist/img/gallery/equal-size/mock5.jpg"  alt="Image description" />
                                                                <span class="hover-cap">Happy Puppy</span>
                                                            </a>
                                                        </li>
                                                        <li class="item" data-src="/cdn/dist/img/gallery/equal-size/mock6.jpg"  data-sub-html="<h6>Wooden Closet</h6><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                                                            <a href="#">
                                                                <img class="img-responsive" src="/cdn/dist/img/gallery/equal-size/mock6.jpg"  alt="Image description" />
                                                                <span class="hover-cap">Wooden Closet</span>
                                                            </a>
                                                        </li>
                                                        <li class="item" data-src="/cdn/dist/img/gallery/equal-size/mock7.jpg" data-sub-html="<h6>Happy Puppy</h6><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                                                            <a href="#">
                                                                <img class="img-responsive" src="/cdn/dist/img/gallery/equal-size/mock7.jpg"  alt="Image description" />
                                                                <span class="hover-cap">Happy Puppy</span>
                                                            </a>
                                                        </li>
                                                        <li class="item" data-src="/cdn/dist/img/gallery/equal-size/mock8.jpg"  data-sub-html="<h6>Wooden Closet</h6><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                                                            <a href="#">
                                                                <img class="img-responsive" src="/cdn/dist/img/gallery/equal-size/mock8.jpg"  alt="Image description" />
                                                                <span class="hover-cap">Wooden Closet</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div  id="earnings_8" class="tab-pane fade" role="tabpanel">
                                        <!-- Row -->
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <form id="example-advanced-form" action="#">
                                                    <div class="table-wrap">
                                                        <div class="table-responsive">
                                                            <table class="table table-striped display product-overview" id="datable_1">
                                                                <thead>
                                                                <tr>
                                                                    <th>Date</th>
                                                                    <th>Item Sold</th>
                                                                    <th>Earnings(KShs.)</th>
                                                                </tr>
                                                                </thead>
                                                                <tfoot>
                                                                <tr>
                                                                    <th colspan="2">total:</th>
                                                                    <!-- <th></th> -->
                                                                    <th>3,820</th>
                                                                </tr>
                                                                </tfoot>
                                                                <tbody>
                                                                <tr>
                                                                    <td>monday, 12</td>
                                                                    <td>
                                                                        3
                                                                    </td>
                                                                    <td>400</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>tuesday, 13</td>
                                                                    <td>
                                                                        2
                                                                    </td>
                                                                    <td>400</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>wednesday, 14</td>
                                                                    <td>
                                                                        3
                                                                    </td>
                                                                    <td>420</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>thursday, 15</td>
                                                                    <td>
                                                                        5
                                                                    </td>
                                                                    <td>500</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>friday, 15</td>
                                                                    <td>
                                                                        3
                                                                    </td>
                                                                    <td>400</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>saturday, 16</td>
                                                                    <td>
                                                                        3
                                                                    </td>
                                                                    <td>400</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>sunday, 17</td>
                                                                    <td>
                                                                        3
                                                                    </td>
                                                                    <td>400</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>monday, 18</td>
                                                                    <td>
                                                                        3
                                                                    </td>
                                                                    <td>500</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>tuesday, 19</td>
                                                                    <td>
                                                                        3
                                                                    </td>
                                                                    <td>400</td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div  id="settings_8" class="tab-pane fade" role="tabpanel">
                                        <!-- Row -->
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="">
                                                    <div class="panel-wrapper collapse in">
                                                        <div class="panel-body pa-0">
                                                            <div class="col-sm-12 col-xs-12">
                                                                <div class="form-wrap">
                                                                    <form action="#">
                                                                        <div class="form-body overflow-hide">
                                                                            <div class="form-group">
                                                                                <label class="control-label mb-10" for="exampleInputuname_01">Name</label>
                                                                                <div class="input-group">
                                                                                    <div class="input-group-addon"><i class="icon-user"></i></div>
                                                                                    <input type="text" class="form-control" id="exampleInputuname_01" placeholder="Evans Okatcha">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label mb-10" for="exampleInputEmail_01">Email address</label>
                                                                                <div class="input-group">
                                                                                    <div class="input-group-addon"><i class="icon-envelope-open"></i></div>
                                                                                    <input type="email" class="form-control" id="exampleInputEmail_01" placeholder="okachaevans@yahoo.com">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label mb-10" for="exampleInputContact_01">Contact number</label>
                                                                                <div class="input-group">
                                                                                    <div class="input-group-addon"><i class="icon-phone"></i></div>
                                                                                    <input type="email" class="form-control" id="exampleInputContact_01" placeholder="eg. +254 700 000 000">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label mb-10" for="exampleInputpwd_01">Password</label>
                                                                                <div class="input-group">
                                                                                    <div class="input-group-addon"><i class="icon-lock"></i></div>
                                                                                    <input type="password" class="form-control" id="exampleInputpwd_01" placeholder="Enter pwd" value="password">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label mb-10">Gender</label>
                                                                                <div>
                                                                                    <div class="radio">
                                                                                        <input type="radio" name="radio1" id="radio_01" value="option1" checked="">
                                                                                        <label for="radio_01">
                                                                                            M
                                                                                        </label>
                                                                                    </div>
                                                                                    <div class="radio">
                                                                                        <input type="radio" name="radio1" id="radio_02" value="option2">
                                                                                        <label for="radio_02">
                                                                                            F
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="control-label mb-10">County</label>
                                                                                <select class="form-control" data-placeholder="Choose a Category" tabindex="1">
                                                                                    <option value="Category 1">Mombasa</option>
                                                                                    <option value="Category 2">Kilifi</option>
                                                                                    <option value="Category 3">Kakamega</option>
                                                                                    <option value="Category 4">Kisumu</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-actions mt-10">
                                                                            <button type="submit" class="btn btn-success mr-10 mb-30">Update profile</button>
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
                    </div>
                </div>


            </div>
        </div>
        <!-- /Row -->

    </div>

    {include file="shared/footer.tpl"}
