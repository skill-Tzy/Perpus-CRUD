<?php 
 
$server = "sql301.infinityfree.com";
$user = "if0_34822554";
$pass = "5uMKDV7dErYl";
$database = "if0_34822554_db_perpus";
 
$koneksi = mysqli_connect($server, $user, $pass, $database);
 
if (!$koneksi) {
    die("<script>alert('Gagal tersambung dengan database.')</script>");
}
 
?>