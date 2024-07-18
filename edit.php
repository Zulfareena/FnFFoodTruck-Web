<?php
session_start();
if (!isset($_SESSION['id'])) {
    header('Location: login.php');
    exit();
}

// Database connection
include 'db.php';

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $description = $_POST['description'];
    $lat = $_POST['lat'];
    $lng = $_POST['lng'];
    $operator_name = $_POST['operator_name'];
    $menu = $_POST['menu'];
    $schedule = $_POST['schedule'];

    $sql = "UPDATE foodtruckdetails SET name=?, description=?, lat=?, lng=?, operator_name=?, menu=?, schedule=? WHERE id=?";
    $stmt = $link->prepare($sql);
    $stmt->bind_param("sssssssi", $name, $description, $lat, $lng, $operator_name, $menu, $schedule, $id);

    if ($stmt->execute()) {
        header('Location: dashboard.php');
    } else {
        echo "Error updating record: " . $link->error;
    }
}

// Check if id is set in the URL
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $result = $link->query("SELECT * FROM foodtruckdetails WHERE id=$id");
    $row = $result->fetch_assoc();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Food Truck</title>
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
        input[type="text"], input[type="number"], textarea {
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
            <h2>Edit Food Truck</h2>
            <form method="post">
                <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
                <input type="text" name="name" value="<?php echo $row['name']; ?>" placeholder="Food Truck Name" required>
                <input type="text" name="description" value="<?php echo $row['description']; ?>" placeholder="Description" required>
                <input type="number" step="any" name="lat" value="<?php echo $row['lat']; ?>" placeholder="Latitude" required>
                <input type="number" step="any" name="lng" value="<?php echo $row['lng']; ?>" placeholder="Longitude" required>
                <input type="text" name="operator_name" value="<?php echo $row['operator_name']; ?>" placeholder="Operator's Name" required>
                <textarea name="menu" placeholder="Menu" rows="4" required><?php echo $row['menu']; ?></textarea>
                <input type="text" name="schedule" value="<?php echo $row['schedule']; ?>" placeholder="Schedule" required>
                <button type="submit">Update Food Truck</button>
            </form>
        </div>
    </div>
</body>
</html>
