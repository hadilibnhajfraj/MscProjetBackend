<?php
 include_once "database.php";
 $target_dir = "pdf/";
 $name = $_POST['name'];

 
 $target_file = $target_dir . basename($_FILES["pdf"]["name"]);
 if(!isset($name) || $name=="undefined"){
    $name = $_FILES["pdf"]["name"];   
      
 }
 move_uploaded_file($_FILES["pdf"]["tmp_name"], $target_file);
 //write code for saving to database 
 // Create connection

 $sql = "INSERT INTO pdf_file (name,filename) VALUES ('".$name."','".basename($_FILES["pdf"]["name"])."')";
 if ($db->query($sql) === TRUE) {
     echo json_encode($_FILES["pdf"]); // new file uploaded
 } else {
    echo "Error: " . $sql . "<br>" . $db->error;
 }
 $db->close();