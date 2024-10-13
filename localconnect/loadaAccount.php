<?php
$db = mysqli_connect('localhost','root','','englishforkid');
if(!$db)
{
    echo "DATABASE CONNECT FAILED";
}
$username = $_POST['username'];
$sql = "SELECT * FROM accountUser WHERE username = '".$username."'";
$result = mysqli_query($db,$sql);
if($result->num_rows>0) {
    $spacecrafts = array();
    while ($row = $result->fetch_array()) {
        array_push($spacecrafts, array("id" => $row['ID'], "username" => $row['username'],
            "password" => $row['password'],"score"=> $row['score'],));
    }
    print(json_encode(array_reverse($spacecrafts)));
}
?>
<?php
