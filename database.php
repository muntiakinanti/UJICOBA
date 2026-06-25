<?php
// koneksi/database.php

class Database {
    private $host = "localhost";
    private $db_name = "db_ujicoba_muntiakinantiputri";
    private $username = "root"; // Sesuaikan dengan username MySQL Anda
    private $password = "";     // Sesuaikan dengan password MySQL Anda
    public $conn;

    // Method untuk mendapatkan koneksi database
    public function getConnection() {
        $this->conn = null;

        try {
            $this->conn = new PDO(
                "mysql:host=" . $this->host . ";dbname=" . $this->db_name, 
                $this->username, 
                $this->password
            );
            // Mengatur error mode PDO ke Exception untuk memudahkan debugging
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->exec("set names utf8");
        } catch(PDOException $exception) {
            echo "Koneksi database gagal: " . $exception->getMessage();
        }

        return $this->conn;
    }
}
?>