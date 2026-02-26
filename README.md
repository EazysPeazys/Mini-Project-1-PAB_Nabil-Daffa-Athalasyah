# 📈 Nabdaff Management Portfolio System

---

## 👤 Informasi Project
* **Nama**: Nabil Daffa Athalasyah
* **NIM**: 2409116090
* **Kelas**: C 2024
* **Mata Kuliah**: Praktikum Pemrograman Aplikasi Bergerak

---

## 📝 Deskripsi Aplikasi
**Nabdaff Management Portfolio System** adalah aplikasi mobile berbasis Flutter yang dirancang untuk membantu pengguna mengelola portofolio investasi mereka secara digital. Dengan sistem ini, pengguna dapat mencatat aset dari berbagai instrumen seperti Saham, Crypto, Emas, hingga Property dalam satu aplikasi yang aman dan estetik dengan tema **Premium Navy & Gold**.

---

## 🚀 Dokumentasi Tampilan Aplikasi

### 1. Landing Page

<img width="627" height="1020" alt="Screenshot 2026-02-26 090406" src="https://github.com/user-attachments/assets/b1f0312b-7c1e-4cd9-8dbf-0c550a481fc3" />

**Deskripsi:**

Halaman pembuka yang menyambut pengguna dengan desain elegan bertema *Premium Navy & Gold*. Halaman ini berfungsi sebagai gerbang utama dan memiliki tombol navigasi **"Start Managing Portfolio"** untuk masuk ke sistem utama.

### 2. Halaman Utama (Home & Portfolio)

<img width="631" height="1018" alt="Screenshot 2026-02-26 122109" src="https://github.com/user-attachments/assets/3ab04127-99db-4e5a-b216-dcd36dd840b2" />

**Deskripsi:**

Halaman ini menampilkan seluruh daftar aset yang dimiliki (Fitur Read). Data ditampilkan dalam bentuk kartu (Card) yang berisi nama aset, kategori, dan nominal.

### 3. Form Input Investasi (Create)

<img width="631" height="1022" alt="Screenshot 2026-02-26 122608" src="https://github.com/user-attachments/assets/79d4b9ad-1673-4185-a518-6b225a3e1344" />

**Deskripsi:**

Formulir yang digunakan untuk menambahkan aset baru. Pengguna memilih kategori melalui **Dropdown**, memasukkan nama aset, dan nominal. Terdapat validasi untuk memastikan data tidak kosong sebelum disimpan.

### 4. Fitur Update (Edit Aset)

<img width="630" height="1020" alt="Screenshot 2026-02-26 122646" src="https://github.com/user-attachments/assets/ea504f3a-33b6-45f6-8d31-00ed818f4e9a" />

**Deskripsi:**

Pengguna dapat mengubah data dengan menekan **Icon Edit (Pensil Biru)** pada daftar aset. Aplikasi akan mengarahkan pengguna kembali ke halaman Form dengan data lama yang sudah terisi otomatis. Setelah disimpan, data akan diperbarui secara real-time disertai notifikasi **SnackBar** berwarna biru.

### 5. Fitur Delete (Hapus Aset)

<img width="630" height="1019" alt="Screenshot 2026-02-26 122657" src="https://github.com/user-attachments/assets/a67ab4be-5c9e-4de3-a819-b6f4f9ba434a" />

**Deskripsi:**

Untuk menghapus aset, pengguna cukup menekan **Icon Delete (Tempat Sampah Merah)**. Data akan langsung terhapus dari daftar portofolio, dan aplikasi akan memunculkan **SnackBar** berwarna merah sebagai konfirmasi bahwa data telah berhasil dihapus.

### 6. Fitur Filter Kategori

<img width="629" height="1020" alt="Screenshot 2026-02-26 122617" src="https://github.com/user-attachments/assets/e42b0076-ec69-499d-896f-6703ce609993" />

**Deskripsi:**

Terdapat fitur **ChoiceChips** di bagian atas halaman utama yang memungkinkan pengguna menyaring daftar aset berdasarkan 7 kategori (Deposito, Reksa Dana, Obligasi, Emas, Saham, Crypto, Property). Filter "All" digunakan untuk menampilkan kembali seluruh aset.

---

## 🛠️ Widget yang Digunakan

1. **Scaffold**: Widget kerangka utama yang menyediakan struktur dasar halaman (AppBar, Body, dan FloatingActionButton).
2. **AppBar**: Header di setiap halaman. Pada halaman utama, AppBar menggunakan warna kustom **Greyish-Cream** agar judul terlihat profesional.
3. **ListView.builder**: Digunakan untuk merender daftar investasi secara dinamis dan efisien sesuai jumlah data.
4. **TextFormField**: Menangkap input teks (Nama Aset) dan angka (Nominal) dengan dekorasi *OutlineInputBorder*.
5. **DropdownButtonFormField**: Widget untuk memilih 1 dari 7 kategori instrumen investasi agar input data valid dan konsisten.
6. **ElevatedButton**: Tombol utama dengan desain kustom (Hitam dengan teks Putih) yang digunakan pada Landing Page dan Form.
7. **ChoiceChip**: Widget interaktif berbentuk pil untuk fitur filter kategori agar user-interface lebih modern dan mudah digunakan.
8. **SnackBar**: Notifikasi melayang yang memberikan feedback instan (Hore!/Mantap!) setelah pengguna melakukan aksi Tambah, Edit, atau Hapus.
9. **Card & ListTile**: Digunakan untuk membungkus rincian aset agar memiliki tampilan yang terorganisir dengan bayangan (elevation) yang halus.
10. **Container & BoxDecoration**: Digunakan untuk membuat latar belakang gradien Navy Blue pada Landing Page.

---

## 📁 Struktur Proyek
```text
lib/
├── main.dart             // Entry point aplikasi & konfigurasi tema
├── models/
│   └── investment.dart   // Model data (Class Investment)
└── pages/
    ├── landing_page.dart // UI Halaman Awal (Navy & Gold)
    ├── home_page.dart    // UI Daftar Portofolio, Filter, & Delete
    └── form_page.dart    // UI Input Data (Create & Update)
