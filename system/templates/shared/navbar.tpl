<ul class="nav navbar-nav">
	<li class="dropdown"> <a href="/"><i class="fa fa-home"></i> Home</a> </li>
	{foreach $cats as $cat}
	  <li class="dropdown hidden-sm"> <a href="/category/products/{$cat.url}"><i class="fa fa-shopping-basket"></i> {$cat.name} <span class="menu-label new-menu hidden-xs">new</span> </a> </li>
	{/foreach}
	{*<li class="dropdown"> <a href="/home/about"><i class="fa fa-briefcase"></i> About us</a> </li>*}
	<li class="dropdown"> <a href="/home/contact"><i class="fa fa-phone"></i> Contact us</a> </li>
	<li class="dropdown  navbar-right special-menu"> <a href="#"><i class="fa fa-bell"></i> Todays offer</a> </li>
</ul>