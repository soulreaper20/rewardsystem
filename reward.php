<?php

//this function should be called everytime the sales is created or modified
rewardpoints();

function rewardpoints(){
	include_once("db.php"); 
	$rewardpoints = 0;
	$product_id = 0;
	$getorder="SELECT order_details.order_status as order_status, order_details.order_id as order_id, order_details.order_date as order_date, product_details.product_price as price, order_details.user_id as user_id
	FROM order_details
	JOIN product_details ON product_details.product_id = order_details.product_id
	JOIN user_details ON order_details.user_id = user_details.user_id
	where order_details.order_status = 'Complete' "; //Selecting only the orders whose status is complete

	$order_rs=mysqli_query($conn,$getorder) or die(mysqli_error($conn));
	while($data=mysqli_fetch_assoc($order_rs))
	{	
		$order_id = $data['order_id'];
		$product_id = $data['price'];
		$order_date = $data['order_date'];
		$end = date('Y-m-d', strtotime('+1 years'));
		$user_id = $data['user_id'];
 		$rewardpoints = $product_id;
 		$usablepoints = $rewardpoints/100;
 		$check = "SELECT * FROM reward_details WHERE order_id = '".$order_id."' ";
		$checkif = $conn->query($check);
	if(mysqli_num_rows($checkif) > 0)
 		 { 
 			echo"Reward already provided";
		}
		else
		{
			
			$insertrewards = "INSERT INTO reward_details (user_id, order_id, reward,usable_reward, expiry) VALUES ('".$user_id."','".$order_id."','".$rewardpoints."','".$usablepoints."', '".$end."')"; 
			if ($conn->query($insertrewards) === TRUE) {
			echo "New record created successfully";
			} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
			}
 				
			
		}
		
 		}
}

