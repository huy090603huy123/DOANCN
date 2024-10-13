<?php

    $db = mysqli_connect('localhost', 'root', '', 'englishforkid');
    if (!$db) {
        echo "DATABASE CONNECT FAILED";
    }
    $id = $_POST['id'];
    $username = $_POST['username'];
    $passWord = $_POST['passWord'];
    $id1 = (int)$id;
    $sql = "UPDATE accountuser SET username = '" . $username . "', password = '".$passWord."' WHERE id = '" . $id . "'";
    $result = mysqli_query($db, $sql);

