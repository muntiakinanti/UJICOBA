<?php
// DaftarMenu.php

abstract class DaftarMenu {
    // Properti Terenkapsulasi (Encapsulated Attributes)
    protected $id_transaksi;
    protected $jenis_transaksi;
    protected $nama_pelanggan_atau_supplier;
    protected $nama_produk;
    protected $harga_satuan;
    protected $jumlah;

    // Constructor untuk menginisialisasi properti saat objek dibuat
    public function __construct($jenis, $entitas, $produk, $harga, $jumlah) {
        $this->jenis_transaksi = $jenis;
        $this->nama_pelanggan_atau_supplier = $entitas;
        $this->nama_produk = $produk;
        $this->harga_satuan = $harga;
        $this->jumlah = $jumlah;
    }

    // --- GETTER & SETTER (Enkapsulasi) ---
    public function getNamaProduk() {
        return $this->nama_produk;
    }

    public function setNamaProduk($nama_produk) {
        $this->nama_produk = $nama_produk;
    }

    public function getHargaSatuan() {
        return $this->harga_satuan;
    }

    public function setHargaSatuan($harga_satuan) {
        $this->harga_satuan = $harga_satuan;
    }

    // --- METODE ABSTRAK (Tanpa Isi / Body) ---
    // Kedua method wajib diimplementasikan secara spesifik oleh class anak (turunannya)
    abstract public function hitungTotalBiaya();
    abstract public function tampilkanInfoJalur();
}
?>