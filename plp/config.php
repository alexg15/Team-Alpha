<?php
    //not used at the moment but might be needed
    //DATABASE CONNECTION
    $host = "localhost";
    $username = "root";
    $password = "";
    $database = "testphp";

    $conn = mysqli_connect($host, $username, $password, $database);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    //echo "Connected successfully to database";
?>