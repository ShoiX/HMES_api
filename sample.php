<?php
	if($_SERVER["REQUEST_METHOD"] == "POST"){
		$res = array('error' => false,
		 				'msg' => "This is yours!");
		header('Content-type: application/json');
		echo json_encode($res);
	}
	else{
		$res = array('error' => true,
		 				'msg' => "This is me!");
		header('Content-type: application/json');
		echo json_encode($res);
		
	}
?>