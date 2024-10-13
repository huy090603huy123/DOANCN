<?php
$db = mysqli_connect('localhost', 'root', '', 'englishforkid');
if (!$db) {
    echo "DATABASE CONNECT FAILED";
}
$qTopic = $_POST['qTopic'];
$sql = "SELECT * FROM quiz WHERE qTopic ='" . $qTopic . "'";
$result = mysqli_query($db, $sql);
if ($result->num_rows > 0) {
    $spacecrafts = array();
    while ($row = $result->fetch_array()) {
        array_push($spacecrafts, array(
            "id" => $row['ID'],
            "qTopic" => $row['qTopic'],
            "content" => $row['content'],
            "answer" => $row['answer'],
            "a" => $row['a'],
            "b" => $row['b'],
            "c" => $row['c'],
            "d" => $row['d']
        ), );
    }
    print(json_encode(array_reverse($spacecrafts)));
}
?>