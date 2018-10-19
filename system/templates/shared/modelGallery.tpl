<div class="row boxed-padding bottommargin_40">
    <div class="col-lg-12">
            <div class="filters isotope_filters inline-block margin_0">
                <a href="#" data-filter="*" class="selected">All</a>
                {foreach $models as $model}
                    {*if is_first($model.type)*}
                        <a href="#" data-filter=".{$model.type}" >{$model.type|replace:'-':' '}</a>
                    {*/if*}
                {/foreach}
            </div>
        </div>
        
</div>

<div class="isotope_container isotope row masonry-layout" data-filters=".isotope_filters">
    {foreach $models as $model}
        <div class="isotope-item col-lg-3 col-md-4 col-sm-6 {$model.type}">
            <div class="vertical-item content-absolute">
                <div class="item-media">
                    <img src="/uploads/{$model.image}" alt="{$model.nick}">
                    <div class="media-links">
                        <div class="links-wrap">
                            <a class="p-view prettyPhoto " title="" data-gal="prettyPhoto[gal]" href="/uploads/{$model.image}"></a>
                            <a class="p-link" title="" href="/model/account/{$model.url}"></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item-title text-center">
                <h4>
                    <a href="/model/account/{$model.url}">{$model.fname} {$model.lname}</a>
                </h4>
            </div>
        </div>
    {/foreach}
</div>

<!--div class="row">
    <div class="col-sm-12 text-center margin_0">
        <ul class="pagination ">
            <li>
                <a href="index.html#">
                    <span class="sr-only">Prev</span>
                    <i class="rt-icon2-chevron-thin-left"></i>
                </a>
            </li>
            <li class="active">
                <a href="index.html#">1</a>
            </li>
            <li>
                <a href="index.html#">2</a>
            </li>
            <li>
                <a href="index.html#">3</a>
            </li>
            <li>
                <a href="index.html#">4</a>
            </li>
            <li>
                <a href="index.html#">5</a>
            </li>
            <li>
                <a href="index.html#">
                    <span class="sr-only">Next</span>
                    <i class="rt-icon2-chevron-thin-right"></i>
                </a>
            </li>
        </ul>
    </div>
</div-->