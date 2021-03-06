{include file="shared/site_header.tpl"}

  <!--Main index : Begin-->
  <main class="main index">
    <!--Home slider : Begin-->
    <section class="home-slidershow">
      <div class="slide-show">
        <div class="vt-slideshow">
          <ul>
            <li>
              <div class="video-container">
                <iframe width="1500" height="480" src="https://www.youtube.com/embed/wursm0VPiK0" frameborder="0" allowfullscreen></iframe>
              </div>
            </li>
          </ul> 
        </div>
      </div>
    </section>

    <!--Home Category : Begin-->
    {*<section class="home-category">
      <div class="container">
        <div class="row"> 
          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 block block-left">
            <a href="#" class="image">
              <img src="/cdn/imran/images/banner/category/1.jpg" alt="banner-category"/>
            </a>
            <div class="info">
              <a href="#">CANVAS PRINT</a>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 block block-center">
            <div class="inner-top">
              <div class="box-left">
                <a href="#" class="image frist">
                  <img src="/cdn/imran/images/banner/category/2.jpg" alt="banner-category"/>
                </a>
                <div class="info">
                  <a href="#">BROCHURE</a>
                </div>
              </div>
              <div class="box-right">
                <a href="#" class="image">
                  <img src="/cdn/imran/images/banner/category/3.jpg" alt="banner-category"/>
                </a>
                <div class="info">
                  <a href="#">BUSINESS CARD</a>
                </div>
              </div>
            </div>
            <div class="inner-bottom">
              <a href="#" class="image">
                <img src="/cdn/imran/images/banner/category/4.jpg" alt="banner-category"/>
              </a>
              <div class="info">
                <a href="#">LOGO PRINT</a>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 block block-right">
            <div class="inner-top">
              <a href="#" class="image">
                <img src="/cdn/imran/images/banner/category/5.jpg" alt="banner-category"/>
              </a>
              <div class="info">
                <a href="#">ENVELOPE</a>
              </div>
            </div>
            <div class="inner-bottom">
              <a href="#" class="image">
                <img src="/cdn/imran/images/banner/category/6.jpg" alt="banner-category"/>
              </a>
              <div class="info">
                <a href="#">COVER  PRINT</a>
              </div>
            </div>
          </div> 
        </div>
      </div>
    </section>*}

    <!--Home New print Template : Begin -->
    <section class="home-new-product home-product parten-bg">
      <div class="container">
        <div class="row">
          <!--New Products Title: Begin-->
          <div class="block-title-w">
            <h2 class="block-title">Our Products</h2> 
            <span class="icon-title">
              <span></span>
              <i class="fa fa-star"></i>
            </span>
            <br>
            <div class="row">
              <div style="margin: 21px;" id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">
                  <!-- Wrapper for slides -->
                  <div class="carousel-inner">
                    <div class="row">
                      {foreach $prods as $p}
                        <div class="col-sm-3 col-xs-6 item" style="margin: 0px;margin-bottom: 12px;">
                            <div class="col-item">
                                <div class="photo">
                                  <a href="/product/info/{$p.url}" title="clieck to view more details">
                                    <img src="/products/{$p.image}" class="img-responsive" alt="{$p.name}" />
                                  </a>
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h5>
                                                <a href="/product/info/{$p.url}">
                                                    {$p.name|truncate:30}
                                                </a>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h5 class="price-text-color" style="font-size: 12px;margin-top: 10px;font-weight: bold;">
                                                {$app.currency}. {$p.price|number_format:2:".":","} 
                                            </h5>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="clear-left">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-12">
                                                {*<p class="btn-add">*}
                                                    <form class="product-cart-form">
                                                      <input type="hidden" name="pid" value="{$p.id}"/>
                                                      <input type="hidden" name="pname" value="{$p.name}"/>
                                                      <input type="hidden" name="pimage" value="{$p.image}"/>
                                                      <input type="hidden" name="pprice" value="{$p.price}"/>
                                                      <input type="hidden" name="pqty" value="1" />
                                                      <input type="hidden" value="{$p.url}" name="purl">
                                                      <button type="submit" class="btn btn-primary" style="background: #0EADA9; border-color: #0EADA9;">
                                                        <i class="fa fa-shopping-cart"></i>
                                                        Add to cart
                                                      </button>
                                                    </form>
                                                {*</p>*}
                                            </div>
                                            <div class="col-md-6 col-xs-12">
                                                {*<p class="btn-details">*}
                                                  <a href="/product/info/{$p.url}" class="" style="color: #0EADA9;">
                                                    <i class="fa fa-list"></i>
                                                    More Details
                                                  </a>
                                                {*</p>*}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                      {/foreach}
                    </div>
                  </div>
              </div>
            </div>
        </div>
      </div>
    </section><!--Home New Products : End -->

    <!--Home Trust : Begin-->
    <section class="trust-w hidden-xs">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-6 col-xs-6 block-trust trust-col-quantity">
            <div class="tr-icon"><i class="fa fa-thumbs-up"></i></div>
            <div class="tr-text">
              <h3>Quality Printing</h3>
              <span class="tr-line"></span>
              <p>Bright inks. Thick Paper. Precise cuts. We believe that quality printing matters.  That quality printing matters.</p>
              <a href="#" class="btn-readmore" title="Quality Printing">Read more</a>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-6 block-trust trust-col-time-delivery">
            <div class="tr-icon"><i class="fa fa-paper-plane"></i></div>
            <div class="tr-text">
              <h3>Timely Delivery</h3>
              <span class="tr-line"></span>
              <p>No printer is faster. Order today by 8:00pm EST and you can even get it tomorrow.</p>
              <a href="#" class="btn-readmore" title="Timely Delivery">Read more</a>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12 block-trust trust-col-eco-minded">
            <div class="tr-icon"><i class="fa fa-leaf"></i></div>
            <div class="tr-text">
              <h3>Eco-Minded</h3>
              <span class="tr-line"></span>
              <p>
                Overnight Prints is the greenest online printer in the world. See our Waterless technology. 
              </p>
              <a href="#" class="btn-readmore" title="Eco-Minded">Read more</a>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12 block-trust trust-col-eco-money">
            <div class="tr-icon"><i class="fa fa-money"></i></div>
            <div class="tr-text">
              <h3>Money Back Guaranteed</h3>
              <span class="tr-line"></span>
              <p>
                Most sellers work with buyers to quickly resolve issues, but if a solution isn't reached, we can help.
              </p>
              <a href="#" class="btn-readmore" title="Eco-Minded">Read more</a>
            </div>
          </div>
        </div>
      </div>
    </section><!--Home Trust : End-->

    <!--Home make print : Begin -->
    <section class="home-make-print">
      <div class="container">
        <div class="row">
          <div class="block-title-w">
            <h2 class="block-title">HOW WE MAKE PRINTING AS EASY</h2> 
            <span class="icon-title">
              <span></span>
              <i class="fa fa-star"></i>
            </span> 
          </div><!--make print Title : End -->
          <div class="print-content">
            <div class="col-md-4 col-sm-3 print-block print-block-left">
              <div class="w-print-block frist">
                <div class="print-icon">
                  <i class="fa fa-hand-o-up"></i>
                  <i class="fa fa-newspaper-o"></i>
                </div>
                <div class="print-title">
                  <a href="#">Describe the job</a>
                </div>
                <div class="print-number">
                  <span>01</span>
                </div>
                <div class="print-txt">
                  <p>Choose options that you want for your prints.We will make you happy with your choices.</p>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-sm-3 print-block print-block-center">
              <div class="w-print-block">
                <div class="print-icon">
                  <i class="fa fa-file-text-o"></i> 
                  <i class="fa fa-arrow-circle-o-up"></i>
                </div>
                <div class="print-title">
                  <a href="#">Upload your design/artwork</a>
                </div>
                <div class="print-number">
                  <span>02</span>
                </div> 
                <div class="print-txt">
                  <p>Upload your finished design here and we'll print it for you with your choices</p>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-sm-3 print-block print-block-right">
              <div class="w-print-block">
                <div class="print-icon">
                  <i class="fa fa-shopping-cart"></i>
                </div>
                <div class="print-title">
                  <a href="#">Submit your Order</a>
                </div>
                <div class="print-number">
                  <span>03</span>
                </div> 
                <div class="print-txt">
                  <p>Checkout and finish your order very easy with one step checkout extension.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="bg_make_print">
        
      </div>
      <div class="container">
        <div class="row">
          <div class="block-title-w">
            <a href="/printing/upload-for-printing">
              <span class="icon" style="color: #64bc46;">
                <i class="fa fa-6x fa-cloud-upload border-radius-50" style="font-size: 129px;"></i>
              </span>
              <p style="color: #64bc46;" class="block-title"> Click here to uplad your artwork for printing</p>
            </a> 
          </div>
        </div>
      </div>
    </section>

    <!--Home capabilitie : Begin -->
    <section class="home-capabititie">
      <div class="container">
        <div class="row">
          <div class="block-title-w">
            <h2 class="block-title">our capabilities</h2> 
            <span class="sub-title">Mauris sollicitudin dui quisOrci euismod mattis Integer auctor Aenean id turpis eu est iaculis suscipit.</span>
            <span class="icon-title">
              <span></span>
              <i class="fa fa-star"></i>
            </span> 
          </div>
          <div class="block-capabititie-w">
            <div class="block-capabititie col-md-3 col-sm-3 col-xs-12">
              <div class="block-mydoughnut" id="myDoughnut"> </div>
              <h2 class="title">huge quantity</h2>
              <div class="decs">
              <p>Mauris sollicitudin dui quisOrci euismod mattis Integer auctor Aenean id turpis eu est iaculis suscipit.</p>
              </div>
            </div>
            <div class="block-capabititie col-md-3 col-sm-3 col-xs-12">
              <div class="block-mydoughnut" id="myDoughnut2"> </div>
              <h2 class="title">on Time</h2>
              <div class="decs">
              <p>Mauris sollicitudin dui quisOrci euismod mattis Integer auctor Aenean id turpis eu est iaculis suscipit.</p>
              </div>
            </div>
            <div class="block-capabititie col-md-3 col-sm-3 col-xs-12">
              <div class="block-mydoughnut" id="myDoughnut3"> </div>
              <h2 class="title">True Color</h2>
              <div class="decs">
              <p>Mauris sollicitudin dui quisOrci euismod mattis Integer auctor Aenean id turpis eu est iaculis suscipit.</p>
              </div>
            </div>
            <div class="block-capabititie col-md-3 col-sm-3 col-xs-12">
              <div class="block-mydoughnut" id="myDoughnut4"> </div>
              <h2 class="title">fast Delivery</h2>
              <div class="decs">
              <p>Mauris sollicitudin dui quisOrci euismod mattis Integer auctor Aenean id turpis eu est iaculis suscipit.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!--Home ours service : Begin -->
    <section class="or-service">
      <div class="container">
        <div class="row">
          <div class="block-title-w">
            <h2 class="block-title">our services</h2>
            <span class="icon-title">
              <span></span>
              <i class="fa fa-star"></i>
            </span>
            <span class="sub-title">Choose the design path that is right before upload file</span>
          </div>
          <div class="or-service-w">
            <div class="col-md-3 col-sm-6 col-xs-6 or-block">
              <div class="or-image">
                <a href="#">
                  <img src="/cdn/imran/images/our_service/1.png" alt="service-01"/>
                </a>
              </div>
              <div class="or-title">
                <a href="#">graphic Design</a>
              </div>
              <div class="or-text">
                <p>
                  let us design your next print project!
                </p>
              </div>
              <a href="#" class="btn-readmore order-now">Upload For Print</a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 or-block">
              <div class="or-image">
                <a href="#">
                  <img src="/cdn/imran/images/our_service/2.png" alt="service-02"/>
                </a>
              </div>
              <div class="or-title">
                <a href="#">Mailing</a>
              </div>
              <div class="or-text">
                <p>
                  Delivery, we can hand it all for you!
                </p>
              </div>
              <a href="/printing/upload-for-printing" class="btn-readmore order-now">Upload For Print</a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 or-block">
              <div class="or-image">
                <a href="#">
                  <img src="/cdn/imran/images/our_service/3.png" alt="service-03"/>
                </a>
              </div>
              <div class="or-title">
                <a href="#">custom prints</a>
              </div>
              <div class="or-text">
                <p>
                  we'll bring all your creative ideas to life!
                </p>
              </div>
              <a href="/printing/upload-for-printing" class="btn-readmore order-now">Upload For Print</a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 or-block">
              <div class="or-image">
                <a href="#">
                  <img src="/cdn/imran/images/our_service/4.png" alt="service-04"/>
                </a>
              </div>
              <div class="or-title">
                <a href="#">free file check</a>
              </div>
              <div class="or-text">
                <p>
                  we'll if your file is ready to print!
                </p>
              </div>
              <a href="/printing/upload-for-printing" class="btn-readmore order-now">Upload For Print</a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!--Home out recent : Begin -->
    <section class="home-out-recent">
      <div class="container">
        <div class="row">
          <div class="block-title-w">
            <h2 class="block-title">OUR RECENT WORKS</h2> 
            <span class="icon-title">
              <span></span>
              <i class="fa fa-star"></i>
            </span>
            <ul>
              <li class="active"><a data-toggle="tab" href="#tab11">All projects</a></li>
              <li><a data-toggle="tab" href="#tab21">Leaflets & Flyers</a></li>
              <li><a data-toggle="tab" href="#tab31" class="last">Logo</a></li>
              <li><a data-toggle="tab" href="#tab41" class="last">Stationary</a></li>
              <li><a data-toggle="tab" href="#tab51" class="last">3d product</a></li>
              <li><a data-toggle="tab" href="#tab61" class="last">Presentation</a></li>
              <li><a data-toggle="tab" href="#tab71" class="last">Brochure</a></li>
              <li><a data-toggle="tab" href="#tab81" class="last">Ecommerce</a></li>
            </ul>
          </div>
          <div class="tab-content">
            <div class="tab-pane active" id="tab11">  
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/5.png" alt="service-05"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/6.png" alt="service-06"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/7.png" alt="service-07"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/8.png" alt="service-08"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/9.png" alt="service-09"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/10.png" alt="service-10"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
            </div> 
            <div class="tab-pane" id="tab21"> 
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/5.png" alt="service-05"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/6.png" alt="service-06"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/8.png" alt="service-08"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/9.png" alt="service-09"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/10.png" alt="service-10"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/7.png" alt="service-07"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div> 
              </div> 
            <div class="tab-pane" id="tab31">  
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/6.png" alt="service-06"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div> 
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/8.png" alt="service-08"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/5.png" alt="service-05"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/9.png" alt="service-09"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/10.png" alt="service-10"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/7.png" alt="service-07"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
              </div> 
            <div class="tab-pane" id="tab41">  
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/6.png" alt="service-06"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/7.png" alt="service-07"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/8.png" alt="service-08"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div> 
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/5.png" alt="service-05"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/10.png" alt="service-10"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                  <div class="w-block-recent">
                    <div class="image-recent">
                      <a href="#">
                        <img src="/cdn/imran/images/our_service/9.png" alt="service-09"/>
                      </a>
                    </div>
                    <div class="info-recent">
                      <h2 class="title">eSliproser Postcards</h2>
                      <div class="text-recent">
                        <p>
                          Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                        </p>
                      </div>
                      <a href="#" class="read-more">read more</a>
                    </div>
                  </div>
                </div>
              </div> 
            <div class="tab-pane" id="tab51">  
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/6.png" alt="service-06"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/7.png" alt="service-07"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div> 
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/5.png" alt="service-05"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/9.png" alt="service-09"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/8.png" alt="service-08"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/10.png" alt="service-10"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
            </div> 
            <div class="tab-pane" id="tab61">  
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/6.png" alt="service-06"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/7.png" alt="service-07"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/8.png" alt="service-08"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/5.png" alt="service-05"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/9.png" alt="service-09"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/10.png" alt="service-10"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
            </div> 
            <div class="tab-pane" id="tab71"> 
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/10.png" alt="service-10"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/5.png" alt="service-05"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div> 
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/7.png" alt="service-07"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/8.png" alt="service-08"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/6.png" alt="service-06"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/9.png" alt="service-09"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div> 
            </div> 
            <div class="tab-pane" id="tab81"> 
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/5.png" alt="service-05"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/6.png" alt="service-06"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/7.png" alt="service-07"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/8.png" alt="service-08"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/9.png" alt="service-09"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6 col-xs-6 block-recent">
                <div class="w-block-recent">
                  <div class="image-recent">
                    <a href="#">
                      <img src="/cdn/imran/images/our_service/10.png" alt="service-10"/>
                    </a>
                  </div>
                  <div class="info-recent">
                    <h2 class="title">eSliproser Postcards</h2>
                    <div class="text-recent">
                      <p>
                        Celebrate 2016 in style with our beloved Mini Photo Wall Calendar. Printed on eggshell paper, make your own calendar in minutes with 12 special photos.
                      </p>
                    </div>
                    <a href="#" class="read-more">read more</a>
                  </div>
                </div>
              </div>
            </div> 
            
          </div>
        </div>
      </div>
    </section>

    <!--Home Testimonials : Begin -->
    <section class="home-testimonial">
      <div class="container">
        <div class="row">
          <div class="tes-block" id="testimonial"> 
            <div class="slider-inner">
              <div class="wrap-item">
                <div class="item">
                  <div class="inner">
                    {*<div class="image">
                      <a href="#"><img src="/cdn/imran/images/testimonials/1.png" alt="terminal-01"/></a>
                    </div>*}
                    <div class="tes-name">
                      <a href="#">Desire Katana</a>
                    </div>
                    {*<div class="tes-job">
                      <span>Web Designe</span>
                    </div>*}
                    <div class="tes-decs">
                      <p>Nicely done work and on time. Also easily accessible.</p>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="inner">
                    {*<div class="image">
                      <a href="#"><img src="/cdn/imran/images/testimonials/2.png" alt="terminal-01"/></a>
                    </div>*}
                    <div class="tes-name">
                      <a href="#">Douglas Mageto</a>
                    </div>
                    {*<div class="tes-job">
                      <span>Web Designe</span>
                    </div>*}
                    <div class="tes-decs">
                      <p>"High quality work done and on time</p>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="inner">
                    {*<div class="image">
                      <a href="#"><img src="/cdn/imran/images/testimonials/3.png" alt="terminal-01"/></a>
                    </div>*}
                    <div class="tes-name">
                      <a href="#">Mutumba Shabban</a>
                    </div>
                    {*<div class="tes-job">
                      <span>Web Designe</span>
                    </div>*}
                    <div class="tes-decs">
                      <p>Accessible and good customer service</p>
                    </div>
                  </div>
                </div> 
                <div class="item">
                  <div class="inner">
                    {*<div class="image">
                      <a href="#"><img src="/cdn/imran/images/testimonials/3.png" alt="terminal-01"/></a>
                    </div>*}
                    <div class="tes-name">
                      <a href="#">Jireh Group</a>
                    </div>
                    {*<div class="tes-job">
                      <span>Web Designe</span>
                    </div>*}
                    <div class="tes-decs">
                      <p>"Good service"</p>
                    </div>
                  </div>
                </div> 
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="bran-block">
            <div class="item col-md-2 col-sm-4 col-xs-6">
              <a href="#" class="image">
                <img src="/cdn/imran/images/brands/1.png" alt="brand-01"/>
              </a>
            </div>
            <div class="item col-md-2 col-sm-4 col-xs-6">
              <a href="#" class="image">
                <img src="/cdn/imran/images/brands/2.png" alt="brand-02"/>
              </a>
            </div>
            <div class="item col-md-2 col-sm-4 col-xs-6">
              <a href="#" class="image">
                <img src="/cdn/imran/images/brands/3.png" alt="brand-03"/>
              </a>
            </div>
            <div class="item col-md-2 col-sm-4 col-xs-6">
              <a href="#" class="image">
                <img src="/cdn/imran/images/brands/4.png" alt="brand-04"/>
              </a>
            </div>
            <div class="item col-md-2 col-sm-4 col-xs-6">
              <a href="#" class="image">
                <img src="/cdn/imran/images/brands/5.png" alt="brand-05"/>
              </a>
            </div>
            <div class="item col-md-2 col-sm-4 col-xs-6">
              <a href="#" class="image">
                <img src="/cdn/imran/images/brands/6.png" alt="brand-06"/>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main> 


{include file="shared/site_footer.tpl"}