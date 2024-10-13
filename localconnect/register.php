<?php
    $db = mysqli_connect('localhost','root','','englishforkid');
    if(!$db)
    {
        echo "DATABASE CONNECT FAILED";
    }
    $username = $_POST['username'];
    $password = $_POST['password'];
    $score = 0;
    $sql = "SELECT * FROM accountUser WHERE username ='".$username."' ";
    $sql2 = "INSERT INTO accountUser(username,password,score) VALUES ('".$username."','".$password."','".$score."') ";
    $result = mysqli_query($db,$sql);
    $check = mysqli_fetch_array($result);
    if (isset($check)){
        echo json_encode("THAT BAI");
    } else{
        $result2 = mysqli_query($db,$sql2);
        echo json_encode("DANG KI THANH CONG");
    }

?>
