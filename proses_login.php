<?php

include('koneksi.php');

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = mysqli_real_escape_string($koneksi, $_POST['email']);
    $password = mysqli_real_escape_string($koneksi, md5($_POST['password']));

    $query = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
    $queryDB = mysqli_query($koneksi, $query);
    $check = mysqli_num_rows($queryDB);

    if ($check > 0) {
        // ambil data users
        $getData = mysqli_fetch_array($queryDB);
        // set session 
        $_SESSION['name'] = $getData;
        $_SESSION['is_login']  = true;

        header("location: menu.php");
    } else {
        echo "Email atau password yang anda masukkan salah";
    }
} else {
    return "Anda tidak di ijinkan";
}
?>