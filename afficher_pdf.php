<?php
require 'database.php';
$filename = "./pdf/analyse.pdf";
  
// Header content type
header("Content-type: application/pdf");
  
header("Content-Length: " . filesize($filename));
  
// Send the file to the browser.
readfile($filename);
?>