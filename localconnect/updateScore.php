<?php
    $db = mysqli_connect('localhost','root','','englishforkid');
    if(!$db)
    {
        echo "DATABASE CONNECT FAILED";
    }
    $username = $_POST['username'];
    $score1 = $_POST['score'];
    $score = (int) $score1;
    $sql = "UPDATE accountuser SET score = '".$score."' WHERE username = '".$username."'";
    $result = mysqli_query($db,$sql);
    ?>
