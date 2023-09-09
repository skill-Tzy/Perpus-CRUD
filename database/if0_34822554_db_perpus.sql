-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql301.byetcluster.com
-- Waktu pembuatan: 09 Sep 2023 pada 08.26
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_34822554_db_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `isbn` varchar(10) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `id_pengarang` varchar(10) DEFAULT NULL,
  `id_penerbit` varchar(10) DEFAULT NULL,
  `id_kategori` varchar(10) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `sampul` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `isbn`, `judul`, `id_pengarang`, `id_penerbit`, `id_kategori`, `tahun`, `sinopsis`, `stock`, `sampul`) VALUES
(1, '81010101-0', 'WEB DINAMIS XII', 'B0001', 'T001', NULL, NULL, NULL, 60, NULL),
(2, '81010102-0', 'WEB DINAMIS XI', 'B0001', 'T001', NULL, NULL, NULL, 70, NULL),
(3, '81010203-0', 'PEMROGRAMAN BERORIENTASI OBJEK X', 'B0002', 'T001', NULL, NULL, NULL, 70, NULL),
(4, '81010204-0', 'PEMROGRAMAN BERORIENTASI OBJEK XI', 'B0002', 'T001', NULL, NULL, NULL, 70, NULL),
(5, '81012149-0', 'TEKNOLOGI JARINGAN BERBASIS LUAS XI', 'B0021', 'T001', NULL, NULL, NULL, 90, NULL),
(6, '81012150-0', 'TEKNOLOGI JARINGAN BERBASIS LUAS XII', 'B0021', 'T001', NULL, NULL, NULL, 90, NULL),
(7, '81020305-0', 'PEMROGRAMAN DESKTOP XI', 'B0003', 'T002', NULL, NULL, NULL, 50, NULL),
(8, '81020306-0', 'PEMROGRAMAN DESKTOP XI', 'B0003', 'T002', NULL, NULL, NULL, 50, NULL),
(9, '81020407-0', 'BASIS DATA XI', 'B0004', 'T002', NULL, NULL, NULL, 50, NULL),
(10, '81020408-0', 'BASIS DATA XII', 'B0004', 'T002', NULL, NULL, NULL, 50, NULL),
(11, '81022141-0', 'ASMINISTRASI SISTEM JARINGAN XI', 'B0021', 'T002', NULL, NULL, NULL, 130, NULL),
(12, '81022142-0', 'ASMINISTRASI SISTEM JARINGAN XII', 'B0021', 'T002', NULL, NULL, NULL, 125, NULL),
(13, '81030509-0', 'PEMODELAN PERANGKAT LUNAK XI', 'B0005', 'T003', NULL, NULL, NULL, 95, NULL),
(14, '81030510-0', 'PEMODELAN PERANGKAT LUNAK XII', 'B0005', 'T003', NULL, NULL, NULL, 80, NULL),
(15, '81030611-0', 'CODING XI', 'B0006', 'T003', NULL, NULL, NULL, 80, NULL),
(16, '81030612-0', 'CODING XII', 'B0006', 'T003', NULL, NULL, NULL, 80, NULL),
(17, '81032143-0', 'TEKNOLOGI LAYANAN JARINGAN X', 'B0021', 'T003', NULL, NULL, NULL, 95, NULL),
(18, '81032144-0', 'TEKNOLOGI LAYANAN JARINGAN XI', 'B0021', 'T003', NULL, NULL, NULL, 105, NULL),
(19, '81032145-0', 'TEKNOLOGI LAYANAN JARINGAN XII', 'B0021', 'T003', NULL, NULL, NULL, 100, NULL),
(20, '81032146-0', 'PRODUK KREATIF DAN KEWIRAUSAHAAN XII', 'B0021', 'T003', NULL, NULL, NULL, 95, NULL),
(21, '81040713-0', 'PEMROGRAMAN MIKROPROSESOR DAN MIKROKONTROLER X', 'B0007', 'T004', NULL, NULL, NULL, 80, NULL),
(22, '81040714-0', 'PEMROGRAMAN MIKROPROSESOR DAN MIKROKONTROLER XI', 'B0007', 'T004', NULL, NULL, NULL, 80, NULL),
(23, '81040815-0', 'PENERAPAN RANGKAIAN ELEKTRONIKA X', 'B0008', 'T004', NULL, NULL, NULL, 80, NULL),
(24, '81040816-0', 'PENERAPAN RANGKAIAN ELEKTRONIKA XI', 'B0008', 'T004', NULL, NULL, NULL, 80, NULL),
(25, '81042147-0', 'ADMINISTRASI INFRASTRUKTUR JARINGAN XI', 'B0021', 'T004', NULL, NULL, NULL, 125, NULL),
(26, '81042148-0', 'ADMINISTRASI INFRASTRUKTUR JARINGAN XII', 'B0021', 'T004', NULL, NULL, NULL, 105, NULL),
(27, '81050917-0', 'PERENCANAAN DAN INSTALASI SISTEM AUDIO VIDEO X', 'B0009', 'T005', NULL, NULL, NULL, 75, NULL),
(28, '81050918-0', 'PERENCANAAN DAN INSTALASI SISTEM AUDIO VIDEO XI', 'B0009', 'T005', NULL, NULL, NULL, 75, NULL),
(29, '81051019-0', 'PENERAPAN SISTEM RADIO DAN TELEVISI XI', 'B0010', 'T005', NULL, NULL, NULL, 75, NULL),
(30, '81051020-0', 'PENERAPAN SISTEM RADIO DAN TELEVISI XII', 'B0010', 'T005', NULL, NULL, NULL, 75, NULL),
(31, '81061121-0', 'PERAWATAN DAN PERBAIKAN PERALATAN AUDIO VIDEO X', 'B0011', 'T006', NULL, NULL, NULL, 75, NULL),
(32, '81061122-0', 'PERAWATAN DAN PERBAIKAN PERALATAN AUDIO VIDEO XI', 'B0011', 'T006', NULL, NULL, NULL, 75, NULL),
(33, '81061223-0', 'GAMBAR TEKNIK MANUFAKTUR X', 'B0012', 'T006', NULL, NULL, NULL, 75, NULL),
(34, '81061224-0', 'GAMBAR TEKNIK MANUFAKTUR XI', 'B0012', 'T006', NULL, NULL, NULL, 95, NULL),
(35, '81071325-0', 'TEKNIK PEMESINAN BUBUT X', 'B0013', 'T007', NULL, NULL, NULL, 65, NULL),
(36, '81071326-0', 'TEKNIK PEMESINAN BUBUT XI', 'B0013', 'T007', NULL, NULL, NULL, 65, NULL),
(37, '81081427-0', 'TEKNIK PEMESINAN FRAIS X', 'B0014', 'T008', NULL, NULL, NULL, 65, NULL),
(38, '81081428-0', 'TEKNIK PEMESINAN FRAIS XI', 'B0014', 'T008', NULL, NULL, NULL, 65, NULL),
(39, '81091529-0', 'TEKNIK PEMESINAN GERINDA XI', 'B0015', 'T009', NULL, NULL, NULL, 50, NULL),
(40, '81091530-0', 'TEKNIK PEMESINAN GERINDA XII', 'B0015', 'T009', NULL, NULL, NULL, 50, NULL),
(41, '81101631-0', 'TEKNIK PEMESINAN NC CNC DAN CAM XI', 'B0016', 'T010', NULL, NULL, NULL, 95, NULL),
(42, '81101632-0', 'TEKNIK PEMESINAN NC CNC DAN CAM XII', 'B0016', 'T010', NULL, NULL, NULL, 50, NULL),
(43, '81111733-0', 'SISTEM OPERASI X', 'B0017', 'T011', NULL, NULL, NULL, 95, NULL),
(44, '81111734-0', 'KOMUNIKASI DATA X', 'B0017', 'T011', NULL, NULL, NULL, 70, NULL),
(45, '81111835-0', 'SIMULASI DAN KOMUNIKASI DIGITAL X', 'B0018', 'T011', NULL, NULL, NULL, 60, NULL),
(46, '81111836-0', 'SIMULASI DAN KOMUNIKASI DIGITAL XI', 'B0018', 'T011', NULL, NULL, NULL, 60, NULL),
(47, '81121937-0', 'KOMPUTER DAN JARINGAN DASAR X', 'B0019', 'T012', NULL, NULL, NULL, 50, NULL),
(48, '81121938-0', 'KOMPUTER DAN JARINGAN DASAR XI', 'B0019', 'T012', NULL, NULL, NULL, 70, NULL),
(49, '81122039-0', 'SISTEM KOMPUTER X', 'B0020', 'T012', NULL, NULL, NULL, 50, NULL),
(50, '81122040-0', 'SISTEM KOMPUTER XI', 'B0020', 'T012', NULL, NULL, NULL, 80, NULL),
(51, '81152251-0', 'DASAR DESAIN GRAFIS XI', 'B0022', 'T015', NULL, NULL, NULL, 50, NULL),
(52, '81152252-0', 'DASAR DESAIN GRAFIS XI', 'B0022', 'T015', NULL, NULL, NULL, 50, NULL),
(53, '81162253-0', 'PEMROGRAMAN DASAR X', 'B0023', 'T016', NULL, NULL, NULL, 40, NULL),
(54, '81162354-0', 'PEMROGRAMAN DASAR XI', 'B0023', 'T016', NULL, NULL, NULL, 50, NULL),
(55, '81162455-0', 'MICROSOFT WINDOWS XP X', 'B0024', 'T016', NULL, NULL, NULL, 30, NULL),
(56, '81162456-0', 'MICROSOFT WINDOWS XP XI', 'B0024', 'T016', NULL, NULL, NULL, 50, NULL),
(57, '81172557-0', 'LINUX 9', 'B0025', 'T017', NULL, NULL, NULL, 40, NULL),
(58, '81172558-0', 'LINUX 10', 'B0025', 'T017', NULL, NULL, NULL, 50, NULL),
(59, '81172659-0', 'SEJARAH X', 'B0026', 'T017', NULL, NULL, NULL, 50, NULL),
(60, '81172660-0', 'SEJARAH XI', 'B0026', 'T017', NULL, NULL, NULL, 50, NULL),
(61, '81182761-0', 'MATEMATIKA X', 'B0027', 'T018', NULL, NULL, NULL, 80, NULL),
(62, '81182762-0', 'MATEMATIKA XI', 'B0027', 'T018', NULL, NULL, NULL, 80, NULL),
(63, '81182863-0', 'PENDIDIKAN JASMANI OLAHRAGA DAN KESEHATAN X', 'B0027', 'T018', NULL, NULL, NULL, 80, NULL),
(64, '81182864-0', 'PENDIDIKAN JASMANI OLAHRAGA DAN KESEHATAN XI', 'B0027', 'T018', NULL, NULL, NULL, 80, NULL),
(65, '81192965-0', 'ILMU PENGETAHUAN SOSIAL X', 'B0029', 'T019', NULL, NULL, NULL, 50, NULL),
(66, '81192966-0', 'ILMU PENGETAHUAN SOSIAL XI', 'B0029', 'T019', NULL, NULL, NULL, 50, NULL),
(67, '81193067-0', 'ILMU PENGETAHUAN ALAM X', 'B0030', 'T019', NULL, NULL, NULL, 90, NULL),
(68, '81193068-0', 'ILMU PENGETAHUAN ALAM XI', 'B0030', 'T019', NULL, NULL, NULL, 80, NULL),
(69, '81203169-0', 'PENDIDIKAN PANCASIALA DAN KEWARGANEGARAAN X', 'B0031', 'T020', NULL, NULL, NULL, 50, NULL),
(70, '81203170-0', 'PENDIDIKAN PANCASIALA DAN KEWARGANEGARAAN XI', 'B0031', 'T020', NULL, NULL, NULL, 70, NULL),
(71, '81203271-0', 'BAHASA INGGRIS X', 'B0032', 'T020', NULL, NULL, NULL, 50, NULL),
(72, '81203272-0', 'BAHASA INGGRIS XI', 'B0032', 'T020', NULL, NULL, NULL, 60, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_peminjaman`
--

CREATE TABLE `detail_peminjaman` (
  `id_buku` int(11) DEFAULT NULL,
  `id_pinjam` varchar(6) DEFAULT NULL,
  `jumlah_pinjam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(123, 'test');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` varchar(6) NOT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_harus_kembali` date DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `status_pinjam` enum('Pinjam','Kembali') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(10) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `telp` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama`, `alamat`, `telp`) VALUES
('T001', 'Mediatama', 'Solo', '0271-734087'),
('T002', 'Tiga Serangkai', 'Solo', '0271-714344'),
('T003', 'Erlangga', 'Jakarta', '0271-730508'),
('T004', 'Gramedia', 'Jakarta', '0271-714346'),
('T005', 'Bukunesia', 'Yogyakarta', '0271-2836082'),
('T006', 'Grasindo', 'Jakarta', '0271-53650111'),
('T007', 'Bentang Pustaka', 'Yogyakarta', '0271-7370635'),
('T008', 'Yudhistira', 'Solo', '0251-8240628'),
('T009', 'Mizan', 'Yogyakarta', '0274-2839759'),
('T010', 'Andi Publishers', 'Yogyakarta', '024-7605523'),
('T011', 'Agro Media Grup', 'Jakarta', '021-78881000'),
('T012', 'DIVA Press', 'Yogyakarta', '0274-4353776'),
('T013', 'Media Pressindo', 'Yogyakarta', '0274-620879'),
('T014', 'Indiva Media Kreasi', 'Solo', '0271-714666'),
('T015', 'Intan Pariwara', 'Klaten', '0272-322441'),
('T016', 'Pustaka Insan Madani', 'Yogyakarta', '0274-4332394'),
('T017', 'Agia Media', 'Bandung', '022-7202078'),
('T018', 'Puspa Inti Mandiri', 'Semarang', '024-7606714'),
('T019', 'Pustaka Azzam', 'Jakarta', '021-9198439'),
('T020', 'Pustaka Bengawan', 'Sukoharjo', '0271-622086');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengadaan`
--

CREATE TABLE `pengadaan` (
  `id_pengadaan` varchar(6) NOT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `asal_buku` varchar(100) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengarang`
--

CREATE TABLE `pengarang` (
  `id_pengarang` varchar(10) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `telp` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengarang`
--

INSERT INTO `pengarang` (`id_pengarang`, `nama`, `alamat`, `telp`) VALUES
('B0001', 'Abbas Abdurrahman', 'Solo', '0896-6238-8808'),
('B0002', 'Adhyasta Waya', 'Solo', '0859-7287-4944'),
('B0003', 'Alexsandra Nafhika', 'Klaten', '0858-6580-4583'),
('B0004', 'Anton Prihantono', 'Boyolali', '0856-0196-7816'),
('B0005', 'Argia Putri', 'Solo', '0813-9362-5400'),
('B0006', 'Bagas Dzaki', 'Sukoharjo', '0812-1692-1113'),
('B0007', 'Bramantyo Reno', 'Solo', '0895-2949-1207'),
('B0008', 'Bryllant Awan', 'Klaten', '0899-8587-651'),
('B0009', 'Daffa Aditya', 'Solo', '0858-2292-1050'),
('B0010', 'Deandra Rizki', 'Sukoharjo', '0882-3365-7130'),
('B0011', 'Dimas Agus', 'Boyolali', '0881-8097-662'),
('B0012', 'Dimas Mahendra', 'Solo', '0822-8500-4929'),
('B0013', 'Fandoni Perdana', 'Sukoharjo', '0882-3292-1742'),
('B0014', 'Fito Wahyu', 'Karanganyar', '0897-7499-909'),
('B0015', 'Ganjar Mukti', 'Solo', '0895-3920-27755'),
('B0016', 'Hilmy Sonaji', 'Karanganyar', '0896-7426-6685'),
('B0017', 'Irfan Rakha', 'Kartasura', '0888-4006-800'),
('B0018', 'Jofi Adryan', 'Solo', '0812-2597-3070'),
('B0019', 'Kharisma Maharani', 'Solo', '0857-7320-7293'),
('B0020', 'Linda Cahyaningrum', 'Solo', '0838-9980-6011'),
('B0021', 'Muh Adzkia', 'Solo', '0896-6932-0161'),
('B0022', 'Muh Arvin', 'Solo', '0858-7517-6432'),
('B0023', 'Muh Davin', 'Karanganyar', '0858-8351-8188'),
('B0024', 'Muh Ifthor', 'Sukoharjo', '0895-3630-57898'),
('B0025', 'Muh Rofiq', 'Karanganyar', '0822-2861-2331'),
('B0026', 'Ria Ningrum', 'Sukoharjo', '0814-7550-6011'),
('B0027', 'Ridwan Nur', 'Klaten', '0857-4189-5283'),
('B0028', 'Rizky Lukmanul', 'Karanganyar', '0896-8138-0423'),
('B0029', 'Rizqi Nur', 'Solo', '0888-2465-842'),
('B0030', 'Satria Aji', 'Karanganyar', '0812-2564-0817'),
('B0031', 'Walid Wulida', 'Solo', '0896-3097-3822'),
('B0032', 'Wildan Akbar', 'Solo', '0895-0615-0397');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_kembali` varchar(6) NOT NULL,
  `id_pinjam` varchar(6) DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `denda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nama_siswa` varchar(50) DEFAULT NULL,
  `jkel` varchar(1) DEFAULT NULL,
  `tmp_lahir` varchar(25) DEFAULT NULL,
  `tgl_lahir` varchar(25) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_hp` int(15) DEFAULT NULL,
  `foto_siswa` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `nama_siswa`, `jkel`, `tmp_lahir`, `tgl_lahir`, `alamat`, `no_hp`, `foto_siswa`) VALUES
('123456789', 'Teknisi', 'P', 'Solo', '10', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp_peminjaman`
--

CREATE TABLE `temp_peminjaman` (
  `id_temp` int(11) NOT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `jumlah_pinjam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_admin`, `username`, `email`, `password`) VALUES
(1, 'Niagahoster Tutorial', 'nhtutorial@gmail.com', '0139a3c5cf42394be982e766c93f5ed0'),
(2, 'teknisi', 'teknisi@gmail.com', '25d55ad283aa400af464c76d713c07ad'),
(3, 'adzkia', 'adzkia@gmal.com', '202cb962ac59075b964b07152d234b70'),
(4, 'user1', 'user1@gmail.com', '6ad14ba9986e3615423dfca256d04e3f'),
(5, 'noc', 'noc@gmail.com', '25d55ad283aa400af464c76d713c07ad'),
(6, 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'zalfa', 'zalfa9273@gmail.com', '25d55ad283aa400af464c76d713c07ad'),
(8, 'Siti Qomariyah', 'siti1qomariyah@gmail.com', '25d55ad283aa400af464c76d713c07ad');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `fkKhairul` (`id_pengarang`),
  ADD KEY `fkMediatama` (`id_penerbit`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indeks untuk tabel `pengadaan`
--
ALTER TABLE `pengadaan`
  ADD PRIMARY KEY (`id_pengadaan`);

--
-- Indeks untuk tabel `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`id_pengarang`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_kembali`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `temp_peminjaman`
--
ALTER TABLE `temp_peminjaman`
  ADD PRIMARY KEY (`id_temp`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fkKhairul` FOREIGN KEY (`id_pengarang`) REFERENCES `pengarang` (`id_pengarang`),
  ADD CONSTRAINT `fkMediatama` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id_penerbit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
