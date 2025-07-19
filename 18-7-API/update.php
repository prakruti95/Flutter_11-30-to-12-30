<?php

	include('connect.php');
	
	$id = $_POST['id'];
	$pname = $_POST['p_name'];
	$pprice = $_POST['p_price'];
	$pdes = $_POST['p_des'];
	
	
	$Sql_Query = "UPDATE products SET p_name='$pname' , p_price='$pprice' , p_des= '$pdes' WHERE id = '$id'  ";
	
	if(mysqli_query($con,$Sql_Query))
	{
		echo'Record Updated Succesfully ';
	}
	else
	{
		echo'Something went wrong ';
	}
	
	mysqli_close($con);


?> 