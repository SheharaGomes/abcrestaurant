<?php
  $servername = "localhost";
  $username = "root";
  $password = '';
  $database = "restaurant";
  
  // Create connection
  $conn = new mysqli($servername, $username, $password, $database);
  
  // Check connection
    if ($conn->error) {
        die("Connection failed: " . $conn->error);
    }
    // echo "Connected successfully";
 
?>