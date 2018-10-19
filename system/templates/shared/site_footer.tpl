 

  <!--Footer : Begin-->
  <footer>
    <div class="footer-main">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-4 col-xs-12 about-us footer-col">
            <h2>About Us</h2>
            <div class="footer-content">
              <a href="/" title="Imranma Digital Printshop" class="logo-footer">
                <img width="180" src="/cdn/imran/imranma_logo.png" alt="Imranma Digital Printshop logo">
              </a>
              <ul class="info">
                <li>
                  <i class="fa fa-home"></i>
                  <span>{$app.address}</span>
                </li>
                <li>
                  <i class="fa fa-phone"></i>
                  <span>{$app.phone}</span>
                </li>
                <li>
                  <i class="fa fa-envelope-o"></i>
                  <span><a href="mailto:{$app.email}" title="send mail to Imranma">{$app.email}</a></span>
                </li>
              </ul>
              <ul class="footer-social">
                <li>
                  <a href="#" title="Facebook">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li>
                  <a href="#" title="Twiter">
                    <i class="fa fa-twitter"></i>
                  </a>
                </li>
                <li>
                  <a href="#" title="Google plus">
                    <i class="fa fa-google-plus"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12 corporate footer-col">
            <h2>Corporate</h2>
            <div class="footer-content">
              <ul>
                <li>
                  <a href="/printing/about-us" title="About us">About us</a>
                </li>
                <li>
                  <a href="/printing/contact-us" title="Contact us">Contact us</a>
                </li>
                <li>
                  <a href="/blog" title="Our Blog">Blog</a>
                </li>
                {*<li>
                  <a href="cart.html" title="Green">Green</a>
                </li>
                <li>
                  <a href="checkout.html" title="Afiliates">Afiliates</a>
                </li>
                <li>
                  <a href="contact.html" title="Non-profits and Government">Non-profits and Government</a>
                </li>*}
                <li>
                  <a href="/printing/terms" title="Terms of Service">Terms of Service</a>
                </li>
                <li>
                  <a href="/printing/privacy" title="Privacy Policy">Privacy Policy</a>
                </li>
              </ul>
            </div>
          </div>
          {*<div class="col-md-3 col-sm-4 col-xs-12 support footer-col">
            <h2>Support</h2>
            <div class="footer-content">
              <ul>
                <li>
                  <a href="myaccount-information.html" title="My Account">My Account</a>
                </li>
                <li>
                  <a href="#" title="Design Guide">Design Guide</a>
                </li>
                <li>
                  <a href="faq.html" title="FAQ">FAQ</a>
                </li>
                <li>
                  <a href="#" title="Design Service">Design Services</a>
                </li>
                <li>
                  <a href="contact.html" title="Contact Us">Contact Us</a>
                </li>
              </ul>
            </div>
          </div>*}
          <div class="col-md-4 col-sm-4 col-xs-12 other-info footer-col">
            <h2>Payment Info</h2>
            <div class="footer-content">
              <img width="" src="/cdn/imran/imranma_pay.png" alt="Imranma Digital Printshop Payment Method">
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <p class="copy-right">{$copyright}</p>
            <a href="#" id="back-to-top">
              <i class="fa fa-chevron-up"></i>
              Top
            </a>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <div id="sitebodyoverlay"></div>
  <nav id="mb-main-menu" class="main-menu">
    <div class="mb-menu-title">
      <h3>Navigation</h3>
      <span id="close-mb-menu">
        <i class="fa fa-times-circle"></i>
      </span>
    </div>
    <ul  class="cate_list">
      <li class="level0 parent col1 all-product">
        <a href="#">
          <span>All Products</span>
          <i class="fa fa-chevron-down"></i><i class="fa fa-chevron-right"></i>
        </a>
        <ul class="level0">
          {foreach $cats as $cat}
            <li class="level1">
              <a href="/category/{$cat.url}" title="{$cat.name|capitalize}">{$cat.name|capitalize}</a>
            </li>
          {/foreach}
        </ul>
      </li>
      {*<li class="level0 parent col1">
        <a href="#" title="Business Cards">
          <span>Business Cards</span>
          <i class="fa fa-chevron-down"></i><i class="fa fa-chevron-right"></i>
        </a>
        <ul class="level0">
          <li class="level1 nav-1-1 first item">
            <a href="#" title="Premium Business Cards">Premium Business Cards</a>
          </li>
          <li class="level1 nav-1-2 item">
            <a href="#" title="Free Business Cards">Free Business Cards</a>
          </li>
          <li class="level1 nav-1-3 item">
            <a href="#" title="Die-Cut Business Cards">Die-Cut Business Cards</a>
          </li>
          <li class="level1 nav-1-4 item">
            <a href="#" title="Standard Business Cards">Standard Business Cards</a>
          </li>
          <li class="level1 nav-1-5 item">
            <a href="#" class="Personal Business Cards">Personal Business Cards</a>
          </li>
          <li class="level1 nav-1-6 item">
            <a href="#" title="Business Card Holders">Business Card Holders</a>
          </li>
          <li class="level1 nav-1-7 item">
            <a href="#" title="Networking Cards">Networking Cards</a>
          </li>
          <li class="level1 nav-1-8 item">
            <a href="#" title="Appointment Cards">Appointment Cards</a>
          </li>
          <li class="level1 nav-1-9 last item">
            <a href="#" title="Mommy Cards">Mommy Cards</a>
          </li>
        </ul>
      </li>
      <li class="level0">
        <a href="category_grid.html" title="Marketing">Marketing</a>
      </li>
      <li class="level0">
        <a href="#" title="Postcards">Postcards</a>
      </li>
      <li class="level0">
        <a href="#" title="Stickers & Badges">Stickers & Badges</a>
      </li>
      <li class="level0" title="Promotional">
        <a href="#">Promotional</a>
      </li>*}
    </ul>
  </nav> 

  <!--Add js lib-->
  <script type="text/javascript" src="/cdn/imran/js/jquery/jquery-1.11.3.min.js"></script> 
  <script type="text/javascript" src="/cdn/imran/js/bootstrap.min.js"></script> 
  <script type="text/javascript" src="/cdn/imran/js/owl.carousel.min.js"></script>
  <script type="text/javascript" src="/cdn/imran/js/Chart.js"></script> 
  <script type="text/javascript" src="/cdn/imran/js/doughnutit.js"></script>
  <!--   <script type="text/javascript" src="/cdn/imran/js/jquery.sSiubscribe-better.js"></script> -->
  <script type="text/javascript" src="/cdn/imran/js/slideshow/jquery.themepunch.revolution.js"></script>   
  <script type="text/javascript" src="/cdn/imran/js/slideshow/jquery.themepunch.plugins.min.js"></script> 
  <script type="text/javascript" src="/cdn/imran/js/validator.min.js"></script>     
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script type="text/javascript" src="/cdn/imran/js/theme-home.js"></script>  
  {literal}
    <script type="text/javascript">
      $('#carousel-example-generic').on('slide.bs.carousel', function () {
          setTimeout(function() {
              $('.carousel').carousel('next');
          }, 5000);
      });
    </script>

    <!-- Portfolio -->
    <script type="text/javascript">
      $(document).ready(function(){
        $(".portfolio-filter-button").click(function(){
            var value = $(this).attr('data-filter');
            if(value == "all")
            {
                //$('.filter').removeClass('hidden');
                $('.filter').show('1000');
            }
            else
            {
                //$('.filter[filter-item="'+value+'"]').removeClass('hidden');
                //$(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
                $(".filter").not('.'+value).hide('3000');
                $('.filter').filter('.'+value).show('3000');
            }
        });
        
        if ($(".filter-button").removeClass("active")) {
          $(this).removeClass("active");
        }
          $(this).addClass("active");
        });
    </script>

    <script type="text/javascript">
      $(document).ready( function() {
        $(document).on('change', '.btn-file :file', function() {
          var input = $(this),
          label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
          input.trigger('fileselect', [label]);
        });

        $('.btn-file :file').on('fileselect', function(event, label) {
            var input = $(this).parents('.input-group').find(':text'),
                log = label;
            
            if( input.length ) {
                input.val(log);
            } else {
                if( log ) alert(log);
            }          
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                
                reader.onload = function (e) {
                    $('#img-upload').attr('src', e.target.result);
                }
                
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#imgInp").change(function(){
            readURL(this);
        });   
      });
    </script>

    <script type="text/javascript">
      $( function() {
        $("#due_date").datepicker();
      } );
    </script>

    <!--Start of Tawk.to Script-->
    <!-- <script type="text/javascript">
      var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
      (function(){
        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
        s1.async=true;
        s1.src='https://embed.tawk.to/5bc91f8a460a125f2656b1e9/default';
        s1.charset='UTF-8';
        s1.setAttribute('crossorigin','*');
        s0.parentNode.insertBefore(s1,s0);
      })();
    </script> -->
    <!--End of Tawk.to Script-->
  {/literal}
  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</body>

</html>