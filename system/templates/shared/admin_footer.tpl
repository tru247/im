<!-- JavaScript -->

<!-- jQuery -->
<script src="/cdn/admin/vendors/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/cdn/admin/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

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

<!-- simpleWeather JavaScript -->
<script src="/cdn/admin/vendors/bower_components/moment/min/moment.min.js"></script>
<script src="/cdn/admin/vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
<script src="/cdn/admin/dist/js/simpleweather-data.js"></script>

<!-- Progressbar Animation JavaScript -->
<script src="/cdn/admin/vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="/cdn/admin/vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>

<!-- Fancy Dropdown JS -->
<script src="/cdn/admin/dist/js/dropdown-bootstrap-extended.js"></script>

<!-- Sparkline JavaScript -->
<script src="/cdn/admin/vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>

<!-- Owl JavaScript -->
<script src="/cdn/admin/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- ChartJS JavaScript -->
<script src="/cdn/admin/vendors/chart.js/Chart.min.js"></script>

<!-- EasyPieChart JavaScript -->
<script src="/cdn/admin/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
<!-- Morris Charts JavaScript -->
<script src="/cdn/admin/vendors/bower_components/raphael/raphael.min.js"></script>
<script src="/cdn/admin/vendors/bower_components/morris.js/morris.min.js"></script>
<script src="/cdn/admin/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>

<!-- Switchery JavaScript -->
<script src="/cdn/admin/vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Bootstrap Select JavaScript -->
<script src="/cdn/admin/vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>

<!-- Init JavaScript -->
<script src="/cdn/admin/dist/js/init.js"></script>
<!-- <script src="/cdn/admin/dist/js/dashboard-data.js"></script> -->
<script src="/cdn/admin/dist/js/ecommerce-data.js"></script>

{literal}
    <script>
        $(document).ready(function(){
            var navItems = $('.admin-menu li > a');
            var navListItems = $('.admin-menu li');
            var allWells = $('.admin-content');
            var allWellsExceptFirst = $('.admin-content:not(:first)');
            allWellsExceptFirst.hide();
            navItems.click(function(e){
                e.preventDefault();
                navListItems.removeClass('active');
                $(this).closest('li').addClass('active');
                allWells.hide();
                var target = $(this).attr('data-target-id');
                $('#' + target).show();
            });
        });
        
        $(document).on('click', '#close-preview', function(){ 
            $('.image-preview').popover('hide');
            // Hover befor close the preview
            $('.image-preview').hover(
                function () {
                   $('.image-preview').popover('show');
                }, 
                 function () {
                   $('.image-preview').popover('hide');
                }
            );    
        });
        
        $(function() {
            // Create the close button
            var closebtn = $('<button/>', {
                type:"button",
                text: 'x',
                id: 'close-preview',
                style: 'font-size: initial;',
            });
            closebtn.attr("class","close pull-right");
            // Set the popover default content
            $('.image-preview').popover({
                trigger:'manual',
                html:true,
                title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
                content: "There's no image",
                placement:'bottom'
            });
            // Clear event
            $('.image-preview-clear').click(function(){
                $('.image-preview').attr("data-content","").popover('hide');
                $('.image-preview-filename').val("");
                $('.image-preview-clear').hide();
                $('.image-preview-input input:file').val("");
                $(".image-preview-input-title").text("Browse"); 
            }); 
            // Create the preview image
            $(".image-preview-input input:file").change(function (){     
                var img = $('<img/>', {
                    id: 'dynamic',
                    width:250,
                    height:200
                });      
                var file = this.files[0];
                var reader = new FileReader();
                // Set preview image into the popover data-content
                reader.onload = function (e) {
                    $(".image-preview-input-title").text("Change");
                    $(".image-preview-clear").show();
                    $(".image-preview-filename").val(file.name);            
                    img.attr('src', e.target.result);
                    $(".image-preview").attr("data-content",$(img)[0].outerHTML).popover("show");
                }        
                reader.readAsDataURL(file);
            });  
        });
        
        //Agency Name information
    	$('#staff-reg-form').submit(function(e){
    	    // Stop form from submitting normally
            e.preventDefault();
    
            // Get some values from elements on the page and then prepare the form for ajax post
            var $form = $(this),
                fname   = $form.find("input[name='fname']" ).val(),
                lname   = $form.find("input[name='lname']" ).val(),
                email   = $form.find("input[name='email']" ).val(),
                phone   = $form.find("input[name='phone']" ).val(),
                role    = $form.find("select[name='role']" ).val(),
                gender  = $form.find("select[name='gender']" ).val(),
                pwd     = $form.find("input[name='pwd']" ).val(),
                url     = $form.attr("action" );
    
            $.ajax({
                url: url,
                type: 'POST',
                data: {
                    fname: fname,
                    lname: lname,
                    email: email,
                    phone: phone,
                    role: role,
                    gender: gender,
                    pwd: pwd
                },
                success: function(data) {
                    console.log(data.pin)
                    if(data.msg == 'Success'){
                        $('.status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+ data.info +'</p>');
                        location.reload();
                        //alert('Under development...');
                        //window.location = '/staff/profile/' + data.url;
                    }
                    else if(data.msg = 'Failed. User already exists. Please check your email or telphone number. Thank you.'){
                    	alert(data.msg);
                        $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+data.msg+'</p>');
                    }
                    else if(data.msg = 'User has been successfully added. But, failed to send mail'){
                    	//alert(data.msg);
                        $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+data.msg+'</p>');
                    }
                },
                error: function(data) {
                    //how to pass js data var to html tag in js script!!
                    //alert(data.msg);
                    $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
                }
            });
    	});
    	
    	//About agency 
    	$('#about-agency-form').submit(function(e){
    	    // Stop form from submitting normally
            e.preventDefault();
    
            // Get some values from elements on the page and then prepare the form for ajax post
            var $form = $(this),
                // img   = $form.find("input[name='image']" ).val(),
                aboutUs   = $form.find("textarea[name='aboutUs']" ).val(),
                url     = $form.attr("action" );
    
            $.ajax({
                url: url,
                type: 'POST',
                data: {
                    aboutUs: aboutUs
                },
                success: function(data) {
                    console.log(data.pin)
                    if(data.msg == 'Success'){
                        $('#about-us-status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+ data.msg +'</p>');
                        location.reload();
                        //alert('Under development...');
                        //window.location = '/staff/profile/' + data.url;
                    }
                    else if(data.msg = 'Failed.'){
                    	//alert(data.msg);
                        $('#about-us-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, there is an error!</p>');
                    }
                },
                error: function(data) {
                    //how to pass js data var to html tag in js script!!
                    //alert(data.msg);
                    $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
                }
            });
    	});

        //Change Currency ajaxification 
        $('#change-currency-form').submit(function(e){
            // Stop form from submitting normally
            e.preventDefault();
    
            // Get some values from elements on the page and then prepare the form for ajax post
            var $form = $(this),
                // img   = $form.find("input[name='image']" ).val(),
                currency   = $form.find("select[name='currency']" ).val(),
                url     = $form.attr("action" );
    
            $.ajax({
                url: url,
                type: 'POST',
                data: {
                    currency: currency
                },
                success: function(data) {
                    console.log(data.pin)
                    if(data.msg == 'Success'){
                        $('#about-us-status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+ data.msg +'</p>');
                        location.reload();
                        //alert('Under development...');
                        //window.location = '/staff/profile/' + data.url;
                    }
                    else if(data.msg = 'Failed.'){
                        //alert(data.msg);
                        $('#about-us-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, there is an error!</p>');
                    }
                },
                error: function(data) {
                    //how to pass js data var to html tag in js script!!
                    //alert(data.msg);
                    $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
                }
            });
        });
        
        //Shipping information
        $('#new-shipping-form').submit(function(e){
            // Stop form from submitting normally
            e.preventDefault();
    
            // Get some values from elements on the page and then prepare the form for ajax post
            var $form = $(this),
                title   = $form.find("input[name='title']" ).val(),
                descr   = $form.find("textarea[name='descr']" ).val(),
                url     = $form.attr("action" );
    
            $.ajax({
                url: url,
                type: 'POST',
                data: {
                    title: title,
                    descr: descr
                },
                success: function(data) {
                    console.log(data.pin)
                    if(data.msg == 'Success'){
                        $('#shipping-status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+ data.msg +'</p>');
                        location.reload();
                    }
                    else if(data.msg = 'Failed.'){
                        //alert(data.msg);
                        $('#shipping-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, there is an error!</p>');
                    }
                },
                error: function(data) {
                    //how to pass js data var to html tag in js script!!
                    //alert(data.msg);
                    $('.shipping-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
                }
            });
        });

        //Payment method info new-payment-form
        $('#new-payment-form').submit(function(e){
            // Stop form from submitting normally
            e.preventDefault();
    
            // Get some values from elements on the page and then prepare the form for ajax post
            var $form = $(this),
                title   = $form.find("input[name='title']" ).val(),
                vendor_no   = $form.find("input[name='vendor_no']" ).val(),
                descr   = $form.find("textarea[name='descr']" ).val(),
                url     = $form.attr("action" );
    
            $.ajax({
                url: url,
                type: 'POST',
                data: {
                    title: title,
                    vendor_no: vendor_no,
                    descr: descr
                },
                success: function(data) {
                    console.log(data.pin)
                    if(data.msg == 'Success'){
                        $('#payment-status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+ data.msg +'</p>');
                        location.reload();
                    }
                    else if(data.msg = 'Failed.'){
                        //alert(data.msg);
                        $('#payment-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, there is an error!</p>');
                    }
                },
                error: function(data) {
                    //how to pass js data var to html tag in js script!!
                    //alert(data.msg);
                    $('.payment-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
                }
            });
        });
    	
    	//Contact information
    	$('#contact-info-form').submit(function(e){
    	    // Stop form from submitting normally
            e.preventDefault();
    
            // Get some values from elements on the page and then prepare the form for ajax post
            var $form = $(this),
                // img   = $form.find("input[name='image']" ).val(),
                email   = $form.find("input[name='email']" ).val(),
                phone   = $form.find("input[name='phone']" ).val(),
                address   = $form.find("input[name='address']" ).val(),
                city   = $form.find("input[name='city']" ).val(),
                fb   = $form.find("input[name='fb']" ).val(),
                tw   = $form.find("input[name='tw']" ).val(),
                insta   = $form.find("input[name='insta']" ).val(),
                gp   = $form.find("input[name='gp']" ).val(),
                pin   = $form.find("input[name='pin']" ).val(),
                ln   = $form.find("input[name='ln']" ).val(),
                url     = $form.attr("action" );
    
            $.ajax({
                url: url,
                type: 'POST',
                data: {
                    email: email,
                    phone: phone,
                    address: address,
                    city : city,
                    fb : fb,
                    tw : tw,
                    insta : insta,
                    gp : gp,
                    pin : pin,
                    ln : ln
                },
                success: function(data) {
                    console.log(data.pin)
                    if(data.msg == 'Success'){
                        $('#contact-info-status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+ data.msg +'</p>');
                        location.reload();
                        //alert('Under development...');
                        //window.location = '/staff/profile/' + data.url;
                    }
                    else if(data.msg = 'Failed.'){
                    	//alert(data.msg);
                        $('#contact-info-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, there is an error!</p>');
                    }
                },
                error: function(data) {
                    //how to pass js data var to html tag in js script!!
                    //alert(data.msg);
                    $('#contact-info-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
                }
            });
    	});
    	
    	//Contact information
    	$('#new-service-form').submit(function(e){
    	    // Stop form from submitting normally
            e.preventDefault();
    
            // Get some values from elements on the page and then prepare the form for ajax post
            var $form = $(this),
                title   = $form.find("input[name='title']" ).val(),
                descr   = $form.find("textarea[name='descr']" ).val(),
                url     = $form.attr("action" );
    
            $.ajax({
                url: url,
                type: 'POST',
                data: {
                    title: title,
                    descr: descr
                },
                success: function(data) {
                    console.log(data.pin)
                    if(data.msg == 'Success'){
                        $('#new-service-status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+ data.msg +'</p>');
                        location.reload();
                        //alert('Under development...');
                        //window.location = '/staff/profile/' + data.url;
                    }
                    else if(data.msg = 'Failed.'){
                    	//alert(data.msg);
                        $('#new-service-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, there is an error!</p>');
                    }
                },
                error: function(data) {
                    //how to pass js data var to html tag in js script!!
                    //alert(data.msg);
                    $('#contact-info-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
                }
            });
    	});
    	
    	//Confirm payment
    	$('#txn-conf-form').submit(function(e){
    	    // Stop form from submitting normally
            e.preventDefault();
    
            // Get some values from elements on the page and then prepare the form for ajax post
            var $form = $(this),
                paymode   = $form.find("input[name='paymode']" ).val(),
                txncode   = $form.find("input[name='txncode']" ).val(),
                status   = $form.find("input[name='status']" ).val(),
                url     = $form.attr("action" );
    
            $.ajax({
                url: url,
                type: 'POST',
                data: {
                    paymode: paymode,
                    txncode: txncode,
                    status: status
                },
                success: function(data) {
                    console.log(data.pin)
                    if(data.msg == 'Success'){
                        //$('#new-service-status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+ data.msg +'</p>');
                        location.reload();
                        //alert('Under development...');
                        //window.location = '/staff/profile/' + data.url;
                    }
                    else if(data.msg = 'Failed'){
                    	//alert(data.msg);
                        //$('#new-service-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, there is an error!</p>');
                    }
                },
                error: function(data) {
                    //how to pass js data var to html tag in js script!!
                    //alert(data.msg);
                    $('#contact-info-status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
                }
            });
    	});
    </script>
    
  <script>
	  $( function() {
	    $( "#dob" ).datepicker({
	    	dateFormat: 'yy-mm-dd',
	    	changeMonth: true,
	    	changeYear: true
	    });
	  } );
  </script>
{/literal}
</body>

</html>
