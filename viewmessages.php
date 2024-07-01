<?php
    include_once("template/nav.php");
    require_once("includes/db_connect.php");

    if(isset($_GET["DelId"])) {
        $DelId = mysqli_real_escape_string($conn, $_GET["DelId"]);
        
        // sql to delete a record using prepared statement
        $stmt = $conn->prepare("DELETE FROM `messages` WHERE messageId=? LIMIT 1");
        $stmt->bind_param("i", $DelId);
        
        if ($stmt->execute()) {
            header("Location: view_messages.php");
            exit();
        } else {
            error_log("Error deleting record: " . $stmt->error);
            echo "Error deleting record.";
        }
        
        $stmt->close();
    }
?>
<div class="header">
    <h1>Messages</h1>
</div>
        
<div class="row">
    <div class="content">
        <p>Lorem ipsum dolor sit amet, laborum</p>
        <table>
            <thead>
                <tr>
                    <th>SN</th>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Subject</th>
                    <th>Time</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
<?php
$select_msg = "SELECT * FROM `messages` ORDER BY datecreated DESC";
$sel_msg_res = $conn->query($select_msg);
$cm=0;

if ($sel_msg_res->num_rows > 0) {
    while($sel_msg_row = $sel_msg_res->fetch_assoc()) {
        $cm++;
?>
        <tr>
            <td><?php echo $cm; ?>.</td>
            <td><?php echo htmlspecialchars($sel_msg_row["sender_name"]); ?></td>
            <td><?php echo htmlspecialchars($sel_msg_row["sender_email"]); ?></td>
            <td><?php echo '<strong>' . htmlspecialchars($sel_msg_row["subject_line"]) . '</strong> - ' . htmlspecialchars(substr($sel_msg_row["message"], 0, 25)) . '...'; ?></td>
            <td><?php echo date("d-M-Y H:i", strtotime($sel_msg_row["datecreated"])); ?></td>
            <td>
                [ <a href="edit_msg.php?messageId=<?php echo $sel_msg_row["messageId"]; ?>">Edit</a> ]
                [ <a href="?DelId=<?php echo $sel_msg_row["messageId"]; ?>" onclick="return confirm('Are you sure you want to delete this message permanently from the database ?')">Del</a> ]
            </td>
        </tr>
<?php
    }
} else {
    echo "<tr><td colspan='6'>0 results</td></tr>";
}
?>
            </tbody>
            <tfoot>
                <tr>
                    <th>SN</th>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Subject</th>
                    <th>Time</th>
                    <th>Actions</th>
                </tr>
            </tfoot>
        </table>
    </div>
</div>
<?php
    include_once("template/footer.php");
    $conn->close();
?>

