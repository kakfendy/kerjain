# KerjaIN Apps

KerjaIN Apps adalah aplikasi modern yang dirancang untuk menjadi solusi praktis bagi masyarakat urban yang membutuhkan bantuan menyelesaikan pekerjaan sehari-hari. Aplikasi ini menggunakan Flutter dengan bahasa pemrograman Dart.

## Deskripsi Aplikasi

KerjaIN Apps bertujuan untuk menjawab kebutuhan masyarakat urban yang memiliki mobilitas tinggi. Aplikasi ini menghubungkan pengguna dengan tenaga kerja profesional untuk menyelesaikan tugas rumah tangga, perbaikan, atau layanan lain tanpa komitmen jangka panjang.

### Fitur Utama
KerjaIN Apps dirancang berdasarkan fungsi CRUD (Create, Read, Update, Delete):

- **Create**: Pembuatan akun, pemesanan, ulasan, dan berbagi referensi.
- **Read**: Menampilkan daftar layanan, ulasan pekerja, riwayat pemesanan, dan promosi.
- **Update**: Mengubah profil pengguna, jadwal pemesanan, dan preferensi notifikasi.
- **Delete**: Membatalkan pemesanan dan menghapus data yang tidak diperlukan.

### Tampilan Utama
- **Screen Login**: Login menggunakan nomor HP, email, atau akun Instagram.
- **Screen Home**: Menyediakan navigasi utama untuk layanan seperti Home Service dan Home Construction.
- **Screen Booking**: Mengelola pemesanan aktif dan riwayat pemesanan.
- **Screen Account**: Memungkinkan pengelolaan profil, favorit, dan preferensi pengguna.

## Struktur Proyek
Proyek ini menggunakan struktur folder berikut:
- **lib/main.dart**: Titik masuk aplikasi.
- **lib/screens/**: Layar utama aplikasi.
- **lib/widgets/**: Widget kecil yang reusable.
- **lib/models/**: Model data.
- **lib/services/**: Layanan backend seperti API call.
- **lib/utils/**: Fungsi utilitas.
- **lib/theme/**: Definisi tema aplikasi.

## Teknologi
- Framework: Flutter
- Bahasa Pemrograman: Dart

## Kontribusi
- **Aditya Aji Pamungkas**
  - Screen Login
  - Screen Home
  - Screen Booking
- **Kevin Andreas Kurniawan Effendy**
  - Screen Account
  - Search Screen

## Instalasi
1. Clone repositori ini:
   ```bash
   git clone https://github.com/kakfendy/kerjain
   ```
2. Masuk ke direktori proyek:
   ```bash
   cd kerjain
   ```
3. Jalankan perintah berikut untuk menginstal dependensi:
   ```bash
   flutter pub get
   ```
4. Jalankan aplikasi:
   ```bash
   flutter run
   ```

## Dokumentasi Lebih Lanjut
Dokumentasi lengkap kode tersedia di [KerjaIN GitHub](https://github.com/kakfendy/kerjain).

## Lisensi
Proyek ini menggunakan lisensi [MIT](LICENSE).