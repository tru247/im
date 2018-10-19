{include file="emboga/header.tpl"}
<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb" save_image_to_download="true">
  <div class="container">
    <div class="breadcrumb-inner">
      <ul class="list-inline list-unstyled">
        <li><a href="/">Home</a></li>
        <li class="active">Shopping Cart</li>
      </ul>
    </div><!-- /.breadcrumb-inner -->
  </div><!-- /.container -->
</div>
<!--  /.breadcrumb  -->

<div class="body-content outer-top-xs">
  <div class="container">
    <div>
      <div class="shopping-cart">
        <div class="shopping-cart-table ">
  <div class="table-responsive">
    <table class="table">
      <thead>
        <tr>
          {*<th class="cart-romove item">Remove</th>*}
          <th class="cart-description item">Image</th>
          <th class="cart-product-name item">Product Name</th>
          {*<th class="cart-edit item">Edit</th>*}
          <th class="cart-qty item">Quantity</th>
          <th class="cart-sub-total item">Subtotal</th>
          <th class="cart-total last-item">Total</th>
        </tr>
      </thead><!-- /thead -->
      <tfoot>
        <tr>
          <td colspan="7">
            <div class="shopping-cart-btn">
              <span class="">
                <a href="/" class="btn btn-upper btn-primary outer-left-xs">Continue Shopping</a>
                {*<a href="#" class="btn btn-upper btn-primary pull-right outer-right-xs">Update shopping cart</a>*}
              </span>
            </div><!-- /.shopping-cart-btn -->
          </td>
        </tr>
      </tfoot>
      <tbody>
        {assign var=total value=0}
        {foreach $cart as $c}
          <tr>
            {*<td class="romove-item"><a href="cart/delete/{$c.url}" title="cancel" class="icon"><i class="fa fa-trash-o"></i></a></td>*}
            <td class="cart-image">
              <a class="entry-thumbnail" href="#">
                  <img src="/products/{$c.pimage}" alt="{$c.pname}">
              </a>
            </td>
            <td class="cart-product-name-info">
              <h4 class="cart-product-description"><a href="#">{$c.pname}</a></h4>
              {*<div class="row">
                <div class="col-sm-4">
                  <div class="rating rateit-small rateit"><button id="rateit-reset-2" data-role="none" class="rateit-reset" aria-label="reset rating" aria-controls="rateit-range-2" style="display: none;"></button><div id="rateit-range-2" class="rateit-range" tabindex="0" role="slider" aria-label="rating" aria-owns="rateit-reset-2" aria-valuemin="0" aria-valuemax="5" aria-valuenow="4" style="width: 70px; height: 14px;" aria-readonly="true"><div class="rateit-selected" style="height: 14px; width: 56px;"></div><div class="rateit-hover" style="height:14px"></div></div></div>
                </div>
                <div class="col-sm-8">
                  <div class="reviews">
                    (06 Reviews)
                  </div>
                </div>
              </div><!-- /.row -->
              <div class="cart-product-info">
                        <span class="product-color">COLOR:<span>Blue</span></span>
              </div>*}
            </td>
            {*<td class="cart-product-edit"><a href="#" class="product-edit">Edit</a></td>*}
            <td class="cart-product-quantity">
              <div class="quant-input">
                    {*<div class="arrows">
                      <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
                      <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
                    </div>*}
                    <input value="{$c.pqty}" type="text">
                </div>
            </td>
            <td class="cart-product-sub-total"><span class="cart-sub-total-price">KShs. {$c.pprice}</span></td>
            {assign var = t value = $c.pprice * $c.pqty}
            <td class="cart-product-grand-total"><span class="cart-grand-total-price">KShs. {$t|number_format:2:".":","}</span></td>
            {assign var = total value =  $total + ($c.pprice * $c.pqty)}
          </tr>
        {foreachelse}
          <p>Your cart is empty. Start shopping <a href="/">NOW!</a></p>
        {/foreach}
      </tbody><!-- /tbody -->
    </table><!-- /table -->
  </div>
</div><!-- /.shopping-cart-table --> 
<div class="col-md-4 col-sm-12"></div>
<div class="col-md-4 col-sm-12"></div>
<div class="col-md-4 col-sm-12 ">
  <div class="cart-shopping-total">
    <table class="table">
      <thead>
        <tr>
          <th>
            {*<div class="cart-sub-total">
              Subtotal<span class="inner-left-md">$600.00</span>
            </div>*}
            <div class="cart-grand-total">
              Grand Total<span class="inner-left-md">KShs. {$total|number_format:2:".":","}</span>
            </div>
          </th>
        </tr>
      </thead><!-- /thead -->
      <tbody>
          <tr>
            <td>
              <div class="cart-checkout-btn pull-right">
                <a href="/cart/checkout" class="btn btn-primary checkout-btn">PROCEED TO CHECKOUT</a>
                <span class="">Checkout with multiples address!</span>
              </div>
            </td>
          </tr>
      </tbody><!-- /tbody -->
    </table><!-- /table -->
  </div>
</div>
<!-- /.cart-shopping-total -->      
</div><!-- /.shopping-cart -->
</div> <!-- /.row -->

<!-- ============================================== BRANDS CAROUSEL ============================================== -->
<div id="brands-carousel" class="logo-slider wow fadeInUp animated" style="visibility: visible; animation-name: fadeInUp;">

    <div class="logo-slider-inner"> 
      <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme" style="opacity: 1; display: block;">
        <div class="owl-wrapper-outer"><div class="owl-wrapper" style="width: 3860px; left: 0px; display: block;"><div class="owl-item" style="width: 193px;"><div class="item">
          <a href="#" class="image">
            <img src="/cdn/assets/images/brands/brand1.png" alt="">
          </a>  
        </div></div><div class="owl-item" style="width: 193px;"><div class="item">
          <a href="#" class="image">
            <img src="/cdn/assets/images/brands/brand2.png" alt="">
          </a>  
        </div></div><div class="owl-item" style="width: 193px;"><div class="item">
          <a href="#" class="image">
            <img src="/cdn/assets/images/brands/brand3.png" alt="">
          </a>  
        </div></div><div class="owl-item" style="width: 193px;"><div class="item">
          <a href="#" class="image">
            <img src="/cdn/assets/images/brands/brand4.png" alt="">
          </a>  
        </div></div><div class="owl-item" style="width: 193px;"><div class="item">
          <a href="#" class="image">
            <img src="/cdn/assets/images/brands/brand5.png" alt="">
          </a>  
        </div></div><div class="owl-item" style="width: 193px;"><div class="item">
          <a href="#" class="image">
            <img src="/cdn/assets/images/brands/brand6.png" alt="">
          </a>  
        </div></div><div class="owl-item" style="width: 193px;"><div class="item">
          <a href="#" class="image">
            <img src="/cdn/assets/images/brands/brand2.png" alt="">
          </a>  
        </div></div><div class="owl-item" style="width: 193px;"><div class="item">
          <a href="#" class="image">
            <img src="/cdn/assets/images/brands/brand4.png" alt="">
          </a>  
        </div></div><div class="owl-item" style="width: 193px;"><div class="item">
          <a href="#" class="image">
            <img src="/cdn/assets/images/brands/brand1.png" alt="">
          </a>  
        </div></div><div class="owl-item" style="width: 193px;"><div class="item">
          <a href="#" class="image">
            <img src="/cdn/assets/images/brands/brand5.png" alt="">
          </a>  
        </div></div></div></div><!--/.item-->

        <!--/.item-->

        <!--/.item-->

        <!--/.item-->

        <!--/.item-->

        <!--/.item-->

        <!--/.item-->

        <!--/.item-->

        <!--/.item-->

        <!--/.item-->
        <div class="owl-controls clickable"><div class="owl-buttons"><div class="owl-prev"></div><div class="owl-next"></div></div></div></div><!-- /.owl-carousel #logo-slider -->
    </div><!-- /.logo-slider-inner -->
  
</div><!-- /.logo-slider -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->  </div><!-- /.container -->
</div>

<!-- /.body-content --> 
{include file="emboga/footer.tpl"}