<?php
// JalurPembelian.php
include_once 'DaftarMenu.php';

class JalurPembelian extends DaftarMenu {
    private $tanggal;
    private $kategori_produk;

    // Constructor untuk kelas anak, memanggil constructor parent (DaftarMenu)
    public function __construct($tanggal, $supplier, $produk, $kategori, $harga, $jumlah) {
        parent::__construct('Pembelian', $supplier, $produk, $harga, $jumlah);
        $this->tanggal = $tanggal;
        $this->kategori_produk = $kategori;
    }

    // Implementasi metode abstrak untuk menghitung biaya pembelian (Restock)
    public function hitungTotalBiaya() {
        return $this->harga_satuan * $this->jumlah;
    }

    // Implementasi metode abstrak untuk menampilkan info jalur transaksi
    public function tampilkanInfoJalur() {
        return "<strong>[JALUR PEMBELIAN]</strong> Restock barang '" . $this->nama_produk . "' dari Supplier (" . $this->nama_pelanggan_atau_supplier . ") pada tanggal " . $this->tanggal;
    }
}
?>