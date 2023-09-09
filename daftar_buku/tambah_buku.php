<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/perpus/koneksi.php";
include_once($path);

?>
<!DOCTYPE html>
<html>
 <head>
 <title>Tambah Buku</title>
 <style type="text/css">
 * {
 font-family: "Trebuchet MS";
 }
 h1 {
 text-transform: uppercase;
 color: salmon;
 }
 button {
 background-color: salmon;
 color: #fff;
 padding: 10px;
 text-decoration: none;
 font-size: 12px;
 border: 0px;
 margin-top: 20px;
 }
 label {
 margin-top: 10px;
 float: left;
 text-align: left;
 width: 100%;
 }
 input {
    padding: 6px;
 width: 100%;
 box-sizing: border-box;
 background: #f8f8f8;
 border: 2px solid #ccc;
 outline-color: salmon;
 }
 div {
 width: 100%;
 height: auto;
 }
 .base {
 width: 400px;
 height: auto;
 padding: 20px;
 margin-left: auto;
 margin-right: auto;
 background: #ededed;
 }
 </style>
 </head>
 <body>
 <center>
 <h1>Form Tambah Buku</h1>
 <center>
 <form method="POST" action="proses_tambah_buku.php" enctype="multipart/formdata" >
 <section class="base">
 <div>
 <label>ISBN</label>
 <input type="text" name="isbn" autofocus="" required="" />
 </div>
 <div>
 <label>Judul Buku</label>
 <input type="text" name="judul" />
 </div>
 <div>
 <label>ID Pengarang</label>
 <input type="text" name="id_pengarang" required="" />
 </div>
 <div>
 <label>ID Penerbit</label>
 <input type="text" name="id_penerbit" required="" />
 </div>
 <div>
 <label>Stock</label>
 <input type="text" name="stock" required="" />
 </div>
 <div>
 <button type="submit">Simpan</button>
 </div>
 </section>
 </form>
 </body>
</html>