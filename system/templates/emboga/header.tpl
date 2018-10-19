<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Meta -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="keywords" content="">
  <meta name="robots" content="all">

  <title>{$title}</title>
  <link rel="icon" href="/favicon.ico" type="image/x-icon" />

    <!-- Bootstrap Core CSS -->
  <link rel="stylesheet" href="/cdn/assets/css/bootstrap.min.css">
    
    <!-- Customizable CSS -->
  <link rel="stylesheet" href="/cdn/assets/css/main.css">
  <link rel="stylesheet" href="/cdn/assets/css/blue.css">
  <link rel="stylesheet" href="/cdn/assets/css/owl.carousel.css">
  <link rel="stylesheet" href="/cdn/assets/css/owl.transitions.css">
  <link rel="stylesheet" href="/cdn/assets/css/animate.min.css">
  <link rel="stylesheet" href="/cdn/assets/css/rateit.css">
  <link rel="stylesheet" href="/cdn/assets/css/bootstrap-select.min.css">
  <link href="/cdn/assets/css/lightbox.css" rel="stylesheet">
    

    
  <!-- Icons/Glyphs -->
  <link rel="stylesheet" href="/cdn/assets/css/font-awesome.css">
  <link rel="stylesheet" href="/cdn/assets/css/simple-line-icons.css">

  <!-- Fonts --> 
  <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
</head>
<body class="cnt-home">
<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1"> 
  
  <!-- ============================================== TOP MENU ============================================== -->
  <div class="top-bar animate-dropdown">
    <div class="container">
      <div class="header-top-inner">
        <div class="cnt-account">
          <ul class="list-unstyled">
            <li><a href="mailto:{$app.email}" target="_blank"><i class="icon fa fa-envelope"></i> {$app.email}</a></li>
            <li><a href="#"><i class="icon fa fa-whatsapp"></i> {$app.phone}</a></li>
            <li><a href="/access" target="_blank"><i class="icon fa fa-tachometer"></i> Administration</a></li>
            <li><a href="/cart"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
            {*<li><a href="#"><i class="icon fa fa-heart"></i>Wishlist</a></li>
            <li><a href="#"><i class="icon fa fa-check"></i>Checkout</a></li>
            <li><a href="#"><i class="icon fa fa-lock"></i>Login</a></li>*}
          </ul>
        </div>
        <!-- /.cnt-account -->
        
        <div class="cnt-block">
          {*<ul class="list-unstyled list-inline">
            <li class="dropdown dropdown-small"> <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown"><span class="value">USD </span><b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">USD</a></li>
                <li><a href="#">INR</a></li>
                <li><a href="#">GBP</a></li>
              </ul>
            </li>
            <li class="dropdown dropdown-small"> <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown"><span class="value">English </span><b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">English</a></li>
                <li><a href="#">French</a></li>
                <li><a href="#">German</a></li>
              </ul>
            </li>
          </ul>*}
          <!-- /.list-unstyled --> 
        </div>
        <!-- /.cnt-cart -->
        <div class="clearfix"></div>
      </div>
      <!-- /.header-top-inner --> 
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.header-top --> 
  
  <!-- ============================================== TOP MENU : END ============================================== -->
  <div class="main-header" style="background: #fff;">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3 logo-holder"> 
          <!-- ============================================================= LOGO ============================================================= -->
          <div class="logo"> <a href="/"> <img src="/cdn/assets/images/logo.png" alt="logo" style="margin-top: -26px;"> </a> </div>
          <!-- /.logo --> 
          <!-- ============================================================= LOGO : END ============================================================= --> 
        </div>
        <!-- /.logo-holder -->
        
        <div class="col-xs-12 col-sm-12 col-md-7 top-search-holder"> 
          <!-- /.contact-row --> 
          <!-- ============================================================= SEARCH AREA ============================================================= -->
          {*<div class="search-area">
            <form>
              <div class="control-group">
                <ul class="categories-filter animate-dropdown">
                  <li class="dropdown"> <a class="dropdown-toggle"  data-toggle="dropdown" href="category.html">Categories <b class="caret"></b></a>
                    <ul class="dropdown-menu" role="menu" >
                      <li class="menu-header">Computer</li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">- Clothing</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">- Electronics</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">- Shoes</a></li>
                      <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">- Watches</a></li>
                    </ul>
                  </li>
                </ul>
                <input class="search-field" placeholder="Search here..." />
                <a class="search-button" href="#" ></a> </div>
            </form>
          </div>*}
          <!-- /.search-area --> 
          <!-- ============================================================= SEARCH AREA : END ============================================================= --> </div>
        <!-- /.top-search-holder -->
        
         <div class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row hidden-xs"> 
            <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
            
            <div class="dropdown dropdown-cart" style="background: #3ab54a;padding: 3px;padding-right: 18px;border-radius: 25px;width: 300px;"> 
              <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
                <div class="items-cart-inner">
                  <div class="basket"></div>
                  <div class="basket-item-count"><span class="count">{$pCounter|default: 0}</span></div>
                  {if $pCounter > 0}
                    <div class="total-price-basket"> 
                      <span class="lbl"></span> 
                      <span class="total-price"> 
                        <span class="sign">KShs.</span>
                        <span class="value">{$totalAmount|number_format:2:".":","}</span> 
                      </span> 
                    </div>
                  {else}
                    <div class="" style="float: right;margin: 10px;padding: 0px;margin-top: 20px;"> 
                      <p>Your cart is empty.</p>
                    </div>  
                  {/if}
                </div>
              </a>

              <ul class="dropdown-menu">
                {assign var=total value=0}
                {foreach $cart as $c}
                  <li>
                    <div class="cart-item product-summary">
                      <div class="row">
                        <div class="col-xs-4">
                          <div class="image"> <a href=""><img src="/products/{$c.pimage}" alt="{$c.pname}"></a> </div>
                        </div>
                        <div class="col-xs-7">
                          <h3 class="name"><a href="#">{$c.pname}</a></h3>
                          <div class="price">{$c.pprice} x {$c.pqty} = </div>
                          {assign var = t value = $c.pprice * $c.pqty}
                          <div class="price">{$t|number_format:2:".":","}/-</div>
                          {assign var = total value =  $total + ($c.pprice * $c.pqty)}
                        </div>
                        {*<div class="col-xs-1 action"> <a href="#"><i class="fa fa-trash"></i></a> </div>*}
                      </div>
                    </div>
                    <!-- /.cart-item -->
                    <div class="clearfix"></div>    
                    <hr>              
                  </li>
                {/foreach}
                <div class="clearfix cart-total">
                  <div class="pull-right"> <span class="text">Total :</span><span class='price'>KShs. {$total|number_format:2:".":","}</span> </div>
                  <div class="clearfix"></div>
                  <a href="/cart/" class="btn btn-upper btn-primary btn-block m-t-20">Cart</a>
                  <a href="/cart/checkout" class="btn btn-upper btn-primary btn-block m-t-20">Checkout</a> 
                </div>
                <!-- /.cart-total--> 
              </ul>
              <!-- /.dropdown-menu--> 
            </div>
            <!-- /.dropdown-cart --> 
            
            <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= --> 
        </div>
        <!-- /.top-cart-row --> 
      </div>
      <!-- /.row --> 
      
    </div>
    <!-- /.container --> 
    
  </div>
  <!-- /.main-header --> 
  
  <!-- ============================================== NAVBAR ============================================== -->
  <div class="header-nav animate-dropdown">
    <div class="container">
      <div class="yamm navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <div class="nav-bg-class">
          <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
            <div class="nav-outer">
              {include file="shared/navbar.tpl"}
              <!-- /.navbar-nav -->
              <div class="clearfix"></div>
            </div>
            <!-- /.nav-outer --> 
          </div>
          <!-- /.navbar-collapse --> 
          
        </div>
        <!-- /.nav-bg-class --> 
      </div>
      <!-- /.navbar-default --> 
    </div>
    <!-- /.container-class --> 
    
  </div>
  <!-- /.header-nav --> 
  <!-- ============================================== NAVBAR : END ============================================== --> 
  
</header>