<?php
session_start();
if (!isset($_SESSION['id'])) {
    header('Location: login.php');
    exit();
}

// Database connection
include 'db.php';

$foodTruckCount = $link->query("SELECT COUNT(*) as count FROM foodtruckdetails")->fetch_assoc()['count'];
$adminCount = $link->query("SELECT COUNT(*) as count FROM admin")->fetch_assoc()['count'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&display=swap" rel="stylesheet">
    <style>
        /* Your CSS styles here */
        body {
            font-family: 'Playfair Display', serif;
            background: linear-gradient(to right, #83a4d4, #b6fbff);
            display: flex;
        }
        .drawer {
            width: 250px;
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 20px;
            height: 100vh;
            position: fixed;
            left: 0;
            top: 0;
            box-shadow: 2px 0 5px rgba(0,0,0,0.5);
        }
        .drawer a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px 0;
            transition: background 0.3s;
        }
        .drawer a:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }
        .container {
            margin-left: 270px;
            padding: 20px;
            width: 100%;
        }
        .card {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="drawer">
        <h2>Admin Dashboard</h2>
        <a href="home.php">Home</a>
        <a href="manage_admin.php">User Dashboard</a>
        <a href="dashboard.php">Manage Food Trucks</a>
        <a href="logout.php">Logout</a>
    </div>
    <div class="container">
        <div class="card">
            <h2>Admin Dashboard Summary</h2>
            <p>Total Food Trucks: <?php echo $foodTruckCount; ?></p>
            <p>Total Admins: <?php echo $adminCount; ?></p>
        </div>
    </div>
</body>
</html>
