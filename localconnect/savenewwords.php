<?php
    $db = mysqli_connect('localhost','root','','englishforkid');
    if(!$db)
    {
        echo "DATABASE CONNECT FAILED";
    }
    $id = $_POST['id'];
    $id = (int) $id;
    $word = $_POST['word'];
    $definition = $_POST['definition'];
    $vietnam = $_POST['vietnam'];
    $example = $_POST['example'];
    $imagePath = $_POST['imagePath'];

    $sql = "INSERT INTO newword (ID,word,definition,vietnam,example,imagePath) VALUES ('".$id."','".$word."','".$definition."','".$vietnam."','".$example."','".$imagePath."')";
    $result = mysqli_query($db,$sql);
?>
<?php
