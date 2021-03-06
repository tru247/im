$(document).ready(function(){
    // #add to cart script
    $(".product-cart-form").submit(function(e){
        var form_data = $(this).serialize();
        var button_content = $(this).find('button[type=submit]');
        button_content.html('Adding...');
        $.ajax({
            url: "/cart/manage",
            type: "POST",
            dataType:"json",
            data: form_data
        }).done(function(data){
            //$("#cart-container").html(data.products);
            //alert('Product has been added. Continue shopping.');
            location.reload();
            //button_content.html('Add to Cart');
        })
        e.preventDefault();
    });
    
    // Payment options script
    $('#airtel').click(function(){
        $("#airtel-info").show();
        $("#mpesa-info").hide();
        $("#cod-info").hide();
    });
    
    $('#mpesa').click(function(){
        $("#mpesa-info").show();
        $("#cod-info").hide();
        $("#airtel-info").hide();
    });
    
    $('#cash-delivery').click(function(){
        $("#mpesa-info").hide();
        $("#cod-info").show();
        $("#airtel-info").hide();
    });
    
    $('#create-account').change(function(){
        $("#password-creator").toggle(this.checked);
     })

});