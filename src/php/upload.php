<?php
$uploadPath = "images/" . basename( $_FILES['Filedata']['name']);
if (move_uploaded_file($_FILES['Filedata']['tmp_name'], $uploadPath))
{
     echo "OK".$_GET["id"];
}
else
{
     echo "ERROR";
}
?>
