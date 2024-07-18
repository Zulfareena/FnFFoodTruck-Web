<?php
session_start();
if (!isset($_SESSION['id'])) {
    header('Location: login.php');
    exit();
}

// Database connection
include 'db.php';

$foodTruckResults = $link->query("SELECT * FROM foodtruckdetails");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Food Trucks</title>
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
table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}
th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
    vertical-align: middle; /* Ensure vertical alignment is middle */
}
th {
    background-color: #f2f2f2;
    color: #333;
}
tr:nth-child(even) {
    background-color: #f9f9f9;
}
.add-button {
    background: linear-gradient(to right, #6a11cb, #2575fc);
    color: white;
    padding: 10px 20px;
    border-radius: 8px;
    text-decoration: none;
    display: inline-block;
    margin-bottom: 20px;
    transition: background 0.3s;
}
.add-button:hover {
    background: linear-gradient(to right, #2575fc, #6a11cb);
}
.edit-button, .delete-button {
    background: linear-gradient(to right, #6a11cb, #2575fc);
    color: white;
    padding: 5px 10px;
    border-radius: 8px;
    text-decoration: none;
    transition: background 0.3s;
    display: inline-block;
    margin: 0 5px;
    font-family: 'Playfair Display', serif;
}
.edit-button:hover, .delete-button:hover {
    background: linear-gradient(to right, #2575fc, #6a11cb);
}
.actions {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 10px; /* Add gap for spacing */
    vertical-align: middle; /* Ensure vertical alignment is middle */
}
.delete-button {
    border: none;
    cursor: pointer;
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
            <h2>Manage Food Trucks</h2>
            <a href="add.php" class="add-button">Add New Food Truck</a>
            <table>
                <tr>
                    <th>No.</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Latitude</th>
                    <th>Longitude</th>
                    <th>Operator's Name</th>
                    <th>Menu</th>
                    <th>Schedule</th>
                    <th>Actions</th>
                </tr>
                <?php
                $no = 1;
                while ($row = $foodTruckResults->fetch_assoc()) {
                    echo "<tr>
                        <td>{$no}</td>
                        <td>{$row['name']}</td>
                        <td>{$row['description']}</td>
                        <td>{$row['lat']}</td>
                        <td>{$row['lng']}</td>
                        <td>{$row['operator_name']}</td>
                        <td>{$row['menu']}</td>
                        <td>{$row['schedule']}</td>
                        <td class='actions'>
                            <a href='edit.php?id={$row['id']}' class='edit-button'>Edit</a>
                            <form action='delete.php' method='post'>
                                <input type='hidden' name='id' value='{$row['id']}'>
                                <button type='submit' class='delete-button'>Delete</button>
                            </form>
                        </td>
                    </tr>";
                    $no++;
                }
                ?>
            </table>
        </div>
    </div>
</body>
</html>
