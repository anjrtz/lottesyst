$(function(){
		var init_element = function(){
		};
		var init_event = function(){
			$('#getCodeBtn').click(function(e){
				e.preventDefault();
				$('#myModal').modal({
		            show: true,
		            keyboard: false,
		            backdrop: 'static'
		        }).on('shown.bs.modal', function (){
				    $.ajax({
				   		url:"ajax.php",
				   		data:{"type":"html","page":"register"},
				   		success: function(resp){
				   			$("#modal-body").html(resp);
				   		}
				    });
				    $('#myModalLabel').text("Register");
				});
			})
		};

		init_element();
		init_event();
});