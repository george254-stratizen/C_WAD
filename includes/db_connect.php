<?php
   $servername = "localhost";
   $username = "root";
   $password = "";
   $db_name = "e_uni";
   // Create connection
   $conn = new mysqli($servername, $username, $password, $db_name);
   
   // Check connection
   if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
   }
   echo "Connected successfully";
  
   $sql = "SELECT genderid, gender , datecreated , dateupdated FROM gender";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
    echo "id: " . $row["genderid"]. " - Name: " . $row["gender"]. " - date: " . $row["datecreated"]. " " . $row["dateupdated"]. "<br>" ;
  }
} else {
  echo "0 results";
}

mysqli_close($conn);

?>