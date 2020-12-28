<?php
// Start session
session_start();

// include google apis 
include 'API/vendor/autoload.php';

// create object of google Client
$google_client = new Google_Client();

// set Client Id
$google_client->setClientId('174021655713-u3iefg43na3ibffcnsnvb8hi4672s191.apps.googleusercontent.com');

// set Client secret
$google_client->setClientSecret('JdGdR6GbzoKXlT378fEfZF5M');

// Set Application name
$google_client->setApplicationName('Login With Google');

// set redirect after login 
$google_client->setRedirectUri('http://localhost/login_with_google/reditectFromGoogle.php');

// Add Scope
$google_client->addScope('email');
$google_client->addScope('profile');

// Database Connection
$host = 'localhost';
$user = 'root';
$pass = '';
$db_name = "login_with_google";

$con = mysqli_connect($host, $user, $pass, $db_name);
if ($con->connect_error) {
    die('Connection Failed: ' . $con->connect_error);
}
?>