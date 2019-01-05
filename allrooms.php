<?php

	$host = "localhost";
	$username = "root";
	$password = "";
	$db = "hmes_final";


	// Create connection
	$conn = new mysqli($host, $username, $password, $db);

	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 

	header('Content-type: application/json');

	$rooms = array(
		'error' => false,
		'rooms' => array()
	);

	$res = mysqli_query($conn, "SELECT * FROM bedroom WHERE status = 'ACTIVE'");
	while ($row = mysqli_fetch_assoc($res) ){
		$room = array(
			'id' => $row['Bed_ID'],
			'adult' => $row['Bed_Adult'],
			'child' => $row['Bed_Child'],
			'type' => $row['Bed_Type'],
			'photo' => $row['Bed_Image'],
			'description' => $row['Bed_Description'],
			'available' => $row['Bed_Available'],
			'price' => $row['Bed_Price']
		);
		array_push($rooms['rooms'], $room);
	}
	echo json_encode($rooms);

?>