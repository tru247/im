{if $prod.status eq 1}
	<div class="product-thumb">
		<div class="image">
			<a href="/product/page/{$prod.url}">
				<img src="/products/{$prod.image}" alt="image" title="image" class="img-responsive" />
			</a>
			<div class="onhover onhover1">
				<ul class="list-unstyled">
					<li>
						<button type="button"><i class="icon_cart"></i></button>
					</li>
					<li>
						<button type="button"><i class="icon_heart"></i></button>
					</li>
					<li>
						<button type="button"><i class="icon_piechart"></i></button>
					</li>
				</ul>
				<button class="icons1" type="button"><i class="fa fa-bars"></i></button>
			</div>
		</div>
		<div class="caption">
			<h4><a href="/product/page/{$prod.url}">{$prod.name}</a></h4>
			<p class="price">KShs. {$prod.price}</p>
		</div>
	</div>	
{/if}