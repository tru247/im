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
                    <form class="form-horizontal" id="new-model-form" action="/model/add" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <br style="clear:both">
                        <h3 style="margin-bottom: 25px; text-align: center;">New Model Form</h3>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <!--label for="" class="col-sm-2 control-label">Model Photo</label-->
                                	<input type="file" class="form-control" name="photo" placeholder='Choose an image...' />	
                                </div>
                                <div class="col-sm-6">
                                     <input type="text" class="form-control" id="nick" name="nick" placeholder="Nick name">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="col-sm-12">
                                      <input type="text" class="form-control" id="fname" name="fname" placeholder="First name">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="col-sm-12">
                                      <input type="text" class="form-control" id="lname" name="lname" placeholder="Last name">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                            <div class="col-sm-6">
                                <div class="col-sm-12">
                                  <input type="number" class="form-control" id="height" name="height" placeholder="Height">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="col-sm-12">
                                  <input type="number" class="form-control" id="biust" name="biust" placeholder="Biust">
                                </div>
                            </div>
                        </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="col-sm-12">
                                      <input type="number" class="form-control" id="waist" name="waist" placeholder="Waist">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="col-sm-12">
                                      <input type="number" class="form-control" id="hips" name="hips" placeholder="Hips">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="col-sm-12">
                                      <input type="number" class="form-control" id="shoes" name="shoes" placeholder="Shoes size">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="col-sm-12">
                                      <input type="text" class="form-control" id="eye" name="eye" placeholder="Eye Color">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <select class="form-control" id="" name="type">
                                    {foreach $types as $type}
                                        <option value={$type.url}>{$type.title}</option>
                                    {/foreach}
                                  </select>
                            </div>
                        </div>
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

    </script>
{/literal}
</body>

</html>
