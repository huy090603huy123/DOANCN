<?php
    $db = mysqli_connect('localhost','root','','englishforkid');
    if(!$db)
    {
        echo "DATABASE CONNECT FAILED";
    }
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM accountUser WHERE Username ='".$username."' AND Password ='".$password."' ";
    $result = mysqli_query($db,$sql);
    $check = mysqli_fetch_array($result);
    if (isset($check)){
        echo json_encode("ok");
    } else echo json_encode("no");
?>
