<?php
$link = new mysqli("localhost", "root", "", "sampledb3");

// Check connection
if ($link->connect_error) {
    die("Connection failed: " . $link->connect_error);
}
?>
