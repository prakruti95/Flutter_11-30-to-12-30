<?php

    include('connect.php');
    $sql = "select * from products";

    $r = mysqli_query($con,$sql);
    $response = array();

	while($value = mysqli_fetch_array($r))
	{
		$row["id"] = $value["id"];
		$row["p_name"] = $value["p_name"];
		$row["p_price"] = $value["p_price"];
		$row["p_des"] = $value["p_des"];
        	

		array_push($response,$row);
	}

	echo json_encode($response);

?>
