function percentageCalculation (a,b) {

	var c = (parseFloat(a) * parseFloat(b)) / 100 ;

	return parseFloat(c);
}



function update_subtotal() { 

	var subtotal = 0 ;

	$('.price').each(function(i){

		var price = $(this).html();

		if (!isNaN(price)) subtotal += Number(price);

	});

	

	subtotal = subtotal.toFixed(2);

	

	$('#subtotal').html(subtotal);

	update_balance();

}


function update_balance(){

	var tax = Number($('#9').val());

	var disc = Number($('#discount').val())


	var b = Number($('#subtotal').html()) * (tax/100) ;

	var c = Number($('#subtotal').html()) * (disc/100) ;



	var total = Number($('#subtotal').html()) + b ;


	total = total - c 

	total = total.toFixed(2);


	$('.due').html(total);


}

 

function update_price()	{
	
	var row = $(this).parents('.item-row');

	var price = row.find('.cost').text() * row.find('.qty').val();

	price = price.toFixed(2);

	isNaN(price) ? row.find('.price').html('NaN') : row.find('.price').html(price);

	update_subtotal();

}

function bind1(){
	
	$('.qty').blur(update_price);

}

