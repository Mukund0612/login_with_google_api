<?php
require_once 'config.php';
if (isset($_SESSION['access_token'])) {
    $google_client->setAccessToken($_SESSION['access_token']);
} elseif (isset($_GET['code'])) {
    $token = $google_client->fetchAccessTokenWithAuthCode($_GET['code']);
    $_SESSION['access_token'] = $token;
} else {
    header('Location: login.php');
    exit;
}

$oAuth = new Google_Service_Oauth2($google_client);

$userData = $oAuth->userinfo_v2_me->get();
$_SESSION['id'] = $userData['id'];
$_SESSION['email'] = $userData['email'];
$_SESSION['givenName'] = $userData['givenName'];
$_SESSION['familyName'] = $userData['familyName'];
$_SESSION['gender'] = $userData['gender'];
$_SESSION['picture'] = $userData['picture'];

$sql = "INSERT INTO `google_user` (`client_id`, `name`, `last_name`, `google_email`, `gender`, `picture_link`) VALUES ('".mysqli_real_escape_string($con, $userData['id'])."', 
'".mysqli_real_escape_string($con, $userData['givenName'])."', '".mysqli_real_escape_string($con, $userData['fanilyName'])."', '".mysqli_real_escape_string($con, $userData['email'])."', 
'".mysqli_real_escape_string($con, $userData['gender'])."', '".mysqli_real_escape_string($con, $userData['picture'])."');";

$result = mysqli_query($con, $sql);

if ($result == 1) {
    header('Location: index.php');
    die;
}