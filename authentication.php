<?php
session_start();
?>

<?php
//session_start();

include 'connection.php';

if(isset($_POST['submit']))
{
//	$role = $_POST['role'];
	$email = $_POST['email'];
	$password = $_POST['password'];

	//check the enetered email is present or not
	$email_search = "select * from registration where email='$email'  ";
	$query = mysqli_query($conn , $email_search);

	$email_count = mysqli_num_rows($query);

	if($email_count)
	{
	//	echo $email_count;
	
		//match password
		$email_pass = mysqli_fetch_assoc($query);

		$db_pass = $email_pass['password'];

		$pass_decode = password_verify($password, $db_pass);
	//	echo $pass_decode;
		if($pass_decode)
		{
			//insert LOGIN details from REGISTRATION table 
			$insertquery = "insert into login (role, username, password)
			select role, username, password from registration  ";
			$iquery = mysqli_query($conn , $insertquery);

			if($iquery)
			{  
				?>
				<script type="text/javascript">
					alert("Login Successful ");
					location.replace("index.html");
				</script>
				<?php
			}
		}
		else
		{
		//	echo $pass_decode;
			?>
			<script type="text/javascript">
				alert("PASSWORD INCORRECT");
				location.replace("login.html");
			</script>
			<?php
		}
	}
	else
	{
		?>
		<script type="text/javascript">
			alert("INVALID EMAIL");
			location.replace("login.html");
		</script>
		<?php
	}
}

?>