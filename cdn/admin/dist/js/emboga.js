(function($){
	"use strict"; // Start of use strict

	//user registration form
    $( "#staff-reg-form" ).submit(function(e) {
        // Stop form from submitting normally
        e.preventDefault();

        // Get some values from elements on the page and then prepare the form for ajax post
        var $form = $(this),
            // img   = $form.find("input[name='image']" ).val(),
            fname   = $form.find("input[name='fname']" ).val(),
            lname   = $form.find("input[name='lname']" ).val(),
            role  = $form.find("select[name='role']").val(),
            email   = $form.find("input[name='email']").val(),
            phone   = $form.find("input[name='phone']").val(),
            pwd     = $form.find("input[name='pwd']").val(),
            gender  = $form.find("select[name='gender']").val(),
            dob     = $form.find("input[name='dob']").val(),
            url     = $form.attr("action" );

        $.ajax({
            url: url,
            type: 'POST',
            //dataType: 'json',
            data: {
                fname: fname,
                lname: lname,
                role: role,
                email: email,
                phone: phone,
                pwd: pwd,
                gender: gender,
                dob: dob
            },
            success: function(data) {
                console.log(data.pin)
                if(data.msg == 'Success'){
                    $('.status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>New staff added successfully.Check your your mail for the confirmation code.</p>');
                    alert(data.info);
                    window.location = '/staff/profile/' + data.url;
                }
                else if(data.msg = 'Failed. User already exists.'){
                	alert(data.msg);
                    $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, that email already exist</p>');
                }
            },
            error: function(data) {
                //how to pass js data var to html tag in js script!!
                //alert(data.msg);
                $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
            }
        });
    });

    //User logion: emboga-login-form
    $( "#emboga-login-form" ).submit(function(e) {
        // Stop form from submitting normally
        e.preventDefault();

        // Get some values from elements on the page and then prepare the form for ajax post
        var $form = $(this),
            loginuid   = $form.find("input[name='login-uid']").val(),
            pwd   = $form.find("input[name='login-pass']").val(),
            url     = $form.attr("action" );

        $.ajax({
            url: url,
            type: 'POST',
            //dataType: 'json',
            data: {
                loginuid: loginuid,
                pwd: pwd
            },
            success: function(data) {
                if(data.msg == 'Good, proceed'){
                    $('.status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>New staff added successfully.Check your your mail for the confirmation code.</p>');
                    window.location = '/dashboard';
                }
                else if(data.msg = 'Error login in. Try again.'){
                    alert(data.msg);
                    $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, that email already exist</p>');
                }
            },
            error: function(data) {
                //how to pass js data var to html tag in js script!!
                //alert(data.msg);
                $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
            }
        });
    });

    //Client registration form
    $( "#client-reg-form" ).submit(function(e) {
        // Stop form from submitting normally
        e.preventDefault();

        // Get some values from elements on the page and then prepare the form for ajax post
        var $form = $(this),
            // img   = $form.find("input[name='image']" ).val(),
            fname     = $form.find("input[name='fname']" ).val(),
            lname     = $form.find("input[name='lname']" ).val(),
            email     = $form.find("input[name='email']").val(),
            phone     = $form.find("input[name='phone']").val(),
            pwd       = $form.find("input[name='pwd']").val(),
            estate    = $form.find("textarea[name='estate']").val(),
            town      = $form.find("select[name='town']").val(),
            county    = $form.find("select[name='county']").val(),
            country    = $form.find("select[name='country']").val(),
            bankDetails    = $form.find("textarea[name='bankDetails']").val(),
            url       = $form.attr("action" );

        $.ajax({
            url: url,
            type: 'POST',
            //dataType: 'json',
            data: {
                fname: fname,
                lname: lname,
                email: email,
                phone: phone,
                pwd: pwd,
                estate: estate,
                town: town,
                county: county,
                country: country,
                bank_details: bankDetails
            },
            success: function(data) {
                if(data.msg === 'Success'){
                    $('.status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>New staff added successfully.Check your your mail for the confirmation code.</p>');
                    alert(data.info);
                    window.location = '/client/profile/' + data.url;
                }
                else if(data.msg === 'Client already exists!'){
                    alert(data.msg);
                    $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, that email already exist</p>');
                }
            },
            error: function(data) {
                //how to pass js data var to html tag in js script!!
                //alert(data.msg);
                $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
            }
        });
    });

    //cat-reg-form
    $( "#cat-reg-form" ).submit(function(e) {
        // Stop form from submitting normally
        e.preventDefault();

        // Get some values from elements on the page and then prepare the form for ajax post
        var $form = $(this),
            name     = $form.find("input[name='cname']" ).val(),
            parent     = $form.find("select[name='parent']" ).val(),
            desc    = $form.find("textarea[name='desc']").val(),
            url       = $form.attr("action" );

        $.ajax({
            url: url,
            type: 'POST',
            //dataType: 'json',
            data: {
                name: name,
                parent: parent,
                desc: desc
            },
            success: function(data) {
                if(data.msg === 'Success'){
                    $('.status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>New staff added successfully.Check your your mail for the confirmation code.</p>');
                    window.location = '/category/profile/' + data.url;
                }
                else if(data.msg === 'Error'){
                    alert(data.msg);
                    $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, that email already exist</p>');
                }
            },
            error: function(data) {
                //how to pass js data var to html tag in js script!!
                //alert(data.msg);
                $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
            }
        });
    });

    //prod-details-form
    $( "#prod-details-form" ).submit(function(e) {
        // Stop form from submitting normally
        e.preventDefault();

        // Get some values from elements on the page and then prepare the form for ajax post
        var $form = $(this),
            creator     = $form.find("input[name='creator']" ).val(),
            name     = $form.find("input[name='name']" ).val(),
            summary     = $form.find("input[name='summary']" ).val(),
            category     = $form.find("select[name='category']" ).val(),
            status     = $form.find("input[name='status']:checked" ).val(),
            price     = $form.find("input[name='price']" ).val(),
            disc     = $form.find("input[name='discount']" ).val(),
            desc    = $form.find("textarea[name='description']").val(),
            mtitle    = $form.find("input[name='mtitle']").val(),
            mkey    = $form.find("input[name='mkey']").val(),
            url       = $form.attr("action" );

        $.ajax({
            url: url,
            type: 'POST',
            //dataType: 'json',
            data: {
                creator: creator,
                name: name,
                summary: summary,
                category: category,
                status: status,
                price: price,
                disc: disc,
                desc: desc,
                mtitle: mtitle,
                mkey: mkey
            },
            success: function(data) {
                if(data.msg === 'Success'){
                    $('.status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>New staff added successfully.Check your your mail for the confirmation code.</p>');
                    alert(data.msg);
                    window.location = '/product/profile/' + data.url;
                }
                else if(data.msg === 'Error'){
                    alert(data.msg);
                    $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, that email already exist</p>');
                }
            },
            error: function(data) {
                //how to pass js data var to html tag in js script!!
                //alert(data.msg);
                $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
            }
        });
    });

    //add to cart
    $( "#add-cart-form" ).submit(function(e) {
        // Stop form from submitting normally
        e.preventDefault();

        // Get some values from elements on the page and then prepare the form for ajax post
        var $form = $(this),
            pname     = $form.find("input[name='pname']" ).val(),
            pprice     = $form.find("input[name='pprice']" ).val(),
            pimage     = $form.find("input[name='pimage']" ).val(),
            pqty     = $form.find("input[name='vertical-spin']" ).val(),
            url       = $form.attr("action" );

        $.ajax({
            url: url,
            type: 'POST',
            //dataType: 'json',
            data: {
                pname: pname,
                pprice: pprice,
                pimage: pimage,
                pqty: pqty
            },
            success: function(data) {
                if(data.msg === 'Success'){
                    $('.status').css('display', 'block').html('<p class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>New staff added successfully.Check your your mail for the confirmation code.</p>');
                    alert(data.msg);
                    //window.location = '/product/profile/' + data.url;
                }
                else if(data.msg === 'Error'){
                    alert(data.msg);
                    $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Sorry, that email already exist</p>');
                }
            },
            error: function(data) {
                //how to pass js data var to html tag in js script!!
                //alert(data.msg);
                $('.status').css('display', 'block').html('<p class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>An error has occurred</p>');
            }
        });
    });
})(jQuery); // End of use strict