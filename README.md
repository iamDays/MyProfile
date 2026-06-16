# Personal Portfolio & Resume

Website portfolio pribadi dan resume profesional. Dibangun dengan desain yang modern, responsif, dan performa tinggi (dark-mode theme).

## Fitur Utama

- **Home & Hero Section**: Perkenalan singkat dengan animasi typing dan efek paralaks.
- **About Me**: Profil singkat, informasi kontak, dan deskripsi karir.
- **Resume & CV**: 
  - Tampilan web interaktif untuk riwayat pengalaman dan edukasi.
  - Halaman terpisah khusus untuk cetak/Print (`cv.html`) yang dioptimalkan untuk ukuran kertas A4.
- **Portfolio Showcase**: Menampilkan 6 proyek terbaik dengan detail halaman untuk setiap proyek (Sales Dashboard, Vendor Management, dsb).
- **Music Player Terintegrasi**: 
  - Dibangun murni menggunakan HTML5 Audio API.
  - Playlist otomatis menggunakan JSON script (`assets/music/playlist.js`).
  - Fitur lengkap: play/pause, prev/next, progress bar, volume control, dan auto-next track.
- **Fully Responsive**: Teroptimasi untuk Desktop, Tablet, dan Mobile (menyediakan mobile dock menu di resolusi layar kecil).

## Teknologi yang Digunakan

- **HTML5 & CSS3** (Vanilla CSS dengan variabel warna Hex/HSL)
- **JavaScript (ES6)** untuk interaktivitas (Music Player, Sticky Header, dsb)
- **Bootstrap 5.3.3** (Grid system & Utility classes)
- **PowerShell Scripting** (Untuk auto-generate playlist lagu MP3 secara dinamis)
- **AOS (Animate On Scroll)** untuk animasi elemen saat scroll
- **Swiper.js** untuk slider gambar
- **Glightbox** untuk pop-up image preview

## Cara Menambahkan Lagu ke Playlist

Website ini dilengkapi sistem playlist otomatis. Jika Anda ingin menambah lagu:
1. Masukkan file musik format `.mp3` ke dalam folder `assets/music/`.
2. Buka Terminal/PowerShell di direktori utama proyek.
3. Jalankan script generator:
   ```powershell
   powershell -ExecutionPolicy Bypass -File generate-playlist.ps1
   ```
4. Script akan otomatis memindai file, membaca judul, dan memperbarui daftar lagu. Refresh browser dan lagu siap diputar!

## Hosting & Deployment

Direkomendasikan menggunakan **GitHub Pages**, Vercel, atau Netlify karena website ini sepenuhnya bersifat statis (tidak memerlukan backend server seperti PHP atau Node.js).
