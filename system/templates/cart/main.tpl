{include file="shared/site_header.tpl"}
  
  <!--Main category : Begin-->
  <main id="main" class="cart">
    <section class="header-page">
      <div class="container">
        <div class="row">
          <div class="col-sm-3 hidden-xs">
            <h1 class="mh-title">Shopping Cart</h1>
          </div>
          <div class="breadcrumb-w col-sm-9">
            <span class="hidden-xs">You are here:</span>
            <ul class="breadcrumb">
              <li>
                <a href="/">Home</a>
              </li>
              <li>
                <span>Shopping Cart</span>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section class="cart-content parten-bg">
      <div class="container">
        <!--Cart top banner -->
        <div class="row">
          <div class="col-md-12 cart-banner-top hidden-xs">
            <a href="#" title="cart top banner">
              <img src="/cdn/imran/images/banner/cart/top-banner.jpg" alt="Cart top banner" />
            </a>
          </div>
        </div><!--Cart top banner : End-->
        <!-- Cart title-->
        <div class="row cart-header hidden-xs">
          <div class="col-md-6 col-sm-10 cart-title">
            <h1>Shopping cart ({$pCounter|default: 0})</h1>
            <p>If you have any queries, our Customer Services team will be happy to help — just call <strong>{$app.phone}</strong></p>
          </div>
          <div class="col-md-3 col-sm-2 continue-shopping">
            <a href="/" title="Continue shopping">
              Continue Shopping 
              <i class="fa fa-arrow-circle-o-right"></i>
            </a>
          </div>
        </div><!-- Cart title : End -->
        <div class="row">
          <!--Cart main content : Begin -->
          <section class="cart-main col-md-9 col-xs-12">
            <!--Cart Item-->
            <p class="visible-xs mobile-cart-title">There are {$pCounter|default: 0} items in your cart.</p>
            <form >
              <div class="table-responsive">
                <table cellspacing="0" class="table-cart table">
                    <thead class="hidden-xs">
                        <tr>
                            <th>#</th>
                            <th class="product-info">Products</th>
                            <th class="product-price">Price</th>
                            <th class="product-quantity">Qty</th>
                            {*<th class="product-wishlist">Move to wishlist</th>*}
                            <th class="product-subtotal">Sub Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $cart as $c}
                          <tr class="cart_item">
                              <td>
                                <input type="checkbox" name="purl" value="{$c.pid}">
                              </td>
                              <td class="product-info">
                                  <div class="product-image-col">
                                    <a class="product-image" title="product card">
                                      <img src="/products/{$c.pimage}" alt="{$c.pname}">
                                    </a>
                                    {*<div class="product-action hidden-xs">
                                      <a href="#" class="cart-edit" title="Edit Product">
                                              <i class="fa fa-pencil-square-o"></i>
                                      </a>
                                      <a href="#" class="cart-delete" title="Delete Product">
                                              <i class="fa fa-times"></i>
                                      </a>
                                      <a href="#" class="cart-update" title="Update Product">
                                              <i class="fa fa-refresh"></i>
                                      </a>
                                    </div>*}
                                  </div>
                                  <div class="product-info-col">
                                    <h3 class="product-name">{$c.pname|capitalize}</h3>
                                  </div>
                              </td>
                              <td class="product-price hidden-xs">
                                  <span>{$app.currency} {$c.pprice|number_format:2:".":","}</span>
                              </td>
                              <td class="product-quantity hidden-xs"> 
                                <input type="text" value="{$c.pqty}" name="qty" id="qty">
                              </td>
                              {*<td class="product-wishlist hidden-xs checkbox-w">
                                <input type="checkbox" id="addWishlist01" name="move-wishlist" checked>
                                <label for="addWishlist01" class="clearfix">
                                  <i class="fa fa-square-o"></i>
                                  <i class="fa fa-check-square-o"></i>
                                </label>
                              </td>*}
                              <td class="product-subtotal hidden-xs">
                                {assign var = t value = $c.pprice * $c.pqty}
                                <span>{$app.currency} {$t|number_format:2:".":","}</span>
                              </td>
                          </tr>
                        {/foreach}
                    </tbody>
                </table>
              </div>
              {*
                  <div class="row update-wishlist">
                    <div class="col-sm-12 hidden-xs">
                      <button type="button" name="update-wishlist" class="gbtn btn-update-wishlist">
                        <i class="fa fa-refresh"></i>
                        Update Cart
                      </button>
                    </div>
                  </div>
               *}
              <div class="row cart-bottom">
                  <!--Estimate Shipping : Begin-->
                  
                  <div class="col-sm-4 estimate-shipping clearfix">
                   {* <h3>Estimate Shipping And Tax</h3>
                    <p>Enter your destination to get a shipping estimate.</p>
                    <form action="#" method="POST" name="estimate-shipping">*
                      <div class="form-group">
                          <!-- Get Html Dropdown for All countries in the world -->
                          <label for="country">Country<span class="required">*</span></label>
                          <select class="form-control" name="country">
                          <option value="UG">Uganda</option>
                          <option value="KE">Kenya</option>
                          <option value="TZ">Tanzania</option>
                          <option value="RW">Rwanda</option>
                          <option value="SA">South Africa</option>
                        </select>
                      </div>
                      <div class="form-group">
                          <!-- To be auto loaded by onclicking country button-->
                          <label for="State/Province">State/Province<span class="required">*</span></label>
                          <select class="form-control" name="region">
                            <option value="">Please select region, states or province</option>
                            <option value="alabama">Alabama</option>
                            <option value="california">California</option>
                            <option value="texas">Texas</option>
                            <option value="washington">Washington</option>
                          </select>
                      </div>
                      <div class="form-group">
                          <label for="zip/poster">Zip/Postal Code</label>
                          <input type="text" class="form-control" id="zipCode" placeholder="Zip/Postal Code">
                      </div>
                      <button type="submit" class="gbtn btn-estimate">Get Quote</button>
                    </form>
                    *}
                  </div><!--Estimate Shipping : End-->

                  <!--Discount Code: Begin-->
                  <div class="col-sm-4 discount-code clearfix">
                    {*<h3>Discount Codes</h3>
                    <p>Do you have a promotional code?</p>
                    <form action="#" method="POST" name="discount-code">
                      <div class="form-group">
                          <input type="text" class="form-control" id="discountCode" placeholder="">
                      </div>
                      <button type="submit" class="gbtn btn-discount">Apply Coupon</button>
                    </form>*}
                  </div><!--Discount Code: End-->
                  
                  <div class="col-sm-4 subtotal clearfix">
                    <!-- <h3>Sub total</h3> -->
                    <!-- <p>Checkout with Multiple Addresses</p> -->
                    <ul>
                      {*<li>
                        <span class="sub-title">Shipping</span>
                        <span class="sub-value">$20.26</span>
                      </li> *}
                      <li class="grand-total">
                        <span class="sub-title">Total:</span>
                        <span class="sub-value">{$app.currency}. {$le_grand_total|number_format:2:".":","}</span>
                      </li>
                    </ul>
                    <button type="button" class="gbtn btn-checkout">Proceed Checkout</button>
                  </div>
              </div>
            </form>
            <!--Cart Item-->
          </section><!-- Cart main content : End -->
          <!--Cart right banner: Begin-->
          <section class="col-sm-3 cart-right-banner hidden-sm hidden-xs">
            <div class="cart-right-banner">
              <a href="#" title="cart right banner">
                <img src="/cdn/imran/images/banner/cart/cart-right-banner.jpg" alt="cart right banner">
              </a>
            </div>
          </section><!--Cart right banner: End-->
        </div>
        
      </div>
    </section>
  </main>
  <!-- Main Category: End -->

<!-- /.body-content --> 
{include file="shared/site_footer.tpl"}