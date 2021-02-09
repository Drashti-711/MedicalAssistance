<?php

	include('connection.php');

		session_start();
		$username = "";
		$email    = "";

		if (isset($_POST['register'])) {
		  $role = mysqli_real_escape_string($conn, $_POST['selrole']);
		  $firstname = mysqli_real_escape_string($conn, $_POST['firstname']);
		  $lastname = mysqli_real_escape_string($conn, $_POST['lastname']);
		  $email = mysqli_real_escape_string($conn, $_POST['email']);
		  $address = mysqli_real_escape_string($conn, $_POST['address']);
		  $gender = mysqli_real_escape_string($conn, $_POST['gender']);
		  $username = mysqli_real_escape_string($conn, $_POST['username']);
		  $password = mysqli_real_escape_string($conn, $_POST['password']);

		  $user_check_query = "SELECT * FROM registration WHERE username='$username' OR email='$email' LIMIT 1";
		  $result = mysqli_query($conn, $user_check_query);
		  $user = mysqli_fetch_assoc($result);
		  
		  if ($user) { 
		    if ($user['username'] === $username) {
		    	echo '<script type="text/javascript">';
				echo ' alert("Username already exists")';  
				echo '</script>';
		    }

		    if ($user['email'] === $email) {
		    	echo '<script type="text/javascript">';
				echo ' alert("Email already exists")';  
				echo '</script>';
		    }
		  }
		  $query = "INSERT INTO registration (role,firstname,lastname,email,address,gender,username,password) 
		  			 VALUES('$role','$firstname','$lastname','$email','$address','$gender','$username','$password')";
		  mysqli_query($conn, $query);
		  $_SESSION['username'] = $username;
		  $_SESSION['success'] = "You are now logged in";
		}
?>