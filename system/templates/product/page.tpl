{include file="shared/site_header.tpl"}

  <!--Main index : Begin-->
  <main class="main index">
    <section class="header-page" style="padding: 39px 0px;">
      <div class="container">
        <div class="row">
          <div class="col-sm-3 hidden-xs">
            <h1 class="mh-title">
              <strong>{$p.name|capitalize}</strong>
            </h1>
          </div>
          <div class="breadcrumb-w col-sm-9"> 
            <span>You are here:</span>
            <ul class="breadcrumb">
              <li>
                <a href="/">Home</a>
              </li>
              <li>
                <span>{$p.name|capitalize}</span>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section class="category-w parten-bg">
      <div class="container">
        <div class="row">
          <!--Category product grid : Begin -->
          <section class="category grid col-sm-12 col-xs-12">
            <div class="container">
              <div style="margin-top: -84px;" class="card">
                <div class="container-fliud">
                  <div class="wrapper row">
                    <div class="preview col-md-6">
                      <div class="preview-pic tab-content">
                        <div class="tab-pane active" id="pic-1"><img src="/products/{$p.image}" /></div>
                        <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
                        <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
                        <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
                        <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>
                      </div>
                      {*<ul class="preview-thumbnail nav nav-tabs">
                        <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
                        <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
                        <li><a data-target="#pic-3" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
                        <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
                        <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
                      </ul>*}
                    </div>
                    <div class="details col-md-6">
                      <h3 class="product-title">{$p.name}</h3>
                      <p class="product-description">
                        {$p.summary}
                      </p>
                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li class="active"><a href="#descr" role="tab" data-toggle="tab">Description</a></li>
                        <li><a href="#details" role="tab" data-toggle="tab">Details</a></li>
                        <li><a href="#data_info" role="tab" data-toggle="tab">Data Information</a></li>
                        <li><a href="#prod_times" role="tab" data-toggle="tab">Production Times</a></li>
                      </ul>

                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div class="tab-pane fade in active" id="descr">{$p.details}</div>
                        <div class="tab-pane" id="details">{$p.description}</div>
                        <div class="tab-pane" id="data_info">{$p.data_info}</div>
                        <div class="tab-pane" id="prod_times">{$p.production_times}</div>
                      </div>
                      <!-- 
                      <h4 class="price">current price: <span>{$app.currency} {$prod.price|number_format:2:".":","}</span></h4>
                      <div class="action">
                        <button class="add-to-cart btn btn-default" type="button">add to cart</button>
                        <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
                      </div> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- Category product grid : End -->
        </div>
        <br>
        <div class="row">
          Cart Calculation to be placed here
        </div>
      </div>
    </section>
  </main> 

{include file="shared/site_footer.tpl"}