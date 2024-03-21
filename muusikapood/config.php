<?php
$kasutaja = "miku";
$dbserver = "localhost";
$andmepaas = "muusikapood";
$pw = "Par00l123";

$yhendus = mysqli_connect($dbserver, $kasutaja,$pw,$andmepaas);
if (!$yhendus) {
    die ("jälle ebaõnnestus!!");
}
?>