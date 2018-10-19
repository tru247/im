{include file="emboga/header.tpl"}
<div class="breadcrumb">
  <div class="container">
    <div class="breadcrumb-inner">
      <ul class="list-inline list-unstyled">
        <li><a href="/">Home</a></li>
        {*<li><a href="#">Category</a></li>*}
        <li class='active'>{$p.name}</li>
      </ul>
    </div><!-- /.breadcrumb-inner -->
  </div><!-- /.container -->
</div><!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
  <div class='container'>
    <div class='row single-product'>
      <div class='col-md-12'>
            <div class="detail-block">
        <div class="row  wow fadeInUp">
                
               <div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
                <div class="product-item-holder size-big single-product-gallery small-gallery">

                    <div id="owl-single-product">
                        <div class="single-product-gallery-item" id="slide1">
                            <a data-lightbox="image-1" data-title="{$p.name}" href="/products/{$p.image}">
                                <img class="img-responsive" alt="" src="/products/{$p.image}" data-echo="/products/{$p.image}" />
                            </a>
                        </div>
                        <!-- /.single-product-gallery-item -->

                        {*foreach $gallery as $g}             
                            <div class="single-product-gallery-item" id="slide2">
                                <a data-lightbox="image-1" data-title="{$p.name}" href="/products/{$g.image}">
                                    <img class="img-responsive" alt="" src="/products/{$g.image}" data-echo="/products/{$g.image}" />
                                </a>
                            </div>
                          <!-- /.single-product-gallery-item -->
                        {/foreach*}
                    </div><!-- /.single-product-slider -->


                    {*<div class="single-product-gallery-thumbs gallery-thumbs">

                        <div id="owl-single-product-thumbnails">
                            <div class="item">
                                <a class="horizontal-thumb active" data-target="#owl-single-product" data-slide="1" href="#slide1">
                                    <img class="img-responsive" width="85" alt="" src="/cdn/assets/images/blank.gif" data-echo="/cdn/assets/images/products/p17.jpg" />
                                </a>
                            </div>

                            <div class="item">
                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="2" href="#slide2">
                                    <img class="img-responsive" width="85" alt="" src="/cdn/assets/images/blank.gif" data-echo="/cdn/assets/images/products/p18.jpg"/>
                                </a>
                            </div>
                            <div class="item">

                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="3" href="#slide3">
                                    <img class="img-responsive" width="85" alt="" src="/cdn/assets/images/blank.gif" data-echo="/cdn/assets/images/products/p19.jpg" />
                                </a>
                            </div>
                            <div class="item">

                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="4" href="#slide4">
                                    <img class="img-responsive" width="85" alt="" src="/cdn/assets/images/blank.gif" data-echo="/cdn/assets/images/products/p20.jpg" />
                                </a>
                            </div>
                            <div class="item">

                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="5" href="#slide5">
                                    <img class="img-responsive" width="85" alt="" src="/cdn/assets/images/blank.gif" data-echo="/cdn/assets/images/products/p21.jpg" />
                                </a>
                            </div>
                            <div class="item">

                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="6" href="#slide6">
                                    <img class="img-responsive" width="85" alt="" src="/cdn/assets/images/blank.gif" data-echo="/cdn/assets/images/products/p22.jpg" />
                                </a>
                            </div>
                            <div class="item">

                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="7" href="#slide7">
                                    <img class="img-responsive" width="85" alt="" src="/cdn/assets/images/blank.gif" data-echo="/cdn/assets/images/products/p23.jpg" />
                                </a>
                            </div>
                            <div class="item">

                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="8" href="#slide8">
                                    <img class="img-responsive" width="85" alt="" src="/cdn/assets/images/blank.gif" data-echo="/cdn/assets/images/products/p24.jpg" />
                                </a>
                            </div>
                            <div class="item">

                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="9" href="#slide9">
                                    <img class="img-responsive" width="85" alt="" src="/cdn/assets/images/blank.gif" data-echo="/cdn/assets/images/products/p25.jpg" />
                                </a>
                            </div>
                        </div><!-- /#owl-single-product-thumbnails -->

                        

                    </div><!-- /.gallery-thumbs -->*}

                </div>
                <!-- /.single-product-gallery -->
            </div><!-- /.gallery-holder -->             
          <div class='col-sm-6 col-md-7 product-info-block'>
            <div class="product-info">
              <h1 class="name">{$p.name}</h1>
              
              {*<div class="rating-reviews m-t-20">
                <div class="row">
                  <div class="col-sm-3">
                    <div class="rating rateit-small"></div>
                  </div>
                  <div class="col-sm-8">
                    <div class="reviews">
                      <a href="#" class="lnk">(13 Reviews)</a>
                    </div>
                  </div>
                </div><!-- /.row -->    
              </div><!-- /.rating-reviews *}
              <div class="stock-container info-container m-t-10">
                <div class="row">
                  <div class="col-sm-2">
                    <div class="stock-box">
                      <span class="label">Availability :</span>
                    </div>  
                  </div>
                  <div class="col-sm-9">
                    <div class="stock-box">
                      <span class="value">In Stock</span>
                    </div>  
                  </div>
                </div><!-- /.row -->  
              </div><!-- /.stock-container -->

              <div class="description-container m-t-20">
                {$p.summary}
              </div><!-- /.description-container -->

              <div class="price-container info-container m-t-20">
                <div class="row">
                  

                  <div class="col-sm-6">
                    <div class="price-box">
                      <span class="price">KShs. {$p.price|default: 0}</span>
                      {*<span class="price-strike">$900.00</span>*}
                    </div>
                  </div>

                  {*<div class="col-sm-6">
                    <div class="favorite-button m-t-10">
                      <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Wishlist" href="#">
                          <i class="fa fa-heart"></i>
                      </a>
                      <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Add to Compare" href="#">
                         <i class="fa fa-signal"></i>
                      </a>
                      <a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="E-mail" href="#">
                          <i class="fa fa-envelope"></i>
                      </a>
                    </div>
                  </div>*}

                </div><!-- /.row -->
              </div><!-- /.price-container -->

              <div class="quantity-container info-container">
                <div class="row">
                  
                  <!-- <div class="col-sm-2">
                    <span class="label">Qty :</span>
                  </div>
                  
                  <div class="col-sm-2">
                    <div class="cart-quantity">
                      <div class="quant-input">
                          <div class="arrows">
                            <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
                            <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
                          </div>
                          <input type="text" value="1">
                      </div>
                    </div>
                  </div> -->

                  <div class="col-sm-12">
                    <form class="product-cart-form">
                      <input type="hidden" name="pid" value="{$p.id}"/>
                      <input type="hidden" name="pname" value="{$p.name}"/>
                      <input type="hidden" name="pimage" value="{$p.image}"/>
                      <input type="hidden" name="pprice" value="{$p.price}"/>
                      <div style="background: #000; opacity: 0.7; border-radius: 5px;">
                        <div style="padding: 10px;">
                          <label style="color: #fff;">Quantity:</label>
                          <input type="number" name="pqty" value="1" class="form-control" style="width: 70px;" /><br>
                          <button class="btn btn-primary icon" type="submit"> 
                            <i class="fa fa-shopping-basket"></i> 
                            Add to Cart
                          </button>
                        </div>
                      </div>
                    </form>
                    <!-- <a href="#" class="btn btn-primary"><i class="fa fa-shopping-cart inner-right-vs"></i> ADD TO CART</a> -->
                  </div>

                  
                </div><!-- /.row -->
              </div><!-- /.quantity-container -->

              

              

              
            </div><!-- /.product-info -->
          </div><!-- /.col-sm-7 -->
        </div><!-- /.row -->
                </div>
        
        <div class="product-tabs inner-bottom-xs  wow fadeInUp">
          <div class="row">
            <div class="col-sm-3">
              <ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
                <li class="active"><a data-toggle="tab" href="#description">DESCRIPTION</a></li>
                <li ><a data-toggle="tab" href="#deliver_info">DELIVERY &amp; PAYMENT INFORMATION</a></li>
                {*<li><a data-toggle="tab" href="#review">REVIEW</a></li>
                <li><a data-toggle="tab" href="#tags">TAGS</a></li>*}
              </ul><!-- /.nav-tabs #product-tabs -->
            </div>
            <div class="col-sm-9">

              <div class="tab-content">
                
                <div id="description" class="tab-pane in active">
                  <div class="product-tab">
                    <p class="text">{$p.description}</p>
                  </div>  
                </div><!-- /.tab-pane -->
                
                <div id="deliver_info" class="tab-pane">
                  <div class="product-tab">
                    <p class="text">{$p.deliveryCondition}</p>
                  </div>  
                </div><!-- /.tab-pane -->

                <div id="review" class="tab-pane">
                  <div class="product-tab">
                                        
                    <div class="product-reviews">
                      <h4 class="title">Customer Reviews</h4>

                      <div class="reviews">
                        <div class="review">
                          <div class="review-title"><span class="summary">We love this product</span><span class="date"><i class="fa fa-calendar"></i><span>1 days ago</span></span></div>
                          <div class="text">"Lorem ipsum dolor sit amet, consectetur adipiscing elit.Aliquam suscipit."</div>
                                                    </div>
                      
                      </div><!-- /.reviews -->
                    </div><!-- /.product-reviews -->
                    

                    
                    <div class="product-add-review">
                      <h4 class="title">Write your own review</h4>
                      <div class="review-table">
                        <div class="table-responsive">
                          <table class="table"> 
                            <thead>
                              <tr>
                                <th class="cell-label">&nbsp;</th>
                                <th>1 star</th>
                                <th>2 stars</th>
                                <th>3 stars</th>
                                <th>4 stars</th>
                                <th>5 stars</th>
                              </tr>
                            </thead>  
                            <tbody>
                              <tr>
                                <td class="cell-label">Quality</td>
                                <td><input type="radio" name="quality" class="radio" value="1"></td>
                                <td><input type="radio" name="quality" class="radio" value="2"></td>
                                <td><input type="radio" name="quality" class="radio" value="3"></td>
                                <td><input type="radio" name="quality" class="radio" value="4"></td>
                                <td><input type="radio" name="quality" class="radio" value="5"></td>
                              </tr>
                              <tr>
                                <td class="cell-label">Price</td>
                                <td><input type="radio" name="quality" class="radio" value="1"></td>
                                <td><input type="radio" name="quality" class="radio" value="2"></td>
                                <td><input type="radio" name="quality" class="radio" value="3"></td>
                                <td><input type="radio" name="quality" class="radio" value="4"></td>
                                <td><input type="radio" name="quality" class="radio" value="5"></td>
                              </tr>
                              <tr>
                                <td class="cell-label">Value</td>
                                <td><input type="radio" name="quality" class="radio" value="1"></td>
                                <td><input type="radio" name="quality" class="radio" value="2"></td>
                                <td><input type="radio" name="quality" class="radio" value="3"></td>
                                <td><input type="radio" name="quality" class="radio" value="4"></td>
                                <td><input type="radio" name="quality" class="radio" value="5"></td>
                              </tr>
                            </tbody>
                          </table><!-- /.table .table-bordered -->
                        </div><!-- /.table-responsive -->
                      </div><!-- /.review-table -->
                      
                      <div class="review-form">
                        <div class="form-container">
                          <form role="form" class="cnt-form">
                            
                            <div class="row">
                              <div class="col-sm-6">
                                <div class="form-group">
                                  <label for="exampleInputName">Your Name <span class="astk">*</span></label>
                                  <input type="text" class="form-control txt" id="exampleInputName" placeholder="">
                                </div><!-- /.form-group -->
                                <div class="form-group">
                                  <label for="exampleInputSummary">Summary <span class="astk">*</span></label>
                                  <input type="text" class="form-control txt" id="exampleInputSummary" placeholder="">
                                </div><!-- /.form-group -->
                              </div>

                              <div class="col-md-6">
                                <div class="form-group">
                                  <label for="exampleInputReview">Review <span class="astk">*</span></label>
                                  <textarea class="form-control txt txt-review" id="exampleInputReview" rows="4" placeholder=""></textarea>
                                </div><!-- /.form-group -->
                              </div>
                            </div><!-- /.row -->
                            
                            <div class="action text-right">
                              <button class="btn btn-primary btn-upper">SUBMIT REVIEW</button>
                            </div><!-- /.action -->

                          </form><!-- /.cnt-form -->
                        </div><!-- /.form-container -->
                      </div><!-- /.review-form -->

                    </div><!-- /.product-add-review -->                   
                    
                      </div><!-- /.product-tab -->
                </div><!-- /.tab-pane -->

                <div id="tags" class="tab-pane">
                  <div class="product-tag">
                    
                    <h4 class="title">Product Tags</h4>
                    <form role="form" class="form-inline form-cnt">
                      <div class="form-container">
                  
                        <div class="form-group">
                          <label for="exampleInputTag">Add Your Tags: </label>
                          <input type="email" id="exampleInputTag" class="form-control txt">
                          

                        </div>

                        <button class="btn btn-upper btn-primary" type="submit">ADD TAGS</button>
                      </div><!-- /.form-container -->
                    </form><!-- /.form-cnt -->

                    <form role="form" class="form-inline form-cnt">
                      <div class="form-group">
                        <label>&nbsp;</label>
                        <span class="text col-md-offset-3">Use spaces to separate tags. Use single quotes (') for phrases.</span>
                      </div>
                    </form><!-- /.form-cnt -->

                  </div><!-- /.product-tab -->
                </div><!-- /.tab-pane -->

              </div><!-- /.tab-content -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.product-tabs -->

        <!-- ============================================== UPSELL PRODUCTS ============================================== -->
{*<section class="section featured-product wow fadeInUp">
  <h3 class="section-title">upsell products</h3>
  <div class="owl-carousel homepage-owl-carousel upsell-product custom-carousel owl-theme outer-top-xs">
        
    <div class="item item-carousel">
      <div class="products">
        
  <div class="product">   
    <div class="product-image">
      <div class="image">
        <a href="detail.html"><img  src="/cdn/assets/images/products/p1.jpg" alt=""></a>
      </div><!-- /.image -->      

                  <div class="tag sale"><span>sale</span></div>                  
    </div><!-- /.product-image -->
      
    
    <div class="product-info text-left">
      <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
      <div class="rating rateit-small"></div>
      <div class="description"></div>

      <div class="product-price"> 
        <span class="price">
          $650.99       </span>
                         <span class="price-before-discount">$ 800</span>
                  
      </div><!-- /.product-price -->
      
    </div><!-- /.product-info -->
          <div class="cart clearfix animate-effect">
        <div class="action">
          <ul class="list-unstyled">
            <li class="add-cart-button btn-group">
              <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                <i class="fa fa-shopping-cart"></i>                         
              </button>
              <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                          
            </li>
                     
                    <li class="lnk wishlist">
              <a class="add-to-cart" href="detail.html" title="Wishlist">
                 <i class="icon fa fa-heart"></i>
              </a>
            </li>

            <li class="lnk">
              <a class="add-to-cart" href="detail.html" title="Compare">
                  <i class="fa fa-signal"></i>
              </a>
            </li>
          </ul>
        </div><!-- /.action -->
      </div><!-- /.cart -->
      </div><!-- /.product -->
      
      </div><!-- /.products -->
    </div><!-- /.item -->
  
    <div class="item item-carousel">
      <div class="products">
        
  <div class="product">   
    <div class="product-image">
      <div class="image">
        <a href="detail.html"><img  src="/cdn/assets/images/products/p2.jpg" alt=""></a>
      </div><!-- /.image -->      

                  <div class="tag sale"><span>sale</span></div>                  
    </div><!-- /.product-image -->
      
    
    <div class="product-info text-left">
      <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
      <div class="rating rateit-small"></div>
      <div class="description"></div>

      <div class="product-price"> 
        <span class="price">
          $650.99       </span>
                         <span class="price-before-discount">$ 800</span>
                  
      </div><!-- /.product-price -->
      
    </div><!-- /.product-info -->
          <div class="cart clearfix animate-effect">
        <div class="action">
          <ul class="list-unstyled">
            <li class="add-cart-button btn-group">
              <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                <i class="fa fa-shopping-cart"></i>                         
              </button>
              <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                          
            </li>
                     
                    <li class="lnk wishlist">
              <a class="add-to-cart" href="detail.html" title="Wishlist">
                 <i class="icon fa fa-heart"></i>
              </a>
            </li>

            <li class="lnk">
              <a class="add-to-cart" href="detail.html" title="Compare">
                  <i class="fa fa-signal"></i>
              </a>
            </li>
          </ul>
        </div><!-- /.action -->
      </div><!-- /.cart -->
      </div><!-- /.product -->
      
      </div><!-- /.products -->
    </div><!-- /.item -->
  
    <div class="item item-carousel">
      <div class="products">
        
  <div class="product">   
    <div class="product-image">
      <div class="image">
        <a href="detail.html"><img  src="/cdn/assets/images/products/p3.jpg" alt=""></a>
      </div><!-- /.image -->      

                              <div class="tag hot"><span>hot</span></div>      
    </div><!-- /.product-image -->
      
    
    <div class="product-info text-left">
      <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
      <div class="rating rateit-small"></div>
      <div class="description"></div>

      <div class="product-price"> 
        <span class="price">
          $650.99       </span>
                         <span class="price-before-discount">$ 800</span>
                  
      </div><!-- /.product-price -->
      
    </div><!-- /.product-info -->
          <div class="cart clearfix animate-effect">
        <div class="action">
          <ul class="list-unstyled">
            <li class="add-cart-button btn-group">
              <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                <i class="fa fa-shopping-cart"></i>                         
              </button>
              <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                          
            </li>
                     
                    <li class="lnk wishlist">
              <a class="add-to-cart" href="detail.html" title="Wishlist">
                 <i class="icon fa fa-heart"></i>
              </a>
            </li>

            <li class="lnk">
              <a class="add-to-cart" href="detail.html" title="Compare">
                  <i class="fa fa-signal"></i>
              </a>
            </li>
          </ul>
        </div><!-- /.action -->
      </div><!-- /.cart -->
      </div><!-- /.product -->
      
      </div><!-- /.products -->
    </div><!-- /.item -->
  
    <div class="item item-carousel">
      <div class="products">
        
  <div class="product">   
    <div class="product-image">
      <div class="image">
        <a href="detail.html"><img  src="/cdn/assets/images/products/p4.jpg" alt=""></a>
      </div><!-- /.image -->      

      <div class="tag new"><span>new</span></div>                              
    </div><!-- /.product-image -->
      
    
    <div class="product-info text-left">
      <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
      <div class="rating rateit-small"></div>
      <div class="description"></div>

      <div class="product-price"> 
        <span class="price">
          $650.99       </span>
                         <span class="price-before-discount">$ 800</span>
                  
      </div><!-- /.product-price -->
      
    </div><!-- /.product-info -->
          <div class="cart clearfix animate-effect">
        <div class="action">
          <ul class="list-unstyled">
            <li class="add-cart-button btn-group">
              <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                <i class="fa fa-shopping-cart"></i>                         
              </button>
              <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                          
            </li>
                     
                    <li class="lnk wishlist">
              <a class="add-to-cart" href="detail.html" title="Wishlist">
                 <i class="icon fa fa-heart"></i>
              </a>
            </li>

            <li class="lnk">
              <a class="add-to-cart" href="detail.html" title="Compare">
                  <i class="fa fa-signal"></i>
              </a>
            </li>
          </ul>
        </div><!-- /.action -->
      </div><!-- /.cart -->
      </div><!-- /.product -->
      
      </div><!-- /.products -->
    </div><!-- /.item -->
  
    <div class="item item-carousel">
      <div class="products">
        
  <div class="product">   
    <div class="product-image">
      <div class="image">
        <a href="detail.html"><img  src="/cdn/assets/images/blank.gif" data-echo="/cdn/assets/images/products/p5.jpg" alt=""></a>
      </div><!-- /.image -->      

                              <div class="tag hot"><span>hot</span></div>      
    </div><!-- /.product-image -->
      
    
    <div class="product-info text-left">
      <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
      <div class="rating rateit-small"></div>
      <div class="description"></div>

      <div class="product-price"> 
        <span class="price">
          $650.99       </span>
                         <span class="price-before-discount">$ 800</span>
                  
      </div><!-- /.product-price -->
      
    </div><!-- /.product-info -->
          <div class="cart clearfix animate-effect">
        <div class="action">
          <ul class="list-unstyled">
            <li class="add-cart-button btn-group">
              <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                <i class="fa fa-shopping-cart"></i>                         
              </button>
              <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                          
            </li>
                     
                    <li class="lnk wishlist">
              <a class="add-to-cart" href="detail.html" title="Wishlist">
                 <i class="icon fa fa-heart"></i>
              </a>
            </li>

            <li class="lnk">
              <a class="add-to-cart" href="detail.html" title="Compare">
                  <i class="fa fa-signal"></i>
              </a>
            </li>
          </ul>
        </div><!-- /.action -->
      </div><!-- /.cart -->
      </div><!-- /.product -->
      
      </div><!-- /.products -->
    </div><!-- /.item -->
  
    <div class="item item-carousel">
      <div class="products">
        
  <div class="product">   
    <div class="product-image">
      <div class="image">
        <a href="detail.html"><img  src="/cdn/assets/images/blank.gif" data-echo="/cdn/assets/images/products/p6.jpg" alt=""></a>
      </div><!-- /.image -->      

      <div class="tag new"><span>new</span></div>                              
    </div><!-- /.product-image -->
      
    
    <div class="product-info text-left">
      <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
      <div class="rating rateit-small"></div>
      <div class="description"></div>

      <div class="product-price"> 
        <span class="price">
          $650.99       </span>
                         <span class="price-before-discount">$ 800</span>
                  
      </div><!-- /.product-price -->
      
    </div><!-- /.product-info -->
          <div class="cart clearfix animate-effect">
        <div class="action">
          <ul class="list-unstyled">
            <li class="add-cart-button btn-group">
              <button class="btn btn-primary icon" data-toggle="dropdown" type="button">
                <i class="fa fa-shopping-cart"></i>                         
              </button>
              <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                          
            </li>
                     
                    <li class="lnk wishlist">
              <a class="add-to-cart" href="detail.html" title="Wishlist">
                 <i class="icon fa fa-heart"></i>
              </a>
            </li>

            <li class="lnk">
              <a class="add-to-cart" href="detail.html" title="Compare">
                  <i class="fa fa-signal"></i>
              </a>
            </li>
          </ul>
        </div><!-- /.action -->
      </div><!-- /.cart -->
      </div><!-- /.product -->
      
      </div><!-- /.products -->
    </div><!-- /.item -->
      </div><!-- /.home-owl-carousel -->
</section><!-- /.section -->*}
<!-- ============================================== UPSELL PRODUCTS : END ============================================== -->
      
      </div><!-- /.col -->
      <div class="clearfix"></div>
    </div><!-- /.row -->
    <!-- ============================================== BRANDS CAROUSEL ============================================== -->
<div id="brands-carousel" class="logo-slider wow fadeInUp">

    <div class="logo-slider-inner"> 
      <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
        <div class="item">
          <a href="#" class="image">
            <img data-echo="/cdn/assets/images/brands/brand1.png" src="/cdn/assets/images/blank.gif" alt="">
          </a>  
        </div><!--/.item-->

        <div class="item">
          <a href="#" class="image">
            <img data-echo="/cdn/assets/images/brands/brand2.png" src="/cdn/assets/images/blank.gif" alt="">
          </a>  
        </div><!--/.item-->

        <div class="item">
          <a href="#" class="image">
            <img data-echo="/cdn/assets/images/brands/brand3.png" src="/cdn/assets/images/blank.gif" alt="">
          </a>  
        </div><!--/.item-->

        <div class="item">
          <a href="#" class="image">
            <img data-echo="/cdn/assets/images/brands/brand4.png" src="/cdn/assets/images/blank.gif" alt="">
          </a>  
        </div><!--/.item-->

        <div class="item">
          <a href="#" class="image">
            <img data-echo="/cdn/assets/images/brands/brand5.png" src="/cdn/assets/images/blank.gif" alt="">
          </a>  
        </div><!--/.item-->

        <div class="item">
          <a href="#" class="image">
            <img data-echo="/cdn/assets/images/brands/brand6.png" src="/cdn/assets/images/blank.gif" alt="">
          </a>  
        </div><!--/.item-->

        <div class="item">
          <a href="#" class="image">
            <img data-echo="/cdn/assets/images/brands/brand2.png" src="/cdn/assets/images/blank.gif" alt="">
          </a>  
        </div><!--/.item-->

        <div class="item">
          <a href="#" class="image">
            <img data-echo="/cdn/assets/images/brands/brand4.png" src="/cdn/assets/images/blank.gif" alt="">
          </a>  
        </div><!--/.item-->

        <div class="item">
          <a href="#" class="image">
            <img data-echo="/cdn/assets/images/brands/brand1.png" src="/cdn/assets/images/blank.gif" alt="">
          </a>  
        </div><!--/.item-->

        <div class="item">
          <a href="#" class="image">
            <img data-echo="/cdn/assets/images/brands/brand5.png" src="/cdn/assets/images/blank.gif" alt="">
          </a>  
        </div><!--/.item-->
        </div><!-- /.owl-carousel #logo-slider -->
    </div><!-- /.logo-slider-inner -->
  
</div><!-- /.logo-slider -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->  </div><!-- /.container -->
</div><!-- /.body-content -->


<section class="bottom-section">
<div class="container">



 <!-- ============================================== NEWSLETTER ============================================== -->
        <div class="newsletter wow fadeInUp">
        <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
          {*<h3>Sign up to <strong>Newsletter</strong></h3>
          <div class="sidebar-widget-body">
            <p>Get <strong>40% Off</strong> on selected items!</p>
            </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
              <div class="form-group">
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Subscribe to our newsletter">  <button class="btn btn-primary">Subscribe</button>
              </div>
             

            </div>*}
            </div>
          </div>
          <!-- /.sidebar-widget-body --> 
        </div>
        <!-- /.sidebar-widget --> 
        <!-- ============================================== NEWSLETTER: END ============================================== --> 


</div>
</section>

{include file="emboga/footer.tpl"}