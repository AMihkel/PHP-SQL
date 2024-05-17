<?php
//print_r(password_hash("admin123", PASSWORD_DEFAULT));

session_start();
if (!isset($_SESSION['login'])) {
    header("Location: login.php");
    die();
    
}
else {
    # code...
}
?>

<h1>Eriti salajane!!!!</h1>
<a href="logout.php">logi v2lja</a>