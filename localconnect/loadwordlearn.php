<?php
    $db = mysqli_connect('localhost','root','','englishforkid');
    if(!$db)
    {
        echo "DATABASE CONNECT FAILED";
    }
    $topic = $_POST['topic'];
    $sql = "SELECT * FROM word WHERE topic ='".$topic."'";
    $result = mysqli_query($db,$sql);
    if($result->num_rows>0) {
        $spacecrafts = array();
        while ($row = $result->fetch_array()) {
            array_push($spacecrafts, array("IDw" => $row['IDw'], "word" => $row['word'],
                "vietnam" => $row['vietnam'], "urlImage" => $row['url_image'],"urlAudio"=> $row['url_audio'],
                "description" => $row['description'],"topic"=> $row['topic']));
        }
        print(json_encode(array_reverse($spacecrafts)));
}
?>
