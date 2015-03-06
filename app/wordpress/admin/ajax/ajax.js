// jQuery.post(
//     MyAjax.ajaxurl,
//     {
//         action : 'myajax-submit',
//         postID : MyAjax.postID,
//
//         // send the nonce along with the request
//         postCommentNonce : MyAjax.postCommentNonce
//     },
//     function( response ) {
//         alert( response );
//     }
// );
//

function loadBrands(obj) {
	if(obj.value > 0) {
		jQuery('#loader').show();
		jQuery("#opt_model").load(
		    MyAjax.ajaxurl,
		    {
		        action : 'myajax-submit',
						postCommentNonce : MyAjax.postCommentNonce,
		        mId : obj.value
		    },
		    function( response ) {
					jQuery('#opt_model').prop('disabled', false);
					jQuery('#year').prop('disabled', true);
					jQuery('#year').val("-1");
					jQuery('#loader').hide();
		    }
		);

	}

	else {

		alert("Fixture Type Required");
		jQuery('#opt_model').prop('disabled', true);
		jQuery('#opt_model').val("-1");
		jQuery('#year').prop('disabled', true);
		jQuery('#year').val("-1");

	}

}


function loadFixtures(obj) {
	if(obj.value > 0) {
		jQuery('#loader').show();
		jQuery("#year").load(
				MyAjax.ajaxurl,
				{
						action : 'myajax-submit',
						postCommentNonce : MyAjax.postCommentNonce,
						model_id : obj.value,
						make_id : jQuery('#opt_make').val()
				},
				function( response ) {
					jQuery('#year').prop('disabled', false);
					jQuery('#loader').hide();
				}
		);

	}

	else {

		alert("Fixture Brand Required");
		jQuery('#year').prop('disabled', true);
		jQuery('#year').val("-1");

	}

}




function loadSpeedRings() {
	var bcontinue = true;

	if(jQuery('#opt_make').val() == '-1') {
		alert("Fixture Type Required");
		bcontinue = false;
	}
	else if(jQuery('#opt_model').val() == '-1'){
		alert("Fixture Brand Required");
		bcontinue = false;
	}
	else if(jQuery('#year').val() == '-1'){
		alert("Fixture Model Required");
		bcontinue = false;
	}

	if(bcontinue){
		jQuery('#loader').show();
		jQuery("#speed-ring-finder-holder").load(
				MyAjax.ajaxurl,
				{
						action : 'myajax-submit',
						postCommentNonce : MyAjax.postCommentNonce,

						fixture_type : jQuery('#opt_make').val(),
						fixture_brand : jQuery('#opt_model').val(),
						fixture_model : jQuery('#year').val()

				},
				function( response ) {
					// jQuery('#year').prop('disabled', false);
					jQuery('#loader').hide();
				}
		);
		//success here now go to the search page
		// window.location = "<?php echo get_site_url(); ?>/content/plugins/speed-ring-finder/include/product_filter.php?make=" + jQuery('#opt_make').val() + '&model=' + jQuery('#opt_model').val() + '&syear=' + jQuery('#year').val();
	}
}
