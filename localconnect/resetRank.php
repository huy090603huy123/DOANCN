<?php
    $db = mysqli_connect('localhost','root','','englishforkid');
    if(!$db)
    {
        echo "DATABASE CONNECT FAILED";
    }
    $sql = "UPDATE accountuser SET score = 0";
    $result = mysqli_query($db,$sql);
?>
