<?php
 
session_start();
 
if (!isset($_SESSION['username'])) {
    header("Location: index.php");
}
 
 include('koneksi.php'); //agar index terhubung dengan database, maka koneksi sebagai penghubung harus di include

?>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content=
        "width=device-width,initial-scale=1">
        <title>Dashboard Perpustakaan SMK</title>
 <style type="text/css">
 * {
 font-family: "Trebuchet MS";
 }
        .vertical-menu {
            width: 200px;
        }
        h1 {
            text-transform: uppercase;
            color: salmon;
        }

        .vertical-menu a {
            background-color: #eee;
            color: #336B6B;
            border: solid 1px #DDEEEE;
            display: block;
            padding: 12px;
            text-shadow: 1px 1px 1px #fff;
            text-decoration: none;
        }
          .vertical-menu a:hover {
            background-color: #ccc;
        }
          .vertical-menu a.active {
            background-color: #DDEEEE;
            color: #336B6B;
        }
    </style>
</head>
  <body>
    <center>
        <h1>Dashboard Perpustakaan SMK </h1>
        <div class="vertical-menu">
        <a href="#" class="active">Menu</a>
        <a href="/perpus/daftar_buku/buku.php">Data Buku</a>
        <a href="/perpus/daftar_penerbit/penerbit.php">Data Penerbit</a>
        <a href="/perpus/daftar_pengarang/pengarang.php">Data Pengarang</a>
        <a href="https://drive.google.com/drive/folders/1He8wtmRW-NNJILiZB1qEBc5x404p-3lC?usp=sharing">Download Source</a>
        <div class="input-group">
            <a href="logout.php" class="active">Logout</a>
            </div>
    </div>
    </center>
</body>
</html>
