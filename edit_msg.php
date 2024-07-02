<?php
    require_once("includes/db_connect.php");
    include_once("templates/header.php");
    include_once("templates/nav.php");

    $messageId = mysqli_real_escape_string($conn, $_GET["messageId"]);

    $spot_msg = "SELECT * FROM `messages` WHERE messageId = '$messageId' LIMIT 1";
    $spot_msg_res = $conn->query($spot_msg);
    $spot_msg_row = $spot_msg_res->fetch_assoc();