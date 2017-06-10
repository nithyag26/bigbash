$(document).ready(function(){


	$('.datepicker').datepicker({
		format: 'yyyy-mm-dd'
	});


	$('#9').blur(update_balance);
	$('#discount').blur(update_balance);

	bind1();

	update_subtotal();


	$('.body').on('click', '#submit_invoice', function(){

		var e =	$('#invoice_total').text();

        alert(e);
		$('#invoice_total1').empty();

		$('#invoice_total1').val(Number(e));

	});

    $('#submit_invoice').click(function(){
    	alert("Are you sure");
    });

	$('body').on('click', '#invoice_button', function(){


		for ( var i = 1; i < 11 ; i++) {


			var id = i.toString();


		}


				var n = $('#invoice_number').text();

				$('#modal_invoice_number').empty();

				$('#modal_invoice_number').append(n);


				var r = $("#invoice_invoice_name").val();
				$('#modal_inv_name').empty();
				$('#modal_inv_name').append(r);




				var d = $('#invoice_date').val();

				$('#modal_invoice_date').empty();

				$('#modal_invoice_date').append(d);


				var subtotal = $('#subtotal').text();

				$('#modal_subtotal').empty();

				$('#modal_subtotal').append(subtotal);

				var tax = $('#9').val();

				$('#modal_9').empty();

				$('#modal_9').append(tax);

				var discount = $('#discount').val();

				$('#modal_discount').empty();

				$('#modal_discount').append(discount);

				

				var rows = $('.item-row');

				$('#modal_tbody').empty();


				for (i =0 ; i < rows.length ; i++) {


					var row =  rows[i];

					var name = $(row).find('.namee').text();

					$('#modal_tbody').append('<tr class= "modal-item-row"> </tr>');

						$('.modal-item-row:last').append('<td>' + name + '</td>');

					var cost = $(row).find('.cost').text(); 

						$('.modal-item-row:last').append('<td>' + cost + '</td>');

					var qty = $(row).find('.qty').val(); 

						$('.modal-item-row:last').append('<td>' + qty + '</td>');		

					var price = $(row).find('.price').text(); 

						$('.modal-item-row:last').append('<td>' + price + '</td>');
				}


	});





});