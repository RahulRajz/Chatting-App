<?php

    $conn = mysqli_connect("localhost","root","","liveChat") or 
    die("Failed");

    if(isset($_POST["login"])){
        $email = $_POST['email'];
        $password = $_POST['password'];
        
        $search = "SELECT * FROM `admin` WHERE email = '$email'AND  password = '$password'";
        $query = mysqli_query($conn, $search);

        if(mysqli_num_rows($query) > 0){
            $fetchData = mysqli_fetch_assoc($query);
            header("location: contact.php");
        }else{
            echo "<script> 
            alert('Please enter correct Email or Password');
            replace('index.php');
            </script>";

        }
    }

?> 


<!--**************************************************************** -->
<!-- Here Html Code Start  -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <!-- css linked -->
    <link rel="stylesheet" href="../css/login.css">

     <!-- Favicon Icon  -->
     <link rel="icon" href="./image/favicon.png">
</head>
<body>

    <!-- Main Section  -->
    <div id="container">
        <h2>Admin Login</h2>

        <form action="" method="POST" autocomplete="off" id="loginForm">

            <!-- For Error Message  -->
            <div id="errors">Invalid Email Address</div>

            <!-- For Email  -->
            <input type="email" name="email" id="email" placeholder="Email" required><br>

            <!-- For Password  -->
            <input type="password" name="password" id="password" placeholder="Password" required><br>

            <!-- Login Button  -->
            <input type="submit" name="login" id="login" value="Login">
        </form>
    </div>


    <!-- jquery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <!--Here JavaScript File Link  -->
    <!-- <script src="js/admin.js"></script> -->
</body>
</html>