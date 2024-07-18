<?php
session_start();
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $link->real_escape_string($_POST['username']);
    $password = $link->real_escape_string($_POST['password']);

    $result = $link->query("SELECT * FROM admin WHERE username='$username' AND password='$password'");

    if ($result->num_rows > 0) {
        $_SESSION['id'] = session_id();
        $_SESSION['username'] = $username;
        header('Location: home.php');
        exit(); // Ensure script stops here
    } else {
        $error = "Invalid username or password.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Playfair Display', serif;
            background: linear-gradient(to right, #83a4d4, #b6fbff);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }
        .container {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 12px;
            padding: 40px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            width: 90%;
            max-width: 400px;
        }
        h2 {
            color: #fff;
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
            font-weight: 600;
        }
        form input[type="text"], form input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 16px;
            font-family: 'Playfair Display', serif;
        }
        form button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            background: linear-gradient(to right, #8e2de2, #4a00e0);
            color: white;
            font-weight: 600;
            font-family: 'Playfair Display', serif;
            transition: background 0.3s ease;
        }
        form button:hover {
            background: linear-gradient(to right, #4a00e0, #8e2de2);
        }
        form button::after {
            content: '';
            display: block;
            width: 100%;
            height: 3px;
            background: linear-gradient(to right, #8e2de2, #4a00e0);
            transition: width 0.3s ease;
        }
        form button:hover::after {
            width: 0;
        }
    </style>
</head>
<body>
<div class="container">
        <div class="login-box">
            <h2>Admin Login</h2>
            <?php if (isset($error)) { echo "<p style='color:red;'>$error</p>"; } ?>
            <form method="post" action="">
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <button type="submit" class="primary-button">Login</button>
            </form>
        </div>
    </div>
</body>
</html>
