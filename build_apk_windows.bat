@echo off
echo ====================================================
echo   Socks5RelayVPN - Local PC APK Builder (Windows)
echo ====================================================

where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Git belum terinstall di PC Anda. Silakan install Git terlebih dahulu.
    pause
    exit /b 1
)

if not exist "app\src\main\cpp\hev-socks5-tunnel" (
    echo [1/3] Mengunduh native core hev-socks5-tunnel...
    git clone --recursive https://github.com/heiher/hev-socks5-tunnel.git app/src/main/cpp/hev-socks5-tunnel
)

if "%ANDROID_NDK_HOME%"=="" (
    echo [INFO] Pastikan ANDROID_NDK_HOME sudah diset atau gunakan Android Studio / GitHub Actions.
) else (
    echo [2/3] Mengompilasi library C JNI dengan NDK...
    "%ANDROID_NDK_HOME%\ndk-build.cmd" -C app/src/main/cpp
    xcopy /E /I /Y "app\src\main\libs\*" "app\src\main\jniLibs\"
)

echo [3/3] Selesai menyiapkan native core. Buka folder ini di Android Studio atau push ke GitHub untuk otomatis build APK!
pause
