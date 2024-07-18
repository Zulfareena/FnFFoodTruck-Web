<?php
session_start();
require 'db.php';

// Check if the admin is logged in
if (!isset($_SESSION['id'])) {
    header("Location: login.php");
    exit();
}

// Check if the form is submitted and id is set
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['id'])) {
    $id = $_POST['id'];

    $sql = "DELETE FROM foodtruckdetails WHERE id = ?";
    $stmt = $link->prepare($sql);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        $_SESSION['message'] = "Food truck deleted successfully!";
    } else {
        $_SESSION['message'] = "Error deleting food truck.";
    }
    header("Location: dashboard.php");
    exit();
}
?>
