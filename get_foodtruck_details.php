<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sampledb3"; // Your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT name, description, lat, lng, operator_name, menu, schedule FROM foodtruckdetails";
$result = $conn->query($sql);

$foodtrucks = array();

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $foodtrucks[] = $row;
    }
} else {
    echo "0 results";
}
$conn->close();

header('Content-Type: application/json');
echo json_encode($foodtrucks);
?>
