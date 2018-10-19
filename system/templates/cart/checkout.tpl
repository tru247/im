{include file="emboga/header.tpl"}
<div class="breadcrumb" save_image_to_download="true">
  <div class="container">
    <div class="breadcrumb-inner">
      <ul class="list-inline list-unstyled">
        <li><a href="/">Home</a></li>
        <li class="active">Checkout</li>
      </ul>
    </div><!-- /.breadcrumb-inner -->
  </div><!-- /.container -->
</div>
<!--  /.breadcrumb  -->

<div class="body-content" save_image_to_download="true">
	<div class="container">
		<div class="checkout-box ">
			<div class="row">
				<div class="col-md-12">
					<div class="panel-group checkout-steps" id="accordion">
						<form id="place-order-form" method="POST" enctype="multipart/form-data" role="form">
							<div class="row">
								<!-- guest-login -->			
								<div class="col-md-6 col-sm-6 guest-login">
									<h2>1. Checkout Option</h2><hr>
									<h4 class="checkout-subtitle">Checkout as Guest</h4>
									<p class="text title-tag-line">You don't need to register with us. Shop at your own convenience:</p>

									<!-- radio-form  -->
								    <div class="radio radio-checkout-unicase"> 
										<div class="form-group">
										    <label class="info-title" for="name">Name <span>*</span></label>
										    <input style="border: 1px solid #3ab54a;" class="form-control unicase-form-control text-input" id="name" name="name" placeholder="" type="text" required>
									  	</div>
									  	<div class="form-group">
									    	<label class="info-title" for="email">Email <span>*</span></label>
									    	<input style="border: 1px solid #3ab54a;" class="form-control unicase-form-control text-input" id="email" name="email" placeholder="" type="text" required>
									  	</div>
									  	<div class="form-group">
									    	<label class="info-title" for="phone">Phone <span></span></label>
									    	<input style="border: 1px solid #3ab54a;" class="form-control unicase-form-control text-input" id="phone" name="phone" placeholder="" type="text">
									  	</div>
								    </div> 
								</div>
								<!-- guest-login -->
							</div>	

				      		<div class="row">
				      			<!-- guest-login -->			
								<div class="col-md-12 col-sm-12 guest-login">
									<h2>2. Shipping Address</h2><hr>
									<h4 class="checkout-subtitle">Fill in your shipping details below</h4>
									{*<p class="text title-tag-line">Register with us for future convenience:</p>*}

									<!-- radio-form  -->
								    <div class="radio radio-checkout-unicase"> 
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
												    <label class="info-title" for="name">Shipping Address <span>*</span></label>
												    <input style="border: 1px solid #3ab54a;" class="form-control unicase-form-control text-input" id="s_address" placeholder="" name="ship_addr" type="text" required>
											  	</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
												    <label class="info-title" for="name">Shipping City/Town <span>*</span></label>
												    <input style="border: 1px solid #3ab54a;" class="form-control unicase-form-control text-input" id="s_town" placeholder="" name="ship_town" type="text" required>
											  	</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
												    <label class="info-title" for="name">Shipping County <span>*</span></label>
												    <select style="border: 1px solid #3ab54a;" class="form-control unicase-form-control text-input" id="s_county" placeholder="" name="ship_county" required>
												    	{foreach $counties as $c}
												    		<option value="$c.code">{$c.title}</option>
												    	{/foreach}
												    </select>
											  	</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
												    <label class="info-title" for="name">Shipping Postal Code <span>*</span></label>
												    <input style="border: 1px solid #3ab54a;" class="form-control unicase-form-control text-input" id="s_postal" placeholder="" name="ship_code" type="text" required>
											  	</div>
											</div>
										</div>
								    </div> 
								</div>
								<!-- guest-login -->
				      		</div>

				      		<div class="row">			
								<div class="col-md-12 col-sm-12 guest-login">
									<h2>3. Shipping Method</h2><hr>
									<h4 class="checkout-subtitle">Choose your preferred shipping option</h4>
									<div class="radio radio-checkout-unicase" style="margin-left: 10%;"> 
								        <input id="e-shipping" type="radio" name="shipping" value="e-shipping" checked>  
								        <label class="radio-button guest-check" for="e-shipping">eMboga Couriers</label> 
								        {if !empty($ship)}
								        	{foreach $ship as $s}
										        <br>
										        <input id="register-{$s.id}" type="radio" name="shipping" value="{$s.name}">
										        <label class="radio-button" for="register-{$s.id}">{$s.title}</label>  
									        {/foreach}
								        {/if}
								        <br>
								    </div>
								</div> 
					    	</div>
							
							<div class="row">			
								<div class="col-md-12 col-sm-12 guest-login">
									<h2>4. Payment Method</h2><hr>
									<h4 class="checkout-subtitle">Choose your preferred payment method</h4>
									<div class="radio radio-checkout-unicase" style="margin-left: 10%;">  
								        <input id="cod" type="radio" name="payment" value="cod" checked>  
								        <label class="radio-button guest-check" for="cod">Cash On Delivery</label>  
								        <br>
								        {if !empty($pays)}
									        {foreach $pays as $p}
										        <input id="register-{$p.id}" type="radio" name="payment" value="{$p.name}">  
										        <label class="radio-button" for="register-{$p.id}">{$p.title}</label>  
									        	<br>
									        {/foreach}
								        {/if}
								        <br>
								    </div>
								</div> 
					    	</div>	

					    	<div class="row">
								<div class="col-md-12 col-sm-12 guest-login">
									<h2>5. Order Preview</h2><hr>
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
								                      
								                    </td>
								                  </tr>
								              </tbody><!-- /tbody -->
								            </table><!-- /table -->
								          </div>
								        </div>
								        <!-- /.cart-shopping-total -->      
								    </div><!-- /.shopping-cart -->
							    </div>
					    	</div>						    	

					        <div class="col-md-8 col-sm-12">
								<h4 class="checkout-subtitle">
									<input id="terms" type="checkbox" name="terms" required>
									{*Create a modal for these terms and conditions*}
									By placing order on this site, you accept our <a style="color: #5cb85c !important;" href="#">Terms &amp; Conditions</a>
								</h4>
								{*<div class="radio radio-checkout-unicase" style="margin-left: 10%;"> 
							         
							    </div>*}
					        </div>
					        <div class="col-md-4 col-sm-12">
					        	<button type="submit" class="btn-upper btn btn-success checkout-page-button">
					        		<i class="fa fa-dollar"></i> PLACE YOUR ORDER NOW <i class="fa fa-next"></i>
					        	</button>
					        </div>
					  	</form>
					  	
					</div><!-- /.checkout-steps -->
				</div>
				{*<div class="col-md-4">
					<!-- checkout-progress-sidebar -->
					<div class="checkout-progress-sidebar ">
						<div class="panel-group">
							<div class="panel panel-default">
								<div class="panel-heading">
							    	<h4 class="unicase-checkout-title">Your Checkout Progress</h4>
							    </div>
							    <div class="">
									<ul class="nav nav-checkout-progress list-unstyled">
										<li><a href="#">Billing Address</a></li>
										<li><a href="#">Shipping Address</a></li>
										<li><a href="#">Shipping Method</a></li>
										<li><a href="#">Payment Method</a></li>
									</ul>		
								</div>
							</div>
						</div>
					</div> 
					<!-- checkout-progress-sidebar -->				
				</div>*}
			</div><!-- /.row -->
		</div><!-- /.checkout-box -->
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
		<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
	</div>
	<!-- /.container -->
</div>

{include file="emboga/footer.tpl"}