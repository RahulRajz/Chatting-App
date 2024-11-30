<?php
// Create Connection From the DataBase
include_once("php/config.php");
session_start();
if(isset($_SESSION['id'])){
    header("location: users.php");
}


// Here Html Code Start 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Form</title>

    <!-- Css File Linked -->
    <link rel="stylesheet" href="css/signup.css">

     <!-- Favicon Icon  -->
     <link rel="icon" href="./image/favicon.png">
</head>

<body>

    <!-- Main Container Here  -->
    <div id="container">
        <h2>Sign Up</h2>

        <form action="" autocomplete="off" id="signupData">

            <!-- For Error Message Show  -->
            <div id="errors">Invalid Email Address</div>

            <!-- For First Name  -->
            <input type="text" name="fname" id="fname"  class="name" placeholder="First Name" required>

            <!-- For Last Name  -->
            <input type="text" name="lname" id="lname"  class="name" placeholder="Last Name" required><br>

            <!-- For Email  -->
            <input type="email" name="email" id="email" placeholder="Email" required><br>

            <!-- Create Password  -->
            <input type="password" name="password" id="password" placeholder="Password" required><br>

            <!-- Confirm Password  -->
            <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm Password" required><br>

            <!-- For Take Image  -->
            <input type="file" name="image" id="image" required><br>

            <!-- Login Button  -->
            <input type="submit" name="signup" id="signup" value="Sign Up">

            <p>Already have an account? <a href="login.php">Login</a></p>
        </form>
    </div>


    <!-- jquery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>


    <!-- Link JavaScript File Here  -->
    <script src="js/signup.js"></script>
    
</body>
</html>