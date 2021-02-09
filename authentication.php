<?php      
    include('connection.php');  
    
        
        if(isset($_POST['submit'])) {
            $username = $_POST['username'];   
            $password = $_POST['password'];      
        }
        

        //to prevent from mysqli injection  
        $username = stripcslashes($username);  
        $password = stripcslashes($password);  
        $username = mysqli_real_escape_string($conn, $username);  
        $password = mysqli_real_escape_string($conn, $password);  
           

        mysqli_connect("localhost", "root" , "");
        mysqli_select_db($conn,"medassistance");

        $result = mysqli_query($conn,"select * from login where username = '$username' and password = '$password'")
                    or die("Failed to query databse" .mysqli_error());
        $row = mysqli_fetch_array($result);
        if($row['username'] == $username && $row['password'] == $password) {
            echo "<h1><center> Login successful </center></h1>";
        }
        else {
            echo "<h1> Login failed. Invalid username or password.</h1>";
        }
?>  