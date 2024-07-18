<?php
session_start();
if (!isset($_SESSION['id'])) {
    header('Location: login.php');
    exit();
}

// Database connection
include 'db.php';

// Get admin ID from URL
$admin_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

if ($admin_id > 0) {
    // Delete admin from the database
    $stmt = $link->prepare("DELETE FROM admin WHERE id = ?");
    $stmt->bind_param("i", $admin_id);
    $stmt->execute();
    $stmt->close();
}

header('Location: manage_admin.php');
exit();
?>
