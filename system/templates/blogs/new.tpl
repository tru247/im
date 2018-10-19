{include file="shared/admin_header.tpl"}

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
        <div class="container">
            <div class="col-sm-12">
                <div class="form-area">  
                    <form class="form-horizontal" action="/blog/add" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <br style="clear:both">
                        <h3 style="margin-bottom: 25px; text-align: center;">New Blog</h3>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12">
                                    <label>Blog title</label>
                                    <input type="text" class="form-control" id="title" name="title" placeholder="Blog Title">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12">
                                    <label>Blog Excerpt</label>
                                    <textarea class="form-control" name="excerpt" id="excerpt" rows="4" cols="50"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-12">
                                    <label>Blog Content</label>
                                    <textarea class="form-control" name="description" id="description" rows="4" cols="100"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="" class="control-label">Feature Photo</label>
                                	<input type="file" class="form-control" name="photo" placeholder='Choose an image...' />	
                                </div>
                            </div>
                        </div>
                        <!--div class="form-group">
                            <div class="col-sm-6">
                                <select class="form-control" id="" name="type">
                                    {foreach $types as $type}
                                        <option value={$type.id}>{$type.title}</option>
                                    {/foreach}
                                  </select>
                            </div>
                        </div-->
                        <div class="form-group">
                            <div class="col-sm-12">
                              <button type="submit" class="btn btn-default">Submit form</button>
                            </div>
                        </div>
                      </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Footer
        <footer class="footer container-fluid pl-30 pr-30">
            <div class="row">
                <div class="col-sm-12">
                    <p>
                        {$copyright}
                    </p>
                </div>
            </div>
        </footer>
         /Footer -->

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
<script src="/cdn/dist/js/emboga.js"></script>

{literal}
    <script>
        $(document).ready(function(){ 
            $('#characterLeft').text('140 characters left');
            $('#message').keydown(function () {
                var max = 140;
                var len = $(this).val().length;
                if (len >= max) {
                    $('#characterLeft').text('You have reached the limit');
                    $('#characterLeft').addClass('red');
                    $('#btnSubmit').addClass('disabled');            
                } 
                else {
                    var ch = max - len;
                    $('#characterLeft').text(ch + ' characters left');
                    $('#btnSubmit').removeClass('disabled');
                    $('#characterLeft').removeClass('red');            
                }
            });    
        });
        
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        //var excerpt = CKEDITOR.replace( 'excerpt' );
        //var descr = CKEDITOR.replace('description');
        
        //descr.resize( '100%', '500', true )
    </script>
{/literal}
</body>

</html>
