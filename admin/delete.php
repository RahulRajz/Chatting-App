<?php

    $conn = mysqli_connect("localhost","root","","liveChat") or 
    die("Failed");

    $admin_Id = $_GET['id'];
    

    $sql = "DELETE  FROM `contactus` WHERE id = '$admin_Id'";
    $query = mysqli_query($conn,$sql);

    if($query){
        header("Location: contact.php");
    }else{
        echo "<script> 
            alert('Query Failed');
            replace('contact.php');
            </script>";
    }


?>