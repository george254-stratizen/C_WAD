<?php
    require_once("includes/db_connect.php");
    include_once("templates/header.php");
    include_once("templates/nav.php");

    $messageId = mysqli_real_escape_string($conn, $_GET["messageId"]);

    $spot_msg = "SELECT * FROM `messages` WHERE messageId = '$messageId' LIMIT 1";
    $spot_msg_res = $conn->query($spot_msg);
    $spot_msg_row = $spot_msg_res->fetch_assoc();

    if(isset($_POST["update_message"])){
        $fullname = mysqli_real_escape_string($conn, $_POST["fullname"]);
        $email = mysqli_real_escape_string($conn, $_POST["email_address"]);
        $subject_line = mysqli_real_escape_string($conn, $_POST["subject_line"]);
        $text_message = mysqli_real_escape_string($conn, $_POST["message"]);
        $messageId = mysqli_real_escape_string($conn, $_POST["messageId"]);

        $update_message = "UPDATE messages SET sender_name = '$fullname', sender_email = '$email', subject_line = '$subject_line', message = '$text_message' WHERE messageId='$messageId' LIMIT 1";
      
        if ($conn->query($update_message) === TRUE) {
            header("Location: view_messages.php");
            exit();
        } else {
            echo "Error: " . $update_message . "<br>" . $conn->error;
        }
    }
?>