<?php
 $path = $_SERVER['DOCUMENT_ROOT'];
 $path .= "/perpus/koneksi.php";
 include_once($path);
$id_penerbit = $_GET["id"];
//mengambil id yang ingin dihapus

    //jalankan query DELETE untuk menghapus data
    $query = "DELETE FROM penerbit WHERE id_penerbit = '$id_penerbit'";
    $result = mysqli_query($koneksi, $query);

    //periksa query, apakah ada kesalahan
    if(!$result) {
      die ("Gagal menghapus data: ".mysqli_errno($koneksi).
       " - ".mysqli_error($koneksi));
    } else {
      echo "<script>alert('Data berhasil dihapus.');
      window.location='penerbit.php';
      </script>";
    }
?>