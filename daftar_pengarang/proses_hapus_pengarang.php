<?php
 $path = $_SERVER['DOCUMENT_ROOT'];
 $path .= "/perpus/koneksi.php";
 include_once($path);
$id_pengarang = $_GET["id"];
//mengambil id yang ingin dihapus

    //jalankan query DELETE untuk menghapus data
    $query = "DELETE FROM pengarang WHERE id_pengarang = '$id_pengarang'";
    $result = mysqli_query($koneksi, $query);

    //periksa query, apakah ada kesalahan
    if(!$result) {
      die ("Gagal menghapus data: ".mysqli_errno($koneksi).
       " - ".mysqli_error($koneksi));
    } else {
      echo "<script>alert('Data berhasil dihapus.');
      window.location='pengarang.php';
      </script>";
    }
?>