<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <title>Imranma - Digital Printing Shop</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=3.0, user-scalable=yes"/>
  <meta name="description" content="Printing template">
  <meta name="author" content="@trulance247">
  <!-- Favicon -->
  <link rel="icon" href="/cdn/imran/favicon.png" type="image/x-icon" />

  <!-- Add Font awesome things -->
  <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous"> -->

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!--Add css lib--> 
  <link rel="stylesheet" type="text/css" href="/cdn/imran/css/style-main.css">  
  <link href='http://fonts.googleapis.com/css?family=Roboto:500,300,700,400' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Arimo:500,300,700,400' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:500,300,700,400' rel='stylesheet' type='text/css'>

  <style type="text/css">
    .col-item
    {
        border: 1px solid #E1E1E1;
        border-radius: 5px;
        background: #FFF;
    }
    .col-item .photo img
    {
        margin: 0 auto;
        width: 100%;
    }

    .col-item .info
    {
        padding: 10px;
        border-radius: 0 0 5px 5px;
        margin-top: 1px;
    }

    .col-item:hover .info {
        background-color: #F5F5DC;
    }
    .col-item .price
    {
        /*width: 50%;*/
        float: left;
        margin-top: 5px;
    }

    .col-item .price h5
    {
        line-height: 20px;
        margin: 0;
    }

    .price-text-color
    {
        color: #219FD1;
    }

    .col-item .info .rating
    {
        color: #777;
    }

    .col-item .rating
    {
        /*width: 50%;*/
        float: left;
        font-size: 17px;
        text-align: right;
        line-height: 52px;
        margin-bottom: 10px;
        height: 52px;
    }

    .col-item .separator
    {
        border-top: 1px solid #E1E1E1;
    }

    .clear-left
    {
        clear: left;
    }

    .col-item .separator p
    {
        line-height: 20px;
        margin-bottom: 0;
        margin-top: 10px;
        text-align: center;
    }

    .col-item .separator p i
    {
        margin-right: 5px;
    }
    .col-item .btn-add
    {
        width: 50%;
        float: left;
    }

    .col-item .btn-add
    {
        border-right: 1px solid #E1E1E1;
    }

    .col-item .btn-details
    {
        width: 50%;
        float: left;
        padding-left: 10px;
    }
    .controls
    {
        margin-top: 20px;
    }
    [data-slide="prev"]
    {
        margin-right: 10px;
    }
    .side-active{
      color: #ff0000;
    }
    section .section-title{
      text-align:center;
      color:#0EADA9;
      margin-bottom:50px;
      text-transform:uppercase;
    }
    #what-we-do{
      background:#ffffff;
      padding: 60px 0;
    }
    #what-we-do .card{
      padding: 3rem!important;
      border: none;
      margin-bottom:1rem;
      -webkit-transition: .5s all ease;
      -moz-transition: .5s all ease;
      transition: .5s all ease;
    }
    #what-we-do .card-title{
      font-weight: bold;
      font-size: 18px;
    }
    #what-we-do .card:hover{
      -webkit-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
      -moz-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
      box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
    }
    #what-we-do .card .card-block{
      padding-left: 50px;
        position: relative;
    }
    #what-we-do .card .card-block a{
      color: #0EADA9 !important;
      font-weight:700;
      text-decoration:none;
    }
    #what-we-do .card .card-block a i{
      display:none;
      
    }
    #what-we-do .card:hover .card-block a i{
      display:inline-block;
      font-weight:700;
      
    }
    #what-we-do .card .card-block:before{
      font-family: FontAwesome;
        position: absolute;
        font-size: 39px;
        color: #0EADA9;
        left: 0;
      -webkit-transition: -webkit-transform .2s ease-in-out;
        transition:transform .2s ease-in-out;
    }
    #what-we-do .card .block-1:before{
        content: "\f0e7";
    }
    #what-we-do .card .block-2:before{
        content: "\f0eb";
    }
    #what-we-do .card .block-3:before{
        content: "\f00c";
    }
    #what-we-do .card .block-4:before{
        content: "\f209";
    }
    #what-we-do .card .block-5:before{
        content: "\f0a1";
    }
    #what-we-do .card .block-6:before{
        content: "\f218";
    }
    #what-we-do .card:hover .card-block:before{
      -webkit-transform: rotate(360deg);
      transform: rotate(360deg);  
      -webkit-transition: .5s all ease;
      -moz-transition: .5s all ease;
      transition: .5s all ease;
    }

    /*Portfolio in the about us page*/
    .gallery-title
    {
        font-size: 36px;
        color: #0EADA9;
        text-align: center;
        font-weight: 500;
        margin-bottom: 70px;
    }
    .gallery-title:after {
        content: "";
        position: absolute;
        width: 7.5%;
        left: 46.5%;
        height: 45px;
        border-bottom: 1px solid #5e5e5e;
    }
    .filter-button
    {
        font-size: 18px;
        border: 1px solid #0EADA9;
        border-radius: 5px;
        text-align: center;
        color: #0EADA9;
        margin-bottom: 30px;

    }
    .filter-button:hover
    {
        font-size: 18px;
        border: 1px solid #0EADA9;
        border-radius: 5px;
        text-align: center;
        color: #ffffff;
        background-color: #0EADA9;

    }
    .btn-default:active .filter-button:active
    {
        background-color: #0EADA9;
        color: white;
    }

    .port-image
    {
        width: 100%;
    }

    .gallery_product
    {
        margin-bottom: 30px;
    }

    /*Latest Blogs*/
    /* image thumbnail */
    .thumb {
        display: block;
      width: 100%;
      margin: 0;
    }

    /* Style to article Author */
    .by-author {
      font-style: italic;
      line-height: 1.3;
      color: #aab6aa;
    }

    /* Main Article [Module]
    -------------------------------------
    * Featured Article Thumbnail
    * have a image and a text title.
    */
    .featured-article {
      width: 482px;
      height: 350px;
      position: relative;
      margin-bottom: 1em;
    }

    .featured-article .block-title {
      /* Position & Box Model */
      position: absolute;
      bottom: 0;
      left: 0;
      z-index: 1;
      /* background */
      background: rgba(0,0,0,0.7);
      /* Width/Height */
      padding: .5em;
      width: 100%;
      /* Text color */
      color: #fff;
    }

    .featured-article .block-title h2 {
      margin: 0;
    }

    /* Featured Articles List [BS3]
    --------------------------------------------
    * show the last 3 articles post
    */

    .main-list {
      padding-left: .5em;
    }

    .main-list .media {
      padding-bottom: 1.1em;
      border-bottom: 1px solid #e8e8e8;
    }

    .btn-file {
        position: relative;
        overflow: hidden;
    }
    .btn-file input[type=file] {
        position: absolute;
        top: 0;
        right: 0;
        min-width: 100%;
        min-height: 100%;
        font-size: 100px;
        text-align: right;
        filter: alpha(opacity=0);
        opacity: 0;
        outline: none;
        background: white;
        cursor: inherit;
        display: block;
    }

    #img-upload{
        width: 100%;
    }

    img {
      max-width: 100%; }

    .preview {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-orient: vertical;
      -webkit-box-direction: normal;
      -webkit-flex-direction: column;
          -ms-flex-direction: column;
              flex-direction: column; }
      @media screen and (max-width: 996px) {
        .preview {
          margin-bottom: 20px; } }

    .preview-pic {
      -webkit-box-flex: 1;
      -webkit-flex-grow: 1;
          -ms-flex-positive: 1;
              flex-grow: 1; }

    .preview-thumbnail.nav-tabs {
      border: none;
      margin-top: 15px; }
      .preview-thumbnail.nav-tabs li {
        width: 18%;
        margin-right: 2.5%; }
        .preview-thumbnail.nav-tabs li img {
          max-width: 100%;
          display: block; }
        .preview-thumbnail.nav-tabs li a {
          padding: 0;
          margin: 0; }
        .preview-thumbnail.nav-tabs li:last-of-type {
          margin-right: 0; }

    .tab-content {
      overflow: hidden; }
      .tab-content img {
        width: 100%;
        -webkit-animation-name: opacity;
                animation-name: opacity;
        -webkit-animation-duration: .3s;
                animation-duration: .3s; }

    .card {
      /*margin-top: 50px;*/
      background: #eee;
      padding: 3em;
      line-height: 1.5em; }

    @media screen and (min-width: 997px) {
      .wrapper {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex; } }

    .details {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-box-orient: vertical;
      -webkit-box-direction: normal;
      -webkit-flex-direction: column;
          -ms-flex-direction: column;
              flex-direction: column; }

    .colors {
      -webkit-box-flex: 1;
      -webkit-flex-grow: 1;
          -ms-flex-positive: 1;
              flex-grow: 1; }

    .product-title, .price, .sizes, .colors {
      text-transform: UPPERCASE;
      font-weight: bold; }

    .checked, .price span {
      color: #ff9f1a; }

    .product-title, .rating, .product-description, .price, .vote, .sizes {
      margin-bottom: 15px; }

    .product-title {
      margin-top: 0; }

    .size {
      margin-right: 10px; }
      .size:first-of-type {
        margin-left: 40px; }

    .color {
      display: inline-block;
      vertical-align: middle;
      margin-right: 10px;
      height: 2em;
      width: 2em;
      border-radius: 2px; }
      .color:first-of-type {
        margin-left: 20px; }

    .add-to-cart, .like {
      background: #ff9f1a;
      padding: 1.2em 1.5em;
      border: none;
      text-transform: UPPERCASE;
      font-weight: bold;
      color: #fff;
      -webkit-transition: background .3s ease;
              transition: background .3s ease; }
      .add-to-cart:hover, .like:hover {
        background: #b36800;
        color: #fff; }

    .not-available {
      text-align: center;
      line-height: 2em; }
      .not-available:before {
        font-family: fontawesome;
        content: "\f00d";
        color: #fff; }

    .orange {
      background: #ff9f1a; }

    .green {
      background: #85ad00; }

    .blue {
      background: #0076ad; }

    .tooltip-inner {
      padding: 1.3em; }

    @-webkit-keyframes opacity {
      0% {
        opacity: 0;
        -webkit-transform: scale(3);
                transform: scale(3); }
      100% {
        opacity: 1;
        -webkit-transform: scale(1);
                transform: scale(1); } }

    @keyframes opacity {
      0% {
        opacity: 0;
        -webkit-transform: scale(3);
                transform: scale(3); }
      100% {
        opacity: 1;
        -webkit-transform: scale(1);
                transform: scale(1); } }

    /*# sourceMappingURL=style.css.map */
  </style>
</head>
<body>
  <!--Header: Begin-->
  {include file="imranm/header.tpl"}
  <!--Header: End-->