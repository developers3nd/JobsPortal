<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Jobs Portal</title>
    <?php 
    
    include('header_link.php'); 
    include('dbconnect.php'); 
    
    ?>
</head>
<body>

<?php   
    include('header.php'); 
    if(!isset( $_SESSION['userid'] ) ){
        header('Location: login.php');
      } 
    ?>
    
<h1>Dashboard Employer</h1>
  
<br><br>
 <?php include('footer.php'); ?>

</body>
</html>