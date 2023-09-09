<?php
 $path = $_SERVER['DOCUMENT_ROOT'];
 $path .= "/perpus/koneksi.php";
 include_once($path);
?>
<!DOCTYPE html>
<html>
 <head>
 <title>Tambah Penerbit</title>
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
 <h1>Form Tambah Penerbit</h1>
 <center>
 <form method="POST" action="proses_tambah_penerbit.php" enctype="multipart/formdata" >
 <section class="base">
 <div>
 <label>ID Penerbit</label>
 <input type="text" name="id_penerbit" autofocus="" required="" />
 </div>
 <div>
 <label>Nama</label>
 <input type="text" name="nama" />
 </div>
 <div>
 <label>Alamat</label>
 <input type="text" name="alamat" required="" />
 </div>
 <div>
 <label>Telp</label>
 <input type="text" name="telp" required="" />
 </div>
 <div>
 <button type="submit">Simpan</button>
 </div>
 </section>
 </form>
 </body>
</html>