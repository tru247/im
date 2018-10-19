<div class="product-box style1 name">
    <div class="imagebox style1">
        <div class="box-image">
            <a href="/product/details/{$prod.url}" title="">
                <img src="/uploads/{$prod.image}" alt="{$prod.name}">
            </a>
        </div><!-- /.box-image -->
        <div class="box-content">
            <div class="cat-name">
                <a href="/product/details/{$prod.url}" title="">{$prod.brand}</a>
            </div>
            <div class="product-name">
                <a href="/product/details/{$prod.url}" title="">{$prod.name|truncate:30}</a>
            </div>
            <div class="price">
                <span class="sale">KShs. {$prod.price|number_format:2:".":","}</span>
            </div>
        </div><!-- /.box-content -->
        <div class="box-bottom">
            <!-- <div class="compare-wishlist">
                <a href="#" class="compare" title="">
                    <img src="/cdn/images/icons/compare.png" alt="">Compare
                </a>
                <a href="#" class="wishlist" title="">
                    <img src="/cdn/images/icons/wishlist.png" alt="">Wishlist
                </a>
            </div> -->
            <div class="btn-add-cart">
                <form class="product-cart-form">
                    <input type="hidden" name="pid" value="{$prod.id}"/>
                    <input type="hidden" name="pname" value="{$prod.name}"/>
                    <input type="hidden" name="pimage" value="{$prod.image}"/>
                    <input type="hidden" name="pprice" value="{$prod.price}"/>
                    <input type="number" name="pqty" value="1" class="form-control"/><br />
                    <button type="submit" class="btn btn-warning"><i class="fa fa-shopping-basket"></i> Add to Cart</button>
                </form>
                <!--a href="#" title="">
                    <img src="/cdn/images/icons/add-cart.png" alt="">
                </a-->
            </div>
        </div><!-- /.box-bottom -->
    </div><!-- /.imagebox style1 -->
</div><!-- /.product-box style1 -->