<?php
// memanggil file koneksi.php untuk melakukan koneksi database
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/perpus/koneksi.php";
include_once($path);
// membuat variabel untuk menampung data dari form
 $id_pengrang = $_POST['id'];
 $id_pengarang = $_POST['id_pengarang'];
 $nama = $_POST['nama'];
 $alamat = $_POST['alamat'];
 $telp = $_POST['telp'];
//cek dulu jika ada gambar buku jalankan coding ini
//if(($stock != "") && ($isbn != "") && ($id_pengarang != "") && ($id_penerbit !=""))
// {
 $query = "UPDATE pengarang SET id_pengarang = '$id_pengarang', nama = '$nama',
alamat = '$alamat', telp = '$telp'";
 $query .= "WHERE id_pengarang = '$id_pengarang'";
 $result = mysqli_query($koneksi, $query);
 // periska query apakah ada error
 if(!$result){
 die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
 " - ".mysqli_error($koneksi));
 }
 else {
 //tampil alert dan akan redirect ke halaman index.php
  //silahkan ganti index.php sesuai halaman yang akan dituju
  echo "<script>alert('Data berhasil diupdate.');
  window.location='pengarang.php';
  </script>";
   }
  /*
  }
  else
  {
   echo "<script>alert('Data yng diinput belum
  lengkap');window.location='tambah_buku.php';</script>";
  }
  */
  ?>
  