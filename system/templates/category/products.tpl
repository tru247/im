{include file="shared/site_header.tpl"}
<!--Header: End--> 
  <!--Main category : Begin-->
  <main id="main category">
    <section class="header-page">
      <div class="container">
        <div class="row">
          <div class="col-sm-3 hidden-xs">
            <h1 class="mh-title">{$prof.title|upper}</h1>
          </div>
          <div class="breadcrumb-w col-sm-9"> 
            <span>You are here:</span>
            <ul class="breadcrumb">
              <li>
                <a href="/">Home</a>
              </li>
              <li>
                <span>{$prof.title}</span>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section class="category-w parten-bg">
      <div class="container">
        <div class="row">
          <aside id="sidebar_cate" class="col-sm-3 hidden-xs">
            <h3 class="sidebar-title">Category</h3>
            <ul id="cate_list" class="cate_list">
              {foreach $cats as $c}                
                <li class="level0">
                  <a href="/category/info/{$c.url}" title="{$c.title}" {if $active eq $c.name} class="side-active" {/if}>
                    {$c.title|Capitalize}
                    <!-- <span class="count-item">(81)</span> -->
                  </a>
                </li>
              {/foreach}
            </ul>
            <div class="category-left-banner">
              <a href="#" title="category left banner">
                <img src="/cdn/imran/images/banner/category/left-banner.jpg" alt="Left banner">
              </a>
            </div>
          </aside>

          <!--Category product grid : Begin -->
          <section class="category grid col-sm-9 col-xs-12">
            <div class="row">
              <div class="col-xs-12 category-image visible-md visible-lg">
                <a href="#" title="{$prof.title}">
                  <img src="{$prof.image}" alt="{$prof.title}">
                </a>
              </div>
              <div class="col-xs-12 category-image visible-sm">
                <a href="#" title="{$prof.title}">
                  <img src="{$prof.image}" alt="{$prof.title}">
                </a>
              </div>
              <div class="col-xs-12 category-image visible-xs">
                <a href="#" title="{$prof.title}">
                  <img src="{$prof.image}" alt="{$prof.title}">
                </a>
              </div>
            </div>
            <div class="row products-grid category-product">
              <ul>
                {foreach $prods as $p}
                  <li class="pro-item col-md-4 col-sm-6 col-xs-12">
                    <div class="product-image-action">
                      <img src="/products/{$p.image}" alt="{$p.name}">
                      <div class="action">
                        <button type="button" data-toggle="tooltip" data-placement="top" title="Add to cart" class="add-to-cart gbtn" title="Add to cart">
                          <i class="fa fa-shopping-cart"></i> 
                        </button>
                        {*<a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist" class="add-to-wishlist">
                          <i class="fa fa-heart"></i>
                        </a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="compare" class="add-to-compare">
                          <i class="fa fa-refresh"></i> 
                        </a> 
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Quickview" class="quick-view">
                          <i class="fa fa-eye"></i>
                        </a>*}
                      </div>
                    </div>
                    <div class="product-info">
                      <a href="/product/info/{$p.url}" title="product" class="product-name">{$p.name|capitalize}</a>
                      <div class="price-box">
                        <span class="normal-price">{$app.currency}. {$p.price|number_format:2:".":","} </span>
                      </div>                      
                    </div>
                  </li>
                {foreachelse}
                {/foreach}
              </ul>     
            </div>
            {*<div class="bottom-toolbar row">
              <div class="col-md-12 pager">
                <ul>
                  <li class="previous page-change hidden">
                    <a href="#"><i class="fa fa-angle-left"></i></a>
                  </li>
                  <li class="current">
                    <span>1</span>
                  </li>
                  <li>
                    <a href="#" title="page 2">2</a>
                  </li>
                  <li>
                    <a href="#" title="page 3">3</a>
                  </li>
                  <li>
                    <a href="#" title="page 4">4</a>
                  </li>
                  <li>
                    <a href="#" title="page 5">5</a>
                  </li>
                  <li class="next page-change">
                    <a href="#"><i class="fa fa-angle-right"></i></a>
                  </li>
                </ul>
              </div>
            </div>*}
          </section><!-- Category product grid : End -->
        </div>
        <br>
        <div class="row">
          <div class="col-md-12 visible-md visible-lg cate-bottom-banner">
            <a href="#" title="category bottom banner">
              <img src="{$c.promo}" alt="{$c.title}">
            </a>
          </div>
          <div class="col-sm-12 visible-sm cate-bottom-banner">
            <a href="#" title="category bottom banner">
              <img src="{$c.promo}" alt="{$c.title}">
            </a>
          </div>
          <div class="col-xs-12 visible-xs cate-bottom-banner">
            <a href="#" title="category bottom banner">
              <img src="{$c.promo}" alt="{$c.title}">
            </a>
          </div>
        </div>
      </div>
    </section>
  </main><!-- Main Category: End -->
  <!--Footer : Begin-->

{include file="shared/site_footer.tpl"}