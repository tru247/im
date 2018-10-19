<header>
    <!--Top Header: Begin-->
    <section id="top-header" class="clearfix">
      <div class="container">
        <div class="row">
          <div class="top-links col-lg-7 col-md-6 col-sm-5 col-xs-6">
            <ul>
              <li class="visible-md visible-lg">
                <!-- Show user account if logged in else redirect to the login/register page-->
                <a href="/user/dashboard/{$user.url}">
                  <i class="fa fa-lock"></i>
                  <!-- Account -->
                </a>
              </li>
              <li class="visible-md visible-lg">
                <a href="/user/wishlist/{$user.url}">
                  <i class="fa fa-heart"></i>
                  <!-- Wishlist -->
                </a>
              </li>
              <li>
                <a href="/user/login}">
                  <i class="fa fa-user"></i>
                  <!-- Login -->
                </a>
              </li>
              <li class="hidden-xs">
                <a href="/user/register">
                  <i class="fa fa-pencil"></i>
                  <!-- Sign Up -->
                </a>
              </li>
              <li class="hidden-xs">
                <a href="#">
                  <i class="fa fa-facebook"></i>
                  <!-- Connect with facebook -->
                </a>
              </li>
              <li class="hidden-xs">
                <a href="#">
                  <i class="fa fa-twitter"></i> 
                </a>
              </li>
              <li class="hidden-xs">
                <a href="#">
                  <i class="fa fa-pinterest"></i> 
                </a>
              </li> 
              <li class="hidden-xs">
                <a href="#">
                  <i class="fa fa-linkedin"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="top-header-right f-right col-lg-5 col-md-6 col-sm-7 col-xs-6">
            <div class="w-header-right">
              {*<div class="block-currency">
                <div class="currency-active">
                  <span class="currency-name">
                    currency:<span> usd</span><i class="fa fa-angle-down"></i>

                  </span>
                </div>
                <ul>
                  <li>
                    <a href="#" title="Select currency japan">
                      <span>JPY</span>
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Select currency japan">
                      <span>Euro</span>
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Select currency japan">
                      <span>Pound St.</span>
                    </a>
                  </li>
                </ul>
              </div>
              <div class="language-w clearfix">
                <div class="language-active">
                  <span class="language-name">Language: <span>English</span><i class="fa fa-angle-down"></i>
                  </span>
                </div>
                <ul>
                  <li>
                    <a href="#" title="Select Australia language">
                      <span>Australia</span>
                    </a>
                  </li>
                  <li>
                    <a href="#" title="Select Japan language">
                      <span>Japan</span>
                    </a> 
                  </li>
                  <li>
                    <a href="#" title="Select France language">
                      <span>France</span>
                    </a>
                  </li>
                </ul>
              </div> *}
              <div class="th-hotline block-currency">
                <i class="fa fa-phone"></i>
                <span>{$app.phone}</span>
              </div> 
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--Top Header: End-->
    
    <!--Main Header: Begin-->
    <section class="main-header">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-2 col-sm-4 col-xs-5 w-logo">
            <div class="logo hd-pd ">
              <a href="/">
                <img width="180" src="/cdn/imran/imranma_logo.png" alt="Imranma Digital Printshop logo">
              </a>
            </div>  
          </div>
          <div class="col-lg-7 col-md-8 visible-md visible-lg" style="margin-top: 15px;">
            <nav id="main-menu" class="main-menu clearfix">
              <ul> 
                <li class="level0 hd-pd {if $active eq 'home'}active{/if}" title="Home">
                  <a href="/"> 
                    Home
                  </a>
                </li>
                {foreach $cats as $cat}
                  <li class="level0 hd-pd {if $active eq $cat.name}active{/if}" title="Home">
                    <a href="/category/info/{$cat.url}" title="{$cat.name}">{$cat.name|capitalize}</a>
                  </li>
                {/foreach}
                <li class="level0 hd-pd {if $active eq 'upload'}active{/if}" title="Home">
                  <a href="/printing/upload-for-printing">Upload</a>
                </li>
                <li class="level0 hd-pd {if $active eq 'quote'}active{/if}" title="Home">
                  <a href="/printing/get-quote">Quote</a>
                </li>
                <li class="level0 hd-pd {if $active eq 'contact'}active{/if}" title="Home">
                  <a href="/printing/contact-us">Contact</a>
                </li>
              </ul>
            </nav>
          </div>
          <div class="col-sm-1 col-sm-offset-5 col-xs-offset-2 col-xs-2 visible-sm visible-xs mbmenu-icon-w" style="margin-top: 15px;">
            <span class="mbmenu-icon hd-pd">
              <i class="fa fa-bars"></i>
            </span>
          </div>
          <div class="col-lg-1 col-md-2 col-sm-2 col-xs-3 headerCS" style="margin-top: 15px;">
            <div class="cart-w SC-w hd-pd ">
              <span class="mcart-icon dropdowSCIcon">
                <i class="fa fa-shopping-cart"></i>
                <span class="mcart-dd-qty">2</span>
              </span>
              <div class="mcart-dd-content dropdowSCContent clearfix">
                <div class="mcart-item-w clearfix1">
                  <ul>
                    <li class="mcart-item">
                      <img src="/cdn/imran/images/product/mcart-postcard.jpg" alt="postcard cards">
                      <div class="mcart-info">
                        <a href="detail.html" class="mcart-name">Postcards Cards</a>
                        <span class="mcart-qty">1 x </span>
                        <span class="mcart-price">$ 10.09</span>
                        <span class="mcart-remove-item">
                          <i class="fa fa-times-circle"></i>
                        </span>
                      </div>
                    </li>
                  </ul>
                </div>
                                                            
                <div class="mcart-item-w clearfix">
                  <ul>
                    <li class="mcart-item iteam2">
                      <img src="/cdn/imran/images/product/mcart-postcard.jpg" alt="postcard cards">
                      <div class="mcart-info">
                        <a href="detail.html" class="mcart-name">Postcards Cards</a>
                        <span class="mcart-qty">1 x </span>
                        <span class="mcart-price">$ 10.09</span>
                        <span class="mcart-remove-item">
                          <i class="fa fa-times-circle"></i>
                        </span>
                      </div>
                    </li>
                  </ul>
                </div>
                <div class="mcart-total clearfix">
                  <table>
                    <tr>
                      <td>Sub-Total</td>
                      <td>$ 10.09</td>
                    </tr>
                    <tr>
                      <td>Eco Tax (-2.00)</td>
                      <td>$ 2.00</td>
                    </tr>
                    <tr>
                      <td>VAT (20%)</td>
                      <td>$ 2.018</td>
                    </tr>
                    <tr class="total">
                      <td>Total</td>
                      <td>$ 10.108</td>
                    </tr>
                  </table>
                </div>
                <div class="mcart-links buttons-set clearfix">
                  <a href="cart.html" class="gbtn mcart-link-cart">View Cart</a>
                  <a href="checkout.html" class="gbtn mcart-link-checkout">Checkout</a>
                </div>
              </div>
            </div>
            <div class="search-w SC-w hd-pd ">
              <span class="search-icon dropdowSCIcon">
                <i class="fa fa-search"></i>
              </span>
              <div class="search-safari">
                <div class="search-form dropdowSCContent">
                  <form method="POST" action="#">
                    <input type="text" name="search" placeholder="Search" />
                    <input type="submit" name="search" value="Search">
                    <i class="fa fa-search"></i>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section><!--Main Header: End-->
  </header>
