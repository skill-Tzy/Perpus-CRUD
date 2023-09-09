<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/perpus/koneksi.php";
include_once($path);
?>
<!DOCTYPE html>
<html>
 <head>
 <title>Daftar Buku di Perpustakaan SMK</title>
 <style type="text/css">
 * {
 font-family: "Trebuchet MS";
 }
 h1 {
 text-transform: uppercase;
 color: salmon;
}
 table {
 border: solid 1px #DDEEEE;
 border-collapse: collapse;
 border-spacing: 0;
 width: 100%;
 margin: 10px auto 10px auto;
 }
 table thead th {
 background-color: #DDEFEF;
 border: solid 1px #DDEEEE;
 color: #336B6B;
 padding: 10px;
 text-align: left;
 text-shadow: 1px 1px 1px #fff;
 text-decoration: none;
 }
 table tbody td {
 border: solid 1px #DDEEEE;
 color: #333;
 padding: 10px;
 text-shadow: 1px 1px 1px #fff;
 }
 a {
 background-color: salmon;
 color: #fff;
 padding: 10px;
 text-decoration: none;
 font-size: 12px;
 }
 </style>
 </head>
 <body>
 <center><h1>Data Buku</h1><center>
 <center><a href="tambah_buku.php">+ &nbsp; Tambah Buku</a><center>
 <br/>
 <table>
 <thead>
 <tr>
 <th>No</th>
 <th>ISBN</th>
 <th>Judul</th>
 <th>Kode Pengarang</th>
 <th>Kode Penerbit</th>
 <th>Jumlah</th>
 <th>Aksi</th>
 </tr>
 </thead>
 <tbody>
 <?php
 // jalankan query untuk menampilkan semua data diurutkan berdasarkan id
 $query = "SELECT * FROM buku";
 $result = mysqli_query($koneksi, $query);
 //mengecek apakah ada error ketika menjalankan query
 if(!$result){
 die ("Query Error: ".mysqli_errno($koneksi).
 " - ".mysqli_error($koneksi));
 }
 $no = 1; //variabel untuk membuat nomor urut
 // hasil query akan disimpan dalam variabel $data dalam bentuk array
 // kemudian dicetak dengan perulangan while
 while($row = mysqli_fetch_assoc($result))
 {
 ?>
 <tr>
 <td><?php echo $no; ?></td>
 <td><?php echo $row['isbn']; ?></td>
 <td><?php echo $row['judul']; ?></td>
 <td><?php echo $row['id_pengarang']; ?></td>
 <td><?php echo $row['id_penerbit']; ?></td>
 <td><?php echo $row['stock']; ?></td>

 <td>
 <a href="edit_buku.php?id=<?php echo $row['id_buku']; ?>">Edit</a> |
 <a href="proses_hapus_buku.php?id=<?php echo $row['id_buku']; ?>" onclick="return confirm('Anda yakin akan menghapus data ini?')">Hapus</a>
 </td>
 </tr>

 <?php
 $no++; //untuk nomor urut terus bertambah 1
 }
 ?>
 </tbody>
 </table>
 </body>
</html>