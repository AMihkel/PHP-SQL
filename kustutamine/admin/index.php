<?php
;
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