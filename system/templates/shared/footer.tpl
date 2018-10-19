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

<!-- Vector Maps JavaScript -->
<script src="/cdn/vendors/vectormap/jquery-jvectormap-2.0.2.min.js"></script>
<script src="/cdn/vendors/vectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="/cdn/dist/js/vectormap-data.js"></script>

<!-- Calender JavaScripts -->
<script src="/cdn/vendors/bower_components/moment/min/moment.min.js"></script>
<script src="/cdn/vendors/jquery-ui.min.js"></script>
<script src="/cdn/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<script src="/cdn/dist/js/fullcalendar-data.js"></script>

<!-- Counter Animation JavaScript -->
<script src="/cdn/vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="/cdn/vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>

<!-- Data table JavaScript -->
<script src="/cdn/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>

<!-- Slimscroll JavaScript -->
<script src="/cdn/dist/js/jquery.slimscroll.js"></script>

<!-- Fancy Dropdown JS -->
<script src="/cdn/dist/js/dropdown-bootstrap-extended.js"></script>

<!-- Sparkline JavaScript -->
<script src="/cdn/vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>

<script src="/cdn/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
<script src="/cdn/dist/js/skills-counter-data.js"></script>

<!-- Morris Charts JavaScript -->
<script src="/cdn/vendors/bower_components/raphael/raphael.min.js"></script>
<script src="/cdn/vendors/bower_components/morris.js/morris.min.js"></script>
<script src="/cdn/dist/js/morris-data.js"></script>

<!-- Owl JavaScript -->
<script src="/cdn/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Switchery JavaScript -->
<script src="/cdn/vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Data table JavaScript -->
<script src="/cdn/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>

<!-- Gallery JavaScript -->
<script src="/cdn/dist/js/isotope.js"></script>
<script src="/cdn/dist/js/lightgallery-all.js"></script>
<script src="/cdn/dist/js/froogaloop2.min.js"></script>
<script src="/cdn/dist/js/gallery-data.js"></script>

<!-- Spectragram JavaScript -->
<script src="/cdn/dist/js/spectragram.min.js"></script>

<!-- Init JavaScript -->
<script src="/cdn/dist/js/init.js"></script>
<script src="/cdn/dist/js/widgets-data.js"></script>

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