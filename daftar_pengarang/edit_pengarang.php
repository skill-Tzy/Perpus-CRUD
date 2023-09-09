<?php
 // memanggil file koneksi.php untuk membuat koneksi
 $path = $_SERVER['DOCUMENT_ROOT'];
   $path .= "/perpus/koneksi.php";
   include_once($path);
 // mengecek apakah di url ada nilai GET id
 if (isset($_GET['id'])) {
 // ambil nilai id dari url dan disimpan dalam variabel $id
 $id_pengarang = ($_GET["id"]);
 // menampilkan data dari database yang mempunyai id=$id
 $query = "SELECT * FROM pengarang WHERE id_pengarang='$id_pengarang'";
 $result = mysqli_query($koneksi, $query);
 // jika data gagal diambil maka akan tampil error berikut
 if(!$result){
 die ("Query Error: ".mysqli_errno($koneksi).
 " - ".mysqli_error($koneksi));
 }
 // mengambil data dari database
 $data = mysqli_fetch_assoc($result);
 // apabila data tidak ada pada database maka akan dijalankan perintah ini
 if (!count($data)) {
 echo "<script>alert('Data tidak ditemukan pada database');
 window.location='pengarang.php';
 </script>";
}
} else {
    // apabila tidak ada data GET id pada akan di redirect ke index.php
    echo "<script>alert('Masukkan data id pengarang.');
    window.location='pengarang.php';
    </script>";
    }
    ?>
   <!DOCTYPE html>
   <html>
    <head>
    <title>Perpustakaan</title>
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
 <h1>Edit Pengarang <?php echo $data['nama']; ?></h1>
 <center>
 <form method="POST" action="proses_edit_pengarang.php" enctype="multipart/form-data"
>
 <section class="base">
 <!-- menampung nilai id produk yang akan di edit -->
 <input name="id" value="<?php echo $data['id_pengarang']; ?>" hidden />
 <div>
 <label>ID Pengarang</label>
 <input type="text" name="id_pengarang" value="<?php echo $data['id_pengarang']; ?>"
autofocus="" required="" />
 </div>
 <div>
 <label>Nama</label>
 <input type="text" name="nama" value="<?php echo $data['nama']; ?>"
autofocus="" required="" />
 </div>
 <div>
 <label>Alamat</label>
 <input type="text" name="alamat" value="<?php echo $data['alamat']; ?>" />
 </div>
 <div>
 <label>Telp</label>
 <input type="text" name="telp" required=""value="<?php echo $data['telp']; ?>" />
 </div>

 <div>
 <button type="submit">Simpan Perubahan</button>
 </div>
 </section>
 </form>
 </body>
</html>