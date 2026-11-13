# Socks5RelayVPN Android Client

Aplikasi Android SOCKS5 VPN Client dengan fitur:
- **Auto-Detect Paste**: Tempelkan langsung format `host:port:user:pass` ke kolom Host atau tekan tombol Paste Otomatis.
- **Anti-DNS Leak (MapDNS / Fake-IP)**: Mengarahkan seluruh kueri DNS melalui tunnel SOCKS5 (`198.18.0.2`) sehingga DNS mengikuti server proxy dan tidak bocor ke ISP lokal.

## Cara Mendapatkan File `.apk` Tanpa Install Android Studio di PC
1. Ekstrak file `.zip` ini di PC Anda.
2. Buat repository baru di GitHub, lalu upload semua isi folder ini ke GitHub.
3. Buka tab **Actions** di repository GitHub Anda, tunggu sekitar 2-3 menit hingga proses build selesai, lalu unduh file **`.apk`** pada bagian **Artifacts** (`Socks5RelayVPN-APK`).

## Cara Install `.apk` dari PC ke HP / Emulator (via ADB)
Jika Anda menggunakan emulator Android di PC (seperti BlueStacks, LDPlayer, Nox, atau Windows Subsystem for Android) atau menghubungkan HP ke PC:
1. Klik 2x file `app-debug.apk` di emulator Anda, atau
2. Jalankan perintah berikut di Command Prompt PC:
   ```bash
   adb install app-debug.apk
   ```
