{include file="shared/site_header.tpl"}
	<main class="main">
		<section class="header-page">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 hidden-xs">
						<h1 class="mh-title">Contact</h1>
					</div>
					<div class="breadcrumb-w col-sm-8">
						<span class="hidden-xs">You are here:</span>
						<ul class="breadcrumb">
							<li>
								<a href="/">Home</a>
							</li>
							<li>
								<span>Contact</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="pr-contact" class="pr-main">
			<div class="container"><h1 class="ct-header">Contact us</h1></div>
			<div class="contact-map">
			<!--<img src="images/maps.jpg" />-->
				<div class="mapouter">
					<div class="gmap_canvas">
						<iframe width="1500" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=Imranma%20Digital%20Printing%20Shop%2C%20Plot%201-2%20Nasser%20Road&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
					</div>
					<style>
						.mapouter{
							text-align:right;
							height:500px;
							width:1500px;
						}
						.gmap_canvas {
							overflow:hidden;
							background:none!important;
							height:500px;
							width:1500px;
						}
					</style>
				</div>		
			</div>
			
			<div class="container">
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="address">
						<i class="fa fa-home"></i>
						<p>
						<span>{$app.address},</span><br>
						<span>Uganda </span>
						</p>
					</div>

					<div class="phone">
						<i class="fa fa-phone"></i>
						<p>
						<span>{$app.phone}</span>						
						</p>
					</div>

					<div class="phone">
						<i class="fa fa-envelope"></i>
						<p>
						<span>{$app.email}</span>						
						</p>
					</div>
					
					<div class="website">
						<i class="fa fa-globe"></i>
						<p>
						<span>Website: <a href="https://www.imranma.com">imranma.com</a> </span>						
						</p>
					</div>
				</div>
				<form id="contact-form" class="form-validate form-horizontal" method="post" action="/printing/send" enctype="multipart/form-data">					
					<div class="col-md-3 col-sm-3 col-xs-12">
						<label for="cname">Name<span style="color: #ff0000;">*</span></label>
						<input id="cname" name="cname" class="name" type="text" placeholder="Enter your name *" required>
						<label for="cemail">Email<span style="color: #ff0000;">*</span></label>
						<input id="cemail" name="cemail" class="email" type="email" placeholder="Enter E-mail *" required>
						<label for="csubject">Subject<span style="color: #ff0000;">*</span></label>
						<input id="csubject" name="csubject" class="mesage" type="text" placeholder="Enter Mesage Subject *" required>
						{*<div class="button">
							<input class="subject" type="checkbox" placeholder="Enter Mesage Subject *">
							<span>Send copy to yourself</span>
						</div>*}
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<label for="contact_message">Message<span style="color: #ff0000;">*</span></label>
						<textarea id="contact_message" aria-required="true" required class="required invalid" rows="10" cols="50" id="jform_contact_message" name="contact_message" aria-invalid="true" placeholder="Message *"></textarea>
						<p>Ask us a question and we'll write back to you promptly! Simply fill out the form below and click Send Email.</p>
						<p>Thanks. Items marked with an asterisk (<span class="star">*</span>) are required fields.</p>
						<button type="submit" class="sendmail">Submit</button>
					</div>
				</form>
			</div>
		</section>
	</main>
{include file="shared/site_footer.tpl"}
