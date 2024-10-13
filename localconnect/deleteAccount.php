<?php
    $db = mysqli_connect('localhost','root','','englishforkid');
    if(!$db)
    {
        echo "DATABASE CONNECT FAILED";
    }
    $id= $_POST["ID"];

    $sql = "DELETE FROM accountUser WHERE ID='".$id."' ";
    $result = mysqli_query($db,$sql);
?>

