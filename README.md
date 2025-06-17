# LATIHAN UAS PBF

Proyek ini adalah frontend Laravel yang berfungsi menampilkan, menambah, mengedit, dan menghapus data mahasiswa melalui **REST API CodeIgniter 4** sebagai backend.

---

##  Tools yang Digunakan

- Laravel 10 (Frontend)
- CodeIgniter 4 (Backend API)
- MySQL (Database)
- Bootstrap 5 (Tampilan UI)
- Postman (Pengujian API)

---
## Langkah-langkah 
Pastikan Anda telah menginstal Composer dan lingkungan PHP yang sesuai.

1.  *Clone Repository:*
    Salin tautan repository GitHub dan clone ke sistem lokal.
    bash
    git clone https://github.com/AlvaRezal123/Backend_Kelompok1.
    

2.  *Buat Folder Proyek:*
    Buat folder sesuai dengan instruksi yang diberikan, misalnya uas_pbf.

3.  *Masuk ke Direktori Proyek:*
    Arahkan Command Prompt (CMD) atau Terminal Anda ke dalam folder proyek yang baru saja di-clone.
    

4.  *Akses Folder Backend:*
    Masuk ke direktori Backend-Kelompok di dalam folder proyek Anda.
    bash
    cd Backend-Kelompok1.
    

5.  *Buka di Code Editor:*
    Buka proyek ini di Visual Studio Code (atau code editor pilihan Anda) menggunakan perintah:
    bash
    code .

6.  *Import Database:*
    Import database Anda dan berikan nama yang sesuai.Misalnya: sistem_manajemen_magang

7.  *Sistem Manajemen Magang:*
    Fokus pada file database.php dan sesuaikan nama database jika diperlukan. 
App/Config/Database.php
     public array $default = [
        'DSN'          => '',
        'hostname'     => 'localhost',
        'username'     => 'root',
        'password'     => '',
        'database'     => 'sistem_manajemen_magang',
        'DBDriver'     => 'MySQLi',
        'DBPrefix'     => '',

8.  *Buat Collection (untuk API Testing):*
    Buat koleksi di alat pengujian API seperti Postman atau Insomnia untuk menguji request GET, POST, PUT, dan DELETE.
- Get (Mengambil / Mendapatkan)
- Post (pos / mengirim data ke server)
- Put (Menggantikan / memperbarui)
- Patch (untuk memperbarui sebagian dari sumber daya yang sudah ada di server, tanpa mengganti seluruhnya)
- Head (untuk mendapatkan header respons dari server tanpa memuat konten sebenarnya)
- Options (untuk meminta informasi tentang opsi komunikasi yang tersedia untuk sumber daya tertentu, opsi permintaan, pengaturan, Opsi CLI (Command Line Interface)



10.  *Install Dependencies:*
    Jalankan perintah Composer untuk menginstal semua dependensi proyek di dalam terminal backend_kelompok1
    bash
    composer install
    

11.  *Jalankan Aplikasi:*
    Setelah semua dependensi terinstal, jalankan aplikasi menggunakan perintah:
    bash
    php artisan serve

## Frontend

Jika ada proyek frontend terpisah yang terhubung dengan backend ini, Anda bisa menyertakan instruksi atau referensi ke repositori frontend di sini.



# Push ke Github

- Membuat repo
- git init
- git add .
- git commit -m "first commit"
- git branch -M main
- git remote add origin main link GitHub
- git push -u origin main


