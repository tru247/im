<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <title>Les Aubaines - Models</title>
    <meta charset="utf-8">
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <![endif]-->
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <link rel="stylesheet" href="/cdn/les/css/bootstrap.min.css">
    <link rel="stylesheet" href="/cdn/les/css/main.css" id="color-switcher-link">
    <link rel="stylesheet" href="/cdn/les/css/animations.css">
    <link rel="stylesheet" href="/cdn/les/css/fonts.css">
    <script src="/cdn/les/js/vendor/modernizr-2.6.2.min.js"></script>

    <!--[if lt IE 9]>
        <script src="/cdn/les/js/vendor/html5shiv.min.js"></script>
        <script src="/cdn/les/js/vendor/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <!--[if lt IE 9]>
        <div class="bg-danger text-center">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/" class="highlight">upgrade your browser</a> to improve your experience.</div>
    <![endif]-->

    <!--div class="preloader">
        <div class="preloader_image"></div>
    </div-->

    <!-- wrappers for visual page editor and boxed version of template -->
    <div id="canvas">
        <div id="box_wrapper">

            <!-- template sections -->

            <section class="page_topline ds ms gorizontal_padding table_section">
                <div class="container-fluid with_border">
                    <div class="row">
                        <div class="col-sm-4 col-md-3 col-lg-2 text-xs-center text-left text-lg-right">
                            
                        </div>
                        

                    </div>
                </div>
            </section>

            {include file="shared/site_header.tpl"}

            <section class="ds ms page_models models_portrait gorizontal_padding section_padding_70">
                <div class="container-fluid">
                    {include file="shared/modelGallery.tpl"}

                </div>
            </section>

            <section class="ds ms section_padding_30 page_social">
                <div class="container">
                    <div class="row topmargin_20 bottommargin_10">
                        <div class="col-sm-12 text-center">
                            <div class="page_social_icons">
                                {if !empty($app.fb)}
                                    <a class="social-icon color-bg-icon soc-facebook" href="https://{$app.fb}" target="_blank" title="Facebook"></a>
                                {/if}
                                {if !empty($app.tw)}
                                    <a class="social-icon color-bg-icon soc-twitter" href="https://{$app.tw}" target="_blank" title="Twitter"></a>
                                {/if}
                                {if !empty($app.gp)}
                                    <a class="social-icon color-bg-icon soc-google" href="https://{$app.gp}" target="_blank" title="Google"></a>
                                {/if}
                                {if !empty($app.ln)}
                                    <a class="social-icon color-bg-icon soc-linkedin" href="https://{$app.ln}" target="_blank" title="Google"></a>
                                {/if}
                                {if !empty($app.ln)}
                                    <a class="social-icon color-bg-icon soc-pinterest" href="https://{$app.pin}" target="_blank" title="Pinterest"></a>
                                {/if}
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            {include file="shared/site_footer.tpl"}

        </div>
        <!-- eof #box_wrapper -->
    </div>
    <!-- eof #canvas -->

    <script src="/cdn/les/js/compressed.js"></script>
    <script src="/cdn/les/js/main.js"></script>
    

</body>

</html>