<?php
session_start();
if (!isset($_SESSION['id'])) {
    header('Location: login.php');
    exit();
}

// Database connection
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Handle form submission
    $username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST['email'];

    // Hash the password using MD5
    $hashed_password = md5($password);

    // Insert new admin into the database
    $stmt = $link->prepare("INSERT INTO admin (username, password, email) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $username, $hashed_password, $email);
    if ($stmt->execute()) {
        $stmt->close();
        header('Location: manage_admin.php');
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Admin</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&display=swap" rel="stylesheet">
    <style>
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
        form {
            display: flex;
            flex-direction: column;
        }
        input[type="text"], input[type="email"], input[type="password"] {
            font-family: 'Playfair Display', serif;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        button {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: white;
            padding: 10px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s;
        }
        button:hover {
            background: linear-gradient(to right, #2575fc, #6a11cb);
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
            <h2>Add New Admin</h2>
            <form method="POST">
                <input type="text" id="username" name="username" placeholder="Username" required>
                <input type="email" id="email" name="email" placeholder="Email" required>
                <input type="password" id="password" name="password" placeholder="Password" required>
                <button type="submit">Add Admin</button>
            </form>
        </div>
    </div>
</body>
</html>
