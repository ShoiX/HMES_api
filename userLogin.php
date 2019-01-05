<?php
	header('Content-type: application/json');
	if($_SERVER["REQUEST_METHOD"] == "POST"){
		$email = $_POST['email'];
		$password = $_POST['password'];
		$res;
		if ($email == 'jerrycoalaba@gmail.com' && $password == 'manlulupa'){
			$res = array('error' => false,
			'message' => "User Login succesffuly",
			'user' => array(
				'id' => 1,
				'email' => 'jerrycoalaba@gmail.com',
				'name' => 'Jerryco G. Alaba')
			);
		}
		else{
			$res = array('error' => True,
			'message' => "User Login failed");
			
		}
		echo json_encode($res);
	}
?>