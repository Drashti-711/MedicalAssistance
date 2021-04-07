<?php

include 'connection.php';

if(isset($_POST['register']))
{
    $role = mysqli_real_escape_string($conn, $_POST['selrole']);
    $firstname = mysqli_real_escape_string($conn, $_POST['firstname']);
    $lastname = mysqli_real_escape_string($conn, $_POST['lastname']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
 //   $gender = mysqli_real_escape_string($conn, $_POST['gender']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $confirm_password = mysqli_real_escape_string($conn, $_POST['confirm_password']);

    $pass = password_hash($password, PASSWORD_BCRYPT);
    $confirm_pass = password_hash($confirm_password, PASSWORD_BCRYPT);

    //Check email already present in table or not
    $emailquery = "select * from registration where email = '$email' ";
    $query = mysqli_query($conn, $emailquery);

    $emailcount = mysqli_num_rows($query);

    //check for the username 
    $usernamequery = "select * from registration where username = '$username' ";
    $uquery = mysqli_query($conn, $usernamequery);

    $usernamecount = mysqli_num_rows($uquery);

    if($emailcount > 0)
    {
        echo  '<script type="text/javascript">
                    alert("Email already exists.. !");
                </script>';
    }

    elseif($usernamecount > 0)
     {
        # code...
        echo  '<script type="text/javascript">
                    alert("Username already exists.. !");
                </script>';
    }
    else
    {
        if($password === $confirm_password)
        {
            $insertquery = "insert into registration(role, firstname, lastname, email, username, password, confirm_password) values('$role','$firstname','$lastname','$email','$username','$pass','$confirm_pass') ";

            $iquery = mysqli_query($conn, $insertquery);
            if($iquery)
            {
                ?>
                <script type="text/javascript">
                    alert("REGISTER SUCCESSFULLY");
                    location.replace("login.html");
                </script>

                <?php
            }
            else
            {
                ?>
                <script type="text/javascript">
                    alert("SOME ERROR OCCURED IN REGISTRATION");
                    location.replace("registration.html");
                </script>

                <?php
            }
        }

        else
        {   
            ?>
                <script type="text/javascript">
                    alert("Password Not Matching ");
                </script>
                <?php
        }
    }

}


?>