event_id = 100;


function remove_event_date(e) {
	target = $(e.currentTarget);
	target_id = target.data('id');
	div1_id = '#event_' + target_id;
	div2_id = '#remove_' + target_id;
	div3_id = '#br_' + target_id;
	$(div1_id).remove();
	$(div2_id).remove();
	$(div3_id).remove();
	//alert('removing');
}

function add_event_date(new_date) {
	str = "<input type='text' name='dates[]' class='datetimepicker' id='event_";
	str += event_id;
	str += "' value='";
	str += new_date;
	str += "'/> <a class='btn btn-xs btn-danger event_remover' id='remove_";
	str += event_id;
	str += "' data-id='";
	str += event_id;
	str += "'>-</a> <br id='br_";
	str += event_id;
	str += "'>";
	//console.debug(str);
	$('#dates').append(str);
	$('#event_' + event_id).datetimepicker({
		format: "YYYY-MM-DD hh:mm:ss"
	});
    $('#remove_' + event_id).click(function(e) {
    	remove_event_date(e);
    });
	event_id += 1;
	//alert("adding");
}

$(document).ready(function () {
    $('.datetimepicker').datetimepicker({
    	format: "YYYY-MM-DD hh:mm:ss"
    });
    $('.event_remover').click(function() {
    	remove_event_date();
    });
    $('#add-date').click(function () {
    	add_event_date();
    });
	//alert(old_dates.length);
    for (var i=0; i<old_dates.length; i++) {
      add_event_date(old_dates[i]);
    }
});

