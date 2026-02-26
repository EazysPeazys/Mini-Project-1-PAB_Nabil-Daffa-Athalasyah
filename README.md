# 📈 Nabdaff Management Portfolio System

---

## 👤 Informasi Project

**Nama: Nabil Daffa Athalasyah**

**NIM: 2409116090**

**Kelas: C 2024**

**Mini Project Pemrograman Berbasis Web**

---

### Mini Project 1 - Praktikum Pemrograman Aplikasi Bergerak

Aplikasi **Nabdaff Management Portfolio System** adalah platform manajemen aset investasi sederhana yang dirancang untuk membantu pengguna melacak berbagai instrumen investasi (seperti Saham, Crypto, Emas, dll.) dalam satu wadah yang terorganisir. Aplikasi ini dibangun menggunakan framework Flutter dengan menerapkan prinsip desain yang elegan dan user-friendly.

---

## 🚀 Fitur Utama
Aplikasi ini telah memenuhi seluruh kriteria **Fitur Wajib** dan menyertakan **Nilai Tambah** sesuai instruksi:

* **Manajemen Data (CRUD)**:
    * **Create**: Menambahkan aset investasi baru melalui formulir input.
    * **Read**: Menampilkan daftar portofolio secara real-time di halaman utama.
    * **Update**: Fitur untuk mengubah data aset yang sudah terdaftar (Nilai Tambah).
    * **Delete**: Menghapus data aset dari daftar.
* **Sistem Input**: Memiliki minimal 3 TextField (Kategori, Nama Aset, dan Nominal).
* **Navigasi Multi-Halaman**: Menggunakan navigasi dari Landing Page menuju Home Page (Nilai Tambah).
* **Filter Kategori**: Menyaring daftar aset berdasarkan jenis instrumen investasi.
* **Notifikasi Interaktif**: Menampilkan SnackBar (pesan sukses) saat berhasil menambah, mengubah, atau menghapus data.

---

## 🎨 Tema Aplikasi
Aplikasi ini menggunakan tema **Premium Navy & Gold**:
* **Background**: Biru Navy pekat untuk kesan profesional dan elegan.
* **Aksen**: Warna Kuning Keemasan (Gold) pada icon dan border tombol untuk menonjolkan elemen penting.
* **Header**: Warna Abu-abu terang (Greyish-Cream) pada AppBar agar teks judul mudah dibaca.

---

## 🛠️ Widget yang Digunakan
Berikut adalah daftar widget utama yang digunakan beserta fungsinya:

1.  **Scaffold**: Widget utama untuk menyediakan struktur dasar halaman (AppBar, Body, FloatingActionButton).
2.  **AppBar**: Digunakan untuk menampilkan judul aplikasi di bagian atas dengan kustomisasi warna.
3.  **ListView.builder**: Menampilkan daftar investasi secara dinamis dan efisien sesuai jumlah data yang ada.
4.  **TextFormField**: Menangkap input teks dari pengguna untuk Nama Aset dan Nominal investasi.
5.  **DropdownButtonFormField**: Menyediakan pilihan kategori instrumen investasi dalam bentuk daftar pilihan.
6.  **ElevatedButton**: Tombol dengan desain khusus untuk navigasi dan aksi simpan data.
7.  **ChoiceChip**: Widget interaktif yang digunakan untuk fitur filter kategori di halaman utama.
8.  **Card & ListTile**: Digunakan untuk membungkus rincian setiap aset agar tampilan daftar terlihat rapi.
9.  **SnackBar**: Memberikan umpan balik visual (notifikasi) setelah pengguna melakukan aksi CRUD.
10. **Container & BoxDecoration**: Digunakan untuk membuat latar belakang gradien dan styling dekoratif lainnya.

---

## 📁 Struktur Proyek
```text
lib/
├── main.dart             // Entry point aplikasi
├── models/
│   └── investment.dart   // Model data (Class Investment)
└── pages/
    ├── landing_page.dart // Halaman pembuka aplikasi
    ├── home_page.dart    // Halaman utama (List & Filter)
    └── form_page.dart    // Halaman tambah & edit data
