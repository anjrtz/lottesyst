<?php

	/*SET CONTENT TYPE BY GET PARAMS*/
	$param1 = !empty($_GET['type'])?$_GET['type']:"";
	switch ($param1) {
		case 'html':
			header('Content-Type: text/html');
			break;
		case 'json':
			header('Content-Type: application/json');
			break;
		default:
			header('Content-Type: text/plain');
			break;
	}

	$param2 = !empty($_GET['page'])?$_GET['page']:"";
	switch ($param2) {
		case 'register':
			include_once("pages/_register.php");
			break;
		case 'json':
			header('Content-Type: application/json');
			break;
		default:
			header('Content-Type: text/plain');
			break;
	}




?>