{include file="shared/admin_header.tpl"}

<body>
<div class="wrapper theme-1-active pimary-color-red">

    <!-- Top Menu Items -->
    {include file="shared/topMenu.tpl"}
    <!-- /Top Menu Items -->

    <!-- Left Sidebar Menu -->
    {include file="shared/leftMenu.tpl"}
    <!-- /Left Sidebar Menu -->

    <!-- Right Sidebar Menu -->
    {include file="shared/rightMenu.tpl"}
    <!-- /Right Sidebar Menu -->

    <!-- Right Setting Menu -->
    {include file="shared/rightSettingMenu.tpl"}
    <!-- /Right Setting Menu -->

    <!-- Right Sidebar Backdrop -->
    <div class="right-sidebar-backdrop"></div>
    <!-- /Right Sidebar Backdrop -->

    <!-- Main Content -->
    <div class="page-wrapper">
        <div class="container-fluid">
            <!-- Title -->
            <div class="row heading-bg">
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <h5 style="" class="txt-dark"><i class="fa fa-cogs"></i><strong style="color: #3ab54a;"> {$app.name}</strong> {$title}</h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="/dashboard">Dashboard</a></li>
                        <li class="active"><span>{$title}</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->
            </div>
            <!-- /Title -->
            <hr>

            <!-- Row -->
            <div class="row">
                <div class="col-md-3">
                    <ul class="nav nav-pills nav-stacked admin-menu" >
                        <li class="active"><a href="" data-target-id="about-us"><i class="fa fa-1x fa-info-circle"></i> About us</a></li>
                        <li><a href="" data-target-id="contact-info"><i class="fa fa-1x fa-phone"></i> Contact Information</a></li>
                        <li><a href="" data-target-id="shipping-info"><i class="fa fa-bell"></i> Shipping Details</a></li>
                        <li><a href="" data-target-id="payment-info"><i class="fa fa-money"></i> Payment Details</a></li>
                        {*<li><a href="" data-target-id="our-services"><i class="fa fa-cogs"></i> Our Services</a></li>*}
                        <li><a href="" data-target-id="logout"><i class="fa fa-1x fa-sign-out"></i> Logout</a></li>
                    </ul>
                </div>

                <div class="col-md-9  admin-content" id="about-us">
                    <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-1x fa-edit"></i> Shop Name</h3>
                        </div>
                        <div class="panel-body">
                           <form class="ng-pristine ng-valid" id="agency-name-form" method="post" action="/settings/update-name" enctype="multipart/form-data" role="form">
                                <div class="row">
                                  <div class="col-sm-12">
                                      {if !empty($app.name)}
                                        <p><strong>{$app.name}</strong></p>
                                      {/if}
                                      <label>Type in your preferred agency name here...</label>
                                      <input type="text" name="agencyName" class="form-control" value="{$app.name}">
                                  </div> 
                                </div>
                                <br>
                                <div class="col-sm-12">
                                  <div class="btn-div">
                                      <div class="status"></div>
                                      <button type="submit"  class="btn btn-success pull-right"><i class="fa fa-cloud-upload"></i> Update</button>
                                  </div>
                                </div>
                            </form> 
                        </div>
                    </div>
                    <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-1x fa-info-circle"></i> About Us</h3>
    
                        </div>
                        <div class="panel-body">
                           <form class="ng-pristine ng-valid" role="form" id="about-agency-form" method="post" action="/settings/update-about-agency" enctype="multipart/form-data" role="form">
                                <div class="row">
                                  <div class="col-sm-12">
                                    <textarea class="form-control" name="aboutUs">
                                        {$app.introduction}
                                    </textarea>
                                  </div> 
                                </div>
                                <br>
                                <div class="col-sm-12">
                                  <div class="btn-div">
                                      <div id="about-us-status"></div>
                                      <button type="submit"  class="btn btn-success pull-right"><i class="fa fa-cloud-upload"></i> Update</button>
                                  </div>
                                </div>
                            </form> 
                        </div>
                    </div>
                    
                    <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-1x fa-info-circle"></i> Our Currency</h3>
                        </div>
                        <div class="panel-body">
                           <form class="ng-pristine ng-valid" role="form" id="change-currency-form" method="post" action="/settings/update-currency" enctype="multipart/form-data" role="form">
                                <div class="row">
                                  <div class="col-sm-4">
                                    <label><strong>Currency: </strong> {$app.currency}</label>
                                  </div>
                                  <div class="col-sm-8">
                                    <select name="currency" class="form-control">
                                        <option value="{$app.currency}" selected="selected">{$app.currency}</option>
                                        <option value="EUR">Euro</option>
                                        <option value="UGX">Ugandan Shillings</option>
                                        <option value="KES">Kenyan Shillings</option>
                                        <option value="TZS">Tanzanian Shillings</option>
                                        <option value="GBP">United Kingdom Pounds</option>
                                        <option value="DZD">Algeria Dinars</option>
                                        <option value="ARP">Argentina Pesos</option>
                                        <option value="AUD">Australia Dollars</option>
                                        <option value="ATS">Austria Schillings</option>
                                        <option value="BSD">Bahamas Dollars</option>
                                        <option value="BBD">Barbados Dollars</option>
                                        <option value="BEF">Belgium Francs</option>
                                        <option value="BMD">Bermuda Dollars</option>
                                        <option value="BRR">Brazil Real</option>
                                        <option value="BGL">Bulgaria Lev</option>
                                        <option value="CAD">Canada Dollars</option>
                                        <option value="CLP">Chile Pesos</option>
                                        <option value="CNY">China Yuan Renmimbi</option>
                                        <option value="CYP">Cyprus Pounds</option>
                                        <option value="CSK">Czech Republic Koruna</option>
                                        <option value="DKK">Denmark Kroner</option>
                                        <option value="NLG">Dutch Guilders</option>
                                        <option value="XCD">Eastern Caribbean Dollars</option>
                                        <option value="EGP">Egypt Pounds</option>
                                        <option value="FJD">Fiji Dollars</option>
                                        <option value="FIM">Finland Markka</option>
                                        <option value="FRF">France Francs</option>
                                        <option value="DEM">Germany Deutsche Marks</option>
                                        <option value="XAU">Gold Ounces</option>
                                        <option value="GRD">Greece Drachmas</option>
                                        <option value="HKD">Hong Kong Dollars</option>
                                        <option value="HUF">Hungary Forint</option>
                                        <option value="ISK">Iceland Krona</option>
                                        <option value="INR">India Rupees</option>
                                        <option value="IDR">Indonesia Rupiah</option>
                                        <option value="IEP">Ireland Punt</option>
                                        <option value="ILS">Israel New Shekels</option>
                                        <option value="ITL">Italy Lira</option>
                                        <option value="JMD">Jamaica Dollars</option>
                                        <option value="JPY">Japan Yen</option>
                                        <option value="JOD">Jordan Dinar</option>
                                        <option value="KRW">Korea (South) Won</option>
                                        <option value="LBP">Lebanon Pounds</option>
                                        <option value="LUF">Luxembourg Francs</option>
                                        <option value="MYR">Malaysia Ringgit</option>
                                        <option value="MXP">Mexico Pesos</option>
                                        <option value="NLG">Netherlands Guilders</option>
                                        <option value="NZD">New Zealand Dollars</option>
                                        <option value="NOK">Norway Kroner</option>
                                        <option value="PKR">Pakistan Rupees</option>
                                        <option value="XPD">Palladium Ounces</option>
                                        <option value="PHP">Philippines Pesos</option>
                                        <option value="XPT">Platinum Ounces</option>
                                        <option value="PLZ">Poland Zloty</option>
                                        <option value="PTE">Portugal Escudo</option>
                                        <option value="ROL">Romania Leu</option>
                                        <option value="RUR">Russia Rubles</option>
                                        <option value="SAR">Saudi Arabia Riyal</option>
                                        <option value="XAG">Silver Ounces</option>
                                        <option value="SGD">Singapore Dollars</option>
                                        <option value="SKK">Slovakia Koruna</option>
                                        <option value="ZAR">South Africa Rand</option>
                                        <option value="KRW">South Korea Won</option>
                                        <option value="ESP">Spain Pesetas</option>
                                        <option value="XDR">Special Drawing Right (IMF)</option>
                                        <option value="SDD">Sudan Dinar</option>
                                        <option value="SEK">Sweden Krona</option>
                                        <option value="CHF">Switzerland Francs</option>
                                        <option value="TWD">Taiwan Dollars</option>
                                        <option value="THB">Thailand Baht</option>
                                        <option value="TTD">Trinidad and Tobago Dollars</option>
                                        <option value="TRL">Turkey Lira</option>
                                        <option value="VEB">Venezuela Bolivar</option>
                                        <option value="ZMK">Zambia Kwacha</option>
                                        <option value="EUR">Euro</option>
                                        <option value="XCD">Eastern Caribbean Dollars</option>
                                        <option value="XDR">Special Drawing Right (IMF)</option>
                                        <option value="XAG">Silver Ounces</option>
                                        <option value="XAU">Gold Ounces</option>
                                        <option value="XPD">Palladium Ounces</option>
                                        <option value="XPT">Platinum Ounces</option>
                                    </select>
                                  </div> 
                                </div>
                                <br>
                                <div class="col-sm-12">
                                  <div class="btn-div">
                                        <div id="currency-status" style="display: none;"></div>
                                        <button type="submit" class="btn btn-success pull-right">
                                            <i class="fa fa-cloud-upload"></i> Update
                                        </button>
                                  </div>
                                </div>
                            </form> 
                        </div>
                    </div>

                    {*<div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            185X95
                            <h3 class="panel-title"><i class="fa fa-1x fa-picture-o"></i> Logo</h3>
                        </div>
                        <div class="panel-body">
                            <form class="ng-pristine ng-valid" role="form"> 
                                <div class="row"> 
                                    <div class="col-xs-12 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">  
                                        <!-- image-preview-filename input [CUT FROM HERE]-->
                                        <div class="input-group image-preview">
                                            <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                                            <span class="input-group-btn">
                                                <!-- image-preview-clear button -->
                                                <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                                                    <span class="glyphicon glyphicon-remove"></span> Clear
                                                </button>
                                                <!-- image-preview-input -->
                                                <div class="btn btn-default image-preview-input">
                                                    <span class="glyphicon glyphicon-folder-open"></span>
                                                    <span class="image-preview-input-title">Browse</span>
                                                    <input type="file" accept="image/png, image/jpeg, image/gif" name="logo"/> <!-- rename it -->
                                                </div>
                                            </span>
                                        </div><!-- /input-group image-preview [TO HERE]--> 
                                    </div>
                                </div>
                                <br>
                                <div class="col-sm-12">
                                  <div class="btn-div">
                                      <button type="submit"  class="btn btn-success pull-right"><i class="fa fa-cloud-upload"></i> Update</button>
                                  </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-1x fa-camera-retro"></i> Feature Image</h3>
                        </div>
                        <div class="panel-body">
                            <form class="ng-pristine ng-valid" role="form"> 
                                <div class="row"> 
                                    <div class="col-xs-12 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">  
                                        <!-- image-preview-filename input [CUT FROM HERE]-->
                                        <div class="input-group image-preview">
                                            <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                                            <span class="input-group-btn">
                                                <!-- image-preview-clear button -->
                                                <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                                                    <span class="glyphicon glyphicon-remove"></span> Clear
                                                </button>
                                                <!-- image-preview-input -->
                                                <div class="btn btn-default image-preview-input">
                                                    <span class="glyphicon glyphicon-folder-open"></span>
                                                    <span class="image-preview-input-title">Browse</span>
                                                    <input type="file" accept="image/png, image/jpeg, image/gif" name="featImage"/> <!-- rename it -->
                                                </div>
                                            </span>
                                        </div><!-- /input-group image-preview [TO HERE]--> 
                                    </div>
                                </div>
                                <br>
                                <div class="col-sm-12">
                                  <div class="btn-div">
                                    <a href="" class="btn btn-success pull-right">Update</a>
                                  </div>
                                </div>
                            </form>
                        </div>
                    </div>*}
                </div>

                <div class="col-md-9  admin-content" id="shipping-info">
                    <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bell"></i> Shipping Information</h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-wrap">
                                <!-- Small modal -->
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-plus"></i> New Shipping Method</button>
                                
                                <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                                  <div class="modal-dialog modal-sm" role="document">
                                    <div class="modal-content">
                                        <div class="" style="padding: 40px;">
                                            <form class="ng-pristine ng-valid" id="new-shipping-form" method="post" action="/settings/add-shipping" enctype="multipart/form-data" role="form">
                                                <div class="row">
                                                  <div class="col-sm-12">
                                                      <label><strong>Shipping Method name: </strong></label>
                                                      <input type="text" name="title" class="form-control">
                                                  </div> 
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <label><strong>Shipping Method description: </strong></label>
                                                        <textarea class="form-control" name="descr"></textarea>
                                                    </div> 
                                                </div>
                                                <br>
                                                <div class="col-sm-12">
                                                  <div class="btn-div">
                                                        <div class="shipping-status"></div>
                                                        <button type="submit" class="btn btn-success pull-right">
                                                            <i class="fa fa-cloud-upload"></i> Add
                                                        </button>
                                                  </div>
                                                </div>
                                                <hr>
                                            </form> 
                                        </div>
                                    </div>
                                  </div>
                                </div>
                                <hr>
                                <div class="table-responsive">
                                    <table id="sysadmins" class="table table-hover display  pb-30" >
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Title</th>
                                                <th>Description</th>
                                                <th>When Added</th>
                                                <!-- <th>Action</th> -->
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>#</th>
                                                <th>Title</th>
                                                <th>Description</th>
                                                <th>When Added</th>
                                                <!-- <th>Action</th> -->
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            {foreach $ship as $s}
                                                <tr>
                                                    <td><input type="checkbox" name="" id="ship-{$s.id}"></td>
                                                    <td>{$s.title}</td>
                                                    <td>{$s.description|truncate:45}</td>
                                                    <td>{$s.created_at}</td>
                                                    <!-- <td><a href='/settings/delete-shipping/{$s.id}' class="label label-danger">Delete</a></td> -->
                                                </tr>
                                            {/foreach}
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>    
                </div>

                <div class="col-md-9  admin-content" id="payment-info">
                    <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-money"></i> Payment Information</h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-wrap">
                                <!-- Small modal -->
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-plus"></i> New Payment Method</button>
                                
                                <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                                  <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="" style="padding: 40px;">
                                            <form class="ng-pristine ng-valid" id="new-payment-form" method="post" action="/settings/add-payment-method" enctype="multipart/form-data" role="form">
                                                <div class="row">
                                                  <div class="col-sm-12">
                                                      <label><strong>Payment method name: </strong></label>
                                                      <input type="text" name="title" class="form-control">
                                                  </div> 
                                                </div>
                                                <br>
                                                <div class="row">
                                                  <div class="col-sm-12">
                                                      <label><strong>Vendor no. (Paybill/Till no./PayPal Email): </strong></label>
                                                      <input type="text" name="vendor_no" class="form-control">
                                                  </div> 
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <label><strong>Payment method description</strong></label>
                                                        <textarea class="form-control" name="descr" id="descr"></textarea>
                                                    </div> 
                                                </div>
                                                <br>
                                                <div class="col-sm-12">
                                                  <div class="btn-div">
                                                        <div class="payment-status"></div>
                                                        <button type="submit" class="btn btn-success pull-right">
                                                            <i class="fa fa-cloud-upload"></i> Add
                                                        </button>
                                                  </div>
                                                </div>
                                                <hr>
                                            </form> 
                                        </div>
                                    </div>
                                  </div>
                                </div>
                                <hr>
                                <div class="table-responsive">
                                    <table id="payment_info" class="table table-hover display  pb-30" >
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Payment Method Name</th>
                                                <th>Vendor no. (MPESA PayBill/ Till no./ PayPal email)</th>
                                                <th>Since</th>
                                                <!-- <th>Action</th> -->
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>#</th>
                                                <th>Payment Method Name</th>
                                                <th>Vendor no. (MPESA PayBill/ Till no./ PayPal email)</th>
                                                <th>Since</th>
                                                <!-- <th>Action</th> -->
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            {foreach $pays as $p}
                                                <tr>
                                                    <td><input type="checkbox" name="" id="pay-{$p.id}"></td>
                                                    <td>{$p.title}</td>
                                                    <td>{$p.vendor_id}</td>
                                                    <td>{$p.created_at}</td>
                                                <!-- <td><a href='/settings/delete-payment/{$p.id}' class="label label-danger">Delete</a></td> -->
                                                </tr>
                                            {/foreach}
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>    
                </div>

                <div class="col-md-9  admin-content" id="our-services">
                    <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-cogs"></i> Our Services</h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-wrap">
                                <!-- Small modal -->
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-plus"></i> New Service</button>
                                
                                <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                                  <div class="modal-dialog modal-sm" role="document">
                                    <div class="modal-content">
                                        <div class="" style="padding: 40px;">
                                            <form class="ng-pristine ng-valid" id="new-service-form" method="post" action="/settings/add-service" enctype="multipart/form-data" role="form">
                                                <div class="row">
                                                  <div class="col-sm-12">
                                                      <label>Service title</label>
                                                      <input type="text" name="title" class="form-control">
                                                  </div> 
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <label>Service description</label>
                                                        <textarea class="form-control" name="descr"></textarea>
                                                    </div> 
                                                </div>
                                                <br>
                                                <div class="col-sm-12">
                                                  <div class="btn-div">
                                                      <div class="new-service-status"></div>
                                                      <button type="submit" class="btn btn-success pull-right"><i class="fa fa-cloud-upload"></i> Add</button>
                                                  </div>
                                                </div>
                                                <hr>
                                            </form> 
                                        </div>
                                    </div>
                                  </div>
                                </div>
                                <hr>
                                <div class="table-responsive">
                                    <table id="sysadmins" class="table table-hover display  pb-30" >
                                        <thead>
                                            <tr>
                                                <th>Title</th>
                                                <th>Description</th>
                                                <th>When Added</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Title</th>
                                                <th>Description</th>
                                                <th>When Added</th>
                                                <th>Action</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            {foreach $services as $service}
                                                <tr>
                                                    <td>{$service.title}</td>
                                                    <td>{$service.description|truncate:45}</td>
                                                    <td>{$service.created_at}</td>
                                                <td><a href='/settings/delete-service/{$service.id}' class="label label-danger">Delete</a></td>
                                                </tr>
                                            {/foreach}
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>    
                </div>
                
                <div class="col-md-9  admin-content" id="contact-info">
                    <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><label for="new_password" class="control-label panel-title"><i class="fa fa-1x fa-phone-square"></i> Contact Information</label></h3>
                        </div>
                        <div class="panel-body">
                           <form class="ng-pristine ng-valid" id="contact-info-form" method="post" action="/settings/update-contacts" enctype="multipart/form-data" role="form">
                                <h4>Basic Contact Information</h4>
                                <br>
                                <div class="row">
                                  <div class="col-sm-6">
                                      <label for="inputEmail3" class="control-label">Email:</label>
                                      <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-at"></i></span>
                                        <input type="email" class="form-control" name="email" value="{$app.email}">
                                      </div>
                                  </div>
                                  <div class="col-sm-6">
                                        <label for="inputPassword3" class="control-label">Phone Number:</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                            <input type="text" class="form-control" name="phone" value="{$app.phone}">
                                        </div>
                                  </div>  
                                </div>
                                <div class="row">
                                  <div class="col-sm-6">
                                    <label for="inputEmail3" class="control-label">Address:</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-street-view"></i></span>
                                            <input type="text" class="form-control" name="address" value="{$app.address}">
                                        </div>
                                  </div>
                                  <div class="col-sm-6">
                                        <label for="inputPassword3" class="control-label">City:</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                                            <input type="text" class="form-control" name="city" value="{$app.city}">
                                        </div>
                                  </div> 
                                </div>
                                
                                {*<br>
                                <h4>Social Media Information</h4><br>
                                <div class="row">
                                  <div class="col-sm-4">
                                        <label for="inputEmail3" class="control-label">Facebook:</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-facebook-official"></i></span>
                                            <input type="text" class="form-control" name="fb" value="{$app.fb}">
                                        </div>
                                  </div>
                                  <div class="col-sm-4">
                                        <label for="inputPassword3" class="control-label">Twitter</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-twitter-square"></i></span>
                                            <input type="text" class="form-control" name="tw" value="{$app.tw}">
                                        </div>
                                  </div> 
                                  <div class="col-sm-4">
                                        <label for="inputEmail3" class="control-label">Instagram:</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-instagram"></i></span>
                                            <input type="text" class="form-control" name="insta" value="{$app.insta}">
                                        </div>
                                  </div>
                                </div>
                                <div class="row">
                                  <div class="col-sm-4">
                                        <label for="inputPassword3" class="control-label">Google+</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-google-plus"></i></span>
                                            <input type="text" class="form-control" name="gp" value="{$app.gp}">
                                        </div>
                                  </div>  
                                  <div class="col-sm-4">
                                        <label for="inputEmail3" class="control-label">Pinterest:</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-pinterest"></i></span>
                                            <input type="text" class="form-control" name="pin" value="{$app.pin}">
                                        </div>
                                  </div>
                                  <div class="col-sm-4">
                                        <label for="inputPassword3" class="control-label">LinkedIn</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-linkedin-square"></i></span>
                                            <input type="text" class="form-control" name="ln" value="{$app.ln}">
                                        </div>
                                  </div> 
                                </div>*}
                                <br>
                                <div class="col-sm-12">
                                  <div class="btn-div">
                                      <div id="contact-info-status"></div>
                                      <button type="submit"  class="btn btn-success pull-right"><i class="fa fa-cloud-upload"></i> Update</button>
                                  </div>
                                </div>
                            </form> 
                        </div>
                    </div>
                </div>
                
                <div class="col-md-9  admin-content" id="logout">
                    <div class="panel panel-info" style="margin: 1em;">
                        <div class="panel-heading">
                            <h3 class="panel-title">Confirm Logout</h3>
                        </div>
                        <div class="panel-body">
                            Do you really want to logout ?  
                            <a  href="/logout" class="label label-danger">
                                <span >   Yes   </span>
                            </a>    
                            <a href="/dashboard" class="label label-success"> <span >  No   </span></a>
                        </div>
                        <form id="logout-form" action="#" method="POST" style="display: none;">
                        </form>
    
    
    
                    </div>
                </div>
            </div>
            <!-- /Row -->
        </div>

        <!-- Footer -->
        <footer class="footer container-fluid pl-30 pr-30">
            <div class="row">
                <div class="col-sm-12">
                    <p>{$copyright}</p>
                </div>
            </div>
        </footer>
        <!-- /Footer -->

    </div>
    <!-- /Main Content -->

</div>
<!-- /#wrapper -->

{include file="shared/admin_footer.tpl"}