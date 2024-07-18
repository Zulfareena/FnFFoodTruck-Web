<?php 
require_once("db.php");

// Select all rows from the information table
$query = "SELECT * FROM foodtruckdetails";
$result = mysqli_query($link, $query);

// Declare an array to hold the results
$output = array();

// Add each row to the output array
foreach ($result as $row) {
    array_push($output, $row);
}

// Convert the output array to JSON
$json = json_encode($output);

// Set the content type to JSON and output the JSON data
header("Content-Type: application/json");
echo $json;
?>
