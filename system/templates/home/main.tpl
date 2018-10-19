{include file="shared/site_header.tpl"}

    <div id="content">
        <div class="container">
            <!-- End Top Inner Link -->
            <div class="top-banner4 banner-background">
                <!-- <img class="image-background hidden" src="/cdn/main/images/home/home4/banner-top.jpg" alt="" /> -->
                <div class="banner-info4 white">
                    <div class="row">
                        
                    </div>
                    
                </div>
            </div>
            <!-- End Top banner -->

            <div class="content-home4">
                <div class="row">
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <div class="sidebar-home4 sidebar-left">
                            <div class="wrap-cat-icon box-border-top bg-white drop-shadow hidden-xs hidden-sm">
                                <h2 class="title18 title-box4 title-cat-icon">Categories</h2>
                                <ul class="list-cat-icon">
                                    {foreach $cats as $cat}
                                        <li><a href="/category/products/{$cat.url}"><span><i class="fa fa-shopping-basket"></i> {$cat.name}</span></a></li>
                                    {/foreach}
                                </ul>
                            </div>
                            <!-- End Box -->
                            <div class="box-service4 bg-white drop-shadow">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-6">
                                        <div class="item-service table">
                                            <div class="service-icon">
                                                <a href="#"><img class="pulse round" src="/cdn/main/images/icons/icon-phone.png" alt=""></a>
                                            </div>
                                            <div class="service-text">
                                                <h2 class="title18">{$app.phone}</h2>
                                                <p>Order by phone</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-6">
                                        <div class="item-service table">
                                            <div class="service-icon">
                                                <a href="#"><img class="pulse round" src="/cdn/main/images/icons/icon-time.png" alt=""></a>
                                            </div>
                                            <div class="service-text">
                                                <h2 class="title18">Working Time</h2>
                                                <p>Mon-Sun: 8.00Am-20.00 Pm</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-6">
                                        <div class="item-service table">
                                            <div class="service-icon">
                                                <a href="#"><img class="pulse round" src="/cdn/main/images/icons/icon-ship.png" alt=""></a>
                                            </div>
                                            <div class="service-text">
                                                <h2 class="title18">free shipping</h2>
                                                <p>On orders over KES. 9,900</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-8 col-xs-12">
                        <div class="banner-slider banner-slider4 drop-shadow">
                            <div class="wrap-item" data-pagination="true" data-autoplay="true" data-transition="fade" data-navigation="false" data-itemscustom="[[0,1]]">
                                <div class="item-slider item-slider4">
                                    <div class="banner-thumb"><a href="#"><img src="/cdn/main/images/home/home4/slide1.jpg" alt="" /></a></div>
                                    <div class="banner-info white text-center">
                                        <h2 class="title48 animated" data-animated="bounceInLeft">Steady growth for</h2>
                                        <h2 class="title48 animated" data-animated="bounceInRight">your farm</h2>
                                    </div>
                                    <div class="btn-special">
                                        <a href="#">Shop now <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                                <div class="item-slider item-slider4">
                                    <div class="banner-thumb"><a href="#"><img src="/cdn/main/images/home/home4/slide2.jpg" alt="" /></a></div>
                                    <div class="banner-info white text-center">
                                        <h2 class="title48 animated" data-animated="bounceInLeft">fresh fruit</h2>
                                        <h2 class="title48 animated" data-animated="bounceInRight">good health</h2>
                                    </div>
                                    <div class="btn-special">
                                        <a href="#">Shop now <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                                <div class="item-slider item-slider4">
                                    <div class="banner-thumb"><a href="#"><img src="/cdn/main/images/home/home4/slide3.jpg" alt="" /></a></div>
                                    <div class="banner-info white text-center">
                                        <h2 class="title48 animated" data-animated="bounceInLeft">fresh fruit</h2>
                                        <h2 class="title48 animated" data-animated="bounceInRight">good health</h2>
                                    </div>
                                    <div class="btn-special">
                                        <a href="#">Shop now <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product-box4 box-border-top bg-white drop-shadow">
                            <h2 class="title-box4 title18"><span>Our Products</span></h2>
                            <div class="product-slider4 line-white">
                                <div class="wrap-item show-navi" data-pagination="false" data-navigation="true" data-itemscustom="[[0,1],[540,2],[980,3]]">
                                    {foreach $prods as $prod}
                                        <div class="item-product text-center">
                                            <div class="product-thumb">
                                                <a href="detail.html" class="product-thumb-link zoomout-thumb">
                                                    <img src="/uploads/{$prod.image}" alt="">
                                                    <img src="/uploads/{$prod.image}" alt="">
                                                </a>
                                                <a href="/product/details/{$prod.url}" class="quickview-link fancybox.iframe"><i class="fa fa-search" aria-hidden="true"></i></a>
                                            </div>
                                            <div class="product-info">
                                                <h3 class="product-title"><a href="detail.html">{$prod.name}</a></h3>
                                                <div class="product-price">
                                                    <!-- <del><span>$75.00</span></del> -->
                                                    <ins><span>KES. {$prod.price}</span></ins>
                                                </div>
                                                <!-- <div class="product-rate">
                                                    <div class="product-rating" style="width:100%"></div>
                                                </div> 
                                                <div class="price-progress">
                                                    <div id="hi1" class="percentage" data-color="#43b02a" data-value="22"></div>
                                                    <span>22% Bought</span>
                                                </div>-->
                                                <div class="product-extra-link">
                                                    <!-- <a href="#" class="wishlist-link"><i class="fa fa-heart-o" aria-hidden="true"></i><span>Wishlist</span></a> -->
                                                    <a href="#" class="addcart-link"><i class="fa fa-shopping-basket" aria-hidden="true"></i><span>Add to cart</span></a>
                                                    <!-- <a href="#" class="compare-link"><i class="fa fa-stumbleupon" aria-hidden="true"></i><span>Compare</span></a> -->
                                                </div>
                                            </div>
                                        </div>
                                    {foreachelse}
                                        <div class="item-product text-center">No products uploaded yet. Come back later</div>
                                    {/foreach}
                                </div>
                            </div>
                        </div>
                        <!-- End Product Box -->

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Content -->

{include file="shared/site_footer.tpl"}