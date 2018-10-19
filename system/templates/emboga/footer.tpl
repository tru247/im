<br>
<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="module-heading">
            <h4 class="module-title">Contact Us</h4>
          </div>
          <!-- /.module-heading -->
          
          <address>
            <ul class="toggle-footer" style="">
              <li class="media">
                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i class="fa fa-map-marker fa-stack-1x fa-inverse"></i> </span> </div>
                <div class="media-body">
                  <p>{$app.address}</p>
                </div>
              </li>
              <li class="media">
                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i class="fa fa-mobile fa-stack-1x fa-inverse"></i> </span> </div>
                <div class="media-body">
                  <p>{$app.phone}</p>
                </div>
              </li>
              <li class="media">
                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i class="fa fa-envelope fa-stack-1x fa-inverse"></i> </span> </div>
                <div class="media-body outer-top-xsm"> <span><a href="mailto:{$app.email}">{$app.email}</a></span> </div>
              </li>
            </ul>
          </address>
          <!-- /.module-body --> 
        </div>
        <!-- /.col -->
        
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="module-heading">
            <h4 class="module-title">Shop</h4>
          </div>
          <!-- /.module-heading -->
          
          <div class="module-body">
            <ul class='list-unstyled'>
              {foreach $cats as $c}
                <li><a href="/category/products/{$c.url}" title="{$c.name}">{$c.name}</a></li>
              {/foreach}
            </ul>
          </div>
          <!-- /.module-body --> 
        </div>
        <!-- /.col -->
        
        {*<div class="col-xs-12 col-sm-6 col-md-3">
          <div class="module-heading">
            <h4 class="module-title">Corporation</h4>
          </div>
          <!-- /.module-heading -->
          
          <div class="module-body">
            <ul class='list-unstyled'>
              <li class="first"><a title="Your Account" href="#">About us</a></li>
              <li><a title="Information" href="#">Customer Service</a></li>
              <li><a title="Addresses" href="#">Company</a></li>
              <li><a title="Addresses" href="#">Investor Relations</a></li>
              <li class="last"><a title="Orders History" href="#">Advanced Search</a></li>
            </ul>
          </div>
          <!-- /.module-body --> 
        </div>
        <!-- /.col -->
        
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="module-heading">
            <h4 class="module-title">Why Choose Us</h4>
          </div>
          <!-- /.module-heading -->
          
          <div class="module-body">
            <ul class='list-unstyled'>
              <li class="first"><a href="#" title="About us">Shopping Guide</a></li>
              <li><a href="#" title="Blog">Blog</a></li>
              <li><a href="#" title="Company">Company</a></li>
              <li><a href="#" title="Investor Relations">Investor Relations</a></li>
              <li class=" last"><a href="contact-us.html" title="Suppliers">Contact Us</a></li>
            </ul>
          </div>
          <!-- /.module-body --> 
        </div>*}
      </div>
    </div>
  </div>
  <div class="copyright-bar">
    <div class="container">
      <div class="col-xs-12 col-sm-6 no-padding social">
        <ul class="link">
          <li class="fb pull-left"><a target="_blank" rel="nofollow" href="#" title="Facebook"></a></li>
          <li class="tw pull-left"><a target="_blank" rel="nofollow" href="#" title="Twitter"></a></li>
          <li class="googleplus pull-left"><a target="_blank" rel="nofollow" href="#" title="GooglePlus"></a></li>
          <li class="rss pull-left"><a target="_blank" rel="nofollow" href="#" title="RSS"></a></li>
          <li class="pintrest pull-left"><a target="_blank" rel="nofollow" href="#" title="PInterest"></a></li>
          <li class="linkedin pull-left"><a target="_blank" rel="nofollow" href="#" title="Linkedin"></a></li>
          <li class="youtube pull-left"><a target="_blank" rel="nofollow" href="#" title="Youtube"></a></li>
        </ul>
      </div>
      <div class="col-xs-12 col-sm-6 no-padding">
        <div class="clearfix payment-methods">
          <ul>
            <li><img src="/cdn/assets/images/payments/1.png" alt=""></li>
            <li><img src="/cdn/assets/images/payments/2.png" alt=""></li>
            <li><img src="/cdn/assets/images/payments/3.png" alt=""></li>
            <li><img src="/cdn/assets/images/payments/4.png" alt=""></li>
            <li><img src="/cdn/assets/images/payments/5.png" alt=""></li>
          </ul>
        </div>
        <!-- /.payment-methods --> 
      </div>
    </div>
  </div>
  <div style="background: #fff;">    
    <div class="container">
    <div class="col-sm-3"></div>
      <div class="col-xs-12 col-sm-7 no-padding social">
        <p>{$copyright}</p>
      </div>
      <div class="col-sm-2"></div>
    </div>
  </div>
</footer>
<!-- ============================================================= FOOTER :END============================================================= -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="/cdn/assets/js/jquery-1.11.1.min.js"></script>
<script src="/cdn/assets/js/bootstrap.min.js"></script>

<script src="/cdn/assets/js/bootstrap-hover-dropdown.min.js"></script>
<script src="/cdn/assets/js/owl.carousel.min.js"></script>

<script src="/cdn/assets/js/echo.min.js"></script>
<script src="/cdn/assets/js/jquery.easing-1.3.min.js"></script>
<script src="/cdn/assets/js/bootstrap-slider.min.js"></script>
<script src="/cdn/assets/js/jquery.rateit.min.js"></script>
<script type="text/javascript" src="/cdn/assets/js/lightbox.min.js"></script>
<script src="/cdn/assets/js/bootstrap-select.min.js"></script>
<script src="/cdn/assets/js/wow.min.js"></script>
<script src="/cdn/assets/js/scripts.js"></script>
<script src="/cdn/assets/js/trucommerce.js"></script>
{*literal}
  <script>
    var dthen1 = new Date("12/25/18 11:59:00 PM");
      start = "08/04/19 03:02:11 AM";
      start_date = Date.parse(start);
      var dnow1 = new Date(start_date);
      if (CountStepper > 0)
      ddiff = new Date((dnow1) - (dthen1));
      else
      ddiff = new Date((dthen1) - (dnow1));
      gsecs1 = Math.floor(ddiff.valueOf() / 1000);
      
      var iid1 = "countbox_1";
      CountBack_slider(gsecs1, "countbox_1", 1);
      
      var dthen1 = new Date("05/25/19 11:59:00 PM");
      start = "08/04/19 03:02:11 AM";
      start_date = Date.parse(start);
      var dnow1 = new Date(start_date);
      if (CountStepper > 0)
      ddiff = new Date((dnow1) - (dthen1));
      else
      ddiff = new Date((dthen1) - (dnow1));
      gsecs1 = Math.floor(ddiff.valueOf() / 1000);
      
      var iid1 = "countbox_2";
      CountBack_slider(gsecs1, "countbox_2", 1);
  </script>
{/literal*}

  

  

</body>

</html>
