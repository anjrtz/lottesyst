<?php



?>


<html>
		<head>
				<title>Untitled</title>
				<!-- STYLES -->
				<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
				<link rel="stylesheet" type="text/css" href="assets/css/apps.css">
				
		</head>
		<body>
				<?php
					$uri = !empty($_GET['page'])?$_GET['page']:"";
					switch ($uri) {
			 			case 'register': include_once("pages/_register.php");break;
			 			case 'main': 	 include_once("pages/_main.php");break;
			 			default:		 include_once("pages/_default.php");break;
			 		} 
				?>
				<!-- MODAL -->
				<div class="modal fade bs-example-modal-lg" role="dialog" aria-labelledby="myModal" aria-hidden="true" id="myModal">
				  <div class="modal-dialog modal-lg">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
				      </div>
				      <div class="modal-body" id="modal-body">
				        ...
				      </div>
				      <div class="modal-footer center">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        <button type="button" class="btn btn-primary">Get Code</button>
				      </div>
				    </div>
				  </div>
				</div>
						
				<!-- SCRIPTS -->
				<script type="text/javascript" src="assets/js/jquery.min.js"></script>
				<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
				<script type="text/javascript" src="assets/js/apps.js"></script>
		</body>
</html>