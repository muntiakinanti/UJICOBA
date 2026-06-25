<?php
// JalurPenjualan.php
include_once 'DaftarMenu.php';

class JalurPenjualan extends DaftarMenu {
    private $tanggal;
    private $kategori_produk;

    // Constructor untuk kelas anak
    public function __construct($tanggal, $pelanggan, $produk, $kategori, $harga, $jumlah) {
        parent::__construct('Penjualan', $pelanggan, $produk, $harga, $jumlah);
        $this->tanggal = $tanggal;
        $this->kategori_produk = $kategori;
    }

    // Implementasi metode abstrak untuk menghitung total belanja pelanggan
    public function hitungTotalBiaya() {
        // Polimorfisme: Rumus dasarnya sama, namun bisa dikembangkan jika ada logika diskon pelanggan khusus koperasi nantinya
        return $this->harga_satuan * $this->jumlah;
    }

    // Implementasi metode abstrak untuk menampilkan info jalur transaksi
    public function tampilkanInfoJalur() {
        return "<strong>[JALUR PENJUALAN]</strong> Penjualan barang '" . $this->nama_produk . "' kepada Pelanggan (" . $this->nama_pelanggan_atau_supplier . ") pada tanggal " . $this->tanggal;
    }
}
?>