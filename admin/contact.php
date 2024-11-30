<?php

    $conn = mysqli_connect("localhost","root","","livechat") or 
    die("Failed");

    $data = "SELECT * FROM `contactus`";
    $query = mysqli_query($conn,$data);
    if(mysqli_num_rows($query)>0){
        $i=1;
?>

<!-- ******************************************************** -->
<!-- Html Code Start Here -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Select Delete Record using AJAX</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
        <div class="container pt-1">

    <!-- For Show Record  -->
    <div>
        <h1 class="bg-dark text-white text-center">Users Messages</h1>
    </div>

    <table class="table table-striped table-bordered text-center">
        <thead>
        <th>Serial No.</th>
            <th>Name</th>
            <th>Email</th>
            <th>Contact No</th>
            <th>Messages</th>
            <th>Delete</th>
        </thead>
        <tbody id="response">
                <?php
                    
                    while($results = mysqli_fetch_assoc($query)){


                ?>
            <tr>
                <td>    <?php echo $i++ ?>  </td>
                <td>    <?php echo $results['name']?>   </td>
                <td>    <?php echo $results['email']?>  </td>
                <td>    <?php echo $results['phone']?>  </td>
                <td>    <?php echo $results['message']?>    </td>
                <td> 
                   <a href="delete.php?id= <?php echo $results['id'];?>"><button class="btn btn-danger delete-btn" >Delete</button></a>
                </td>
            </tr>
        </tbody>
        <?php
      }
 }
 ?>
    </table>

<!--*******************************************************************-->
        <!-- jQuery CDN Link  -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

</body> 
</html>