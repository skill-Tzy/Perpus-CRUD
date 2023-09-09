<?php
// memanggil file koneksi.php untuk melakukan koneksi database
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/perpus/koneksi.php";
include_once($path);
// membuat variabel untuk menampung data dari form
 $isbn = $_POST['isbn'];
 $judul = $_POST['judul'];
 $id_pengarang = $_POST['id_pengarang'];
 $id_penerbit = $_POST['id_penerbit'];
 $stock = $_POST['stock'];
//cek dulu jika ada gambar buku jalankan coding ini
//if(($stock != "") && ($isbn != "") && ($id_pengarang != "") && ($id_penerbit !=""))
// {
 $query = "INSERT INTO buku (isbn, judul, id_pengarang, id_penerbit, stock) VALUES ('$isbn', '$judul', '$id_pengarang', '$id_penerbit', '$stock')";
 $result = mysqli_query($koneksi, $query);
 // periska query apakah ada error
 if(!$result){
 die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
 " - ".mysqli_error($koneksi));
 }
 else {
 //tampil alert dan akan redirect ke halaman index.php
 //silahkan ganti index.php sesuai halaman yang akan dituju
 echo "<script>alert('Data berhasil ditambah.');
 window.location='buku.php';
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