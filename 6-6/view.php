<?php

	include('connect.php');
	$sql = "select * from products";
	$r=mysqli_query($con,$sql);
	$response = array();

	if($row = mysqli_fetch_array($r))
	{

		$value["id"] = $row["id"];
		$value["pname"] = $row["pname"];
		$value["pprice"] = $row["pprice"];
		$value["pdes"] = $row["pdes"];
		$value["pimage"] = $row["pimage"];
		
		array_push($response,$value);
		
	}

	echo json_encode($response);

?>