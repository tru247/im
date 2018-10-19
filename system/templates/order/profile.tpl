{include file="shared/admin_header.tpl"}

<body>
<!-- Preloader 
<div class="preloader-it">
    <div class="la-anim-1"></div>
</div>
/Preloader -->
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
        <div class="container-fluid pt-25">

            <!-- Title -->
            <div class="row heading-bg">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h5 class="txt-dark">{$appName} Order Invoice</h4></h5>
                </div>
                <!-- Breadcrumb -->
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <ol class="breadcrumb">
                        <li><a href="/">Dashboard</a></li>
                        <li><a href="/order">Orders</a></li>
                        <li class="active"><span>Order Profile</span></li>
                    </ol>
                </div>
                <!-- /Breadcrumb -->
            </div>
            <!-- /Title -->
            <h4 style="text-decoration: underline;" class="text-center"><br />
            
            <div class="row">
				<div class="col-md-12">
					<div class="panel panel-default card-view">
						<div class="panel-heading">
							<div class="pull-left">
								<h6 class="panel-title txt-dark">Invoice</h6>
							</div>
							<div class="pull-right">
								<h6 class="txt-dark">Order # {$invoiceno}</h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="panel-wrapper collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-xs-6">
										<span class="txt-dark head-font inline-block capitalize-font mb-5">Billed to:</span>
										<address class="mb-15">
											<span class="address-head mb-5">{$c.company|default:' '}</span>
											{$c.fname} {$c.lname} <br>
											{$c.address} <br>
											{$c.town}, {$c.county} County <br>
											<abbr title="Phone">P:</abbr>{$c.phone}
										</address>
									</div>
									<div class="col-xs-6 text-right">
										<span class="txt-dark head-font inline-block capitalize-font mb-5">Shipped to:</span>
										<address class="mb-15">
											<span class="address-head mb-5">{$c.fname} {$c.lname}</span>
											{$c.address} <br>
											{$c.town}, {$c.county} County <br>
											<abbr title="Phone">P:</abbr>{$c.phone}
										</address>
									</div>
								</div>
								
								<div class="row">
									<div class="col-xs-6">
										<address>
											<span class="txt-dark head-font capitalize-font mb-5">Payment Method:</span>
											<br>
											{if $status eq 'new'}
											    Not Paid
											{elseif $status eq 'paid'}
											    {$paymethod}
											{/if}
											<br>
										</address>
									</div>
									<div class="col-xs-6 text-right">
										<address>
											<span class="txt-dark head-font capitalize-font mb-5">order date:</span><br>
											{$date}<br><br>
										</address>
									</div>
								</div>
								
								<div class="seprator-block"></div>
								
								<div class="invoice-bill-table">
									<div class="table-responsive">
										<table class="table table-hover">
											<thead>
												<tr>
													<th>Item</th>
													<th>Price</th>
													<th>Quantity</th>
													<th>Subtotals</th>
												</tr>
											</thead>
											<tbody>
											    {foreach $invoice as $i}
    												<tr>
    													<td>{$i.product}</td>
    													<td>KShs. {$i.pprice|number_format:2:".":","}</td>
    													<td>{$i.pqty}</td>
    													<td>KShs. {$i.subtotal|number_format:2:".":","}</td>
    												</tr>
											    {/foreach}
												<tr class="txt-dark">
													<td></td>
													<td></td>
													<td>Total</td>
													<td>KShs. {$total|number_format:2:".":","}</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="pull-right">
									    {if $status eq 'new'}
    										<button type="button" class="btn btn-danger mr-10" data-toggle="modal" data-target=".bs-example-modal-sm">
    											Process payment
    										</button>
									    {/if}
                                        
                                        <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                                          <div class="modal-dialog modal-sm" role="document">
                                            <div class="modal-content">
                                                <div style="padding: 30px !important;">
                                                    <h3 style="font-size: 18px;">Confirm Transaction details</h3><hr>
                                                    <form id="txn-conf-form" action="/order/confirm-pay/{$ourl}" method="POST" enctype="multipart/form-data">
                                                      <div class="form-group">
                                                        <label for="paymode">Payment Method</label>
                                                        <input type="text" class="form-control" id="paymode" name="paymode" placeholder="e.g MPESA or Airtel Money or COD" required>
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="txncode">Transaction code</label>
                                                        <input type="text" class="form-control" id="txncode" name="txncode" placeholder="eg. TXN001" required>
                                                        <input type="hidden" name="status" value="paid">
                                                      </div>
                                                      <button type="submit" class="btn btn-lg btn-success">CONFIRM PAYMENT</button>
                                                    </form>
                                                </div>
                                            </div>
                                          </div>
                                        </div>
                                        
										<button type="button" class="btn btn-success btn-outline btn-icon left-icon" onclick="javascript:window.print();"> 
											<i class="fa fa-print"></i><span> Print</span> 
										</button>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
        </div>

        <!-- Footer -->
        <footer class="footer container-fluid pl-30 pr-30">
            <div class="row">
                <div class="col-sm-12">
                    <p>
                        {$copyright}
                    </p>
                </div>
            </div>
        </footer>
        <!-- /Footer -->

    </div>
    <!-- /Main Content -->

</div>
<!-- /#wrapper -->

{include file="shared/admin_footer.tpl"}