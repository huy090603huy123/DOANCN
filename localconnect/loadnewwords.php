<?php
    $db = mysqli_connect('localhost','root','','englishforkid');
    if(!$db)
    {
        echo "DATABASE CONNECT FAILED";
    }
    $id = $_POST['id'];
    $id = (int) $id;
    $sql = "SELECT * FROM newword WHERE ID = '".$id."'";
    $result = mysqli_query($db,$sql);
    if($result->num_rows>0) {
        $spacecrafts = array();
        while ($row = $result->fetch_array()) {
            array_push($spacecrafts, array("word" => $row['word'],
                "definition" => $row['definition'],"vietnam"=> $row['vietnam'],"example"=> $row['example'],
                "imagePath"=>$row['imagePath'],));
        }
        print(json_encode(array_reverse($spacecrafts)));
    }
    ?>
<?php
