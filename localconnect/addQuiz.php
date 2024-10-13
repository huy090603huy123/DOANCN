<?php
$db = mysqli_connect('localhost', 'root', '', 'englishforkid');
if (!$db) {
    echo "DATABASE CONNECT FAILED";
}
$topic = $_POST['topic'];
$content = $_POST['content'];
$answer = $_POST['answer'];
$A = $_POST['A'];
$B = $_POST['B'];
$C = $_POST['C'];
$D = $_POST['D'];

$sql = "INSERT INTO quiz (qTopic,content,answer,a,b,c,d) VALUES ('" . $topic . "','" . $content . "','" . $answer . "',
                '" . $A . "','" . $B . "','" . $C . "','" . $D . "')";
$result = mysqli_query($db, $sql);
?>