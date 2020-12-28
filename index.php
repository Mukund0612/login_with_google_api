<?php
    session_start();
    if (!isset($_SESSION['access_token'])) {
        header('Location: login.php');
        exit;
    }
?>
<h1>Index.php Page</h1>
<input type="button" class="btn btn-primary" onclick="window.location = '<?php echo 'logout.php'; ?>'" value="Logout" />