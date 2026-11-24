# E-Kinerja Harian Pegawai

Aplikasi web pelaporan kinerja harian pegawai dengan fitur daftar pegawai interaktif, perhitungan durasi waktu otomatis, bobot index, poin kinerja, akumulasi harian, tombol salin cepat (untuk WhatsApp/laporan), serta dukungan database Supabase dan hosting Vercel.

## Struktur File Projek
- `index.html` — Kode utama aplikasi (HTML, Tailwind CSS, JavaScript, dan klien Supabase).
- `vercel.json` — Konfigurasi routing untuk deployment instan di Vercel.
- `supabase_setup.sql` — Skrip SQL untuk membuat tabel `employees` dan `reports` di Supabase.
- `README.md` — Panduan instalasi dan deployment.

## Cara Setup Database Supabase
1. Buka [Supabase](https://supabase.com) dan buat proyek baru.
2. Masuk ke menu **SQL Editor**, salin isi file `supabase_setup.sql`, lalu klik **Run**.
3. Masuk ke **Project Settings → API**, lalu salin **Project URL** dan **anon / publishable key**.
4. Anda bisa memasukkan URL & Key tersebut langsung di dalam aplikasi melalui tombol **Mode Lokal / Database** di pojok kanan atas, atau mengisinya secara permanen pada variabel `DEFAULT_SUPABASE_URL` dan `DEFAULT_SUPABASE_ANON_KEY` di dalam file `index.html`.

## Cara Hosting ke Vercel
1. Ekstrak file ZIP ini dan upload ke repository GitHub baru.
2. Login ke [Vercel](https://vercel.com), klik **Add New Project**, lalu pilih repository tersebut.
3. Klik **Deploy** (tidak perlu pengaturan build tambahan karena aplikasi bersifat statis).
