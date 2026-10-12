# 🚀 Development & Setup Guide

> Quay lại: [[Dashboard]] | Môn học: PRM392

---

## 1. Yêu Cầu Môi Trường (Prerequisites)

* **Flutter SDK**: `>= 3.13.3` (Kênh stable)
* **Dart SDK**: `^3.13.3`
* **Android Studio**: Bản Iguana / Jellyfish / Koala (Cài Android SDK 33 hoặc 34)
* **Java Development Kit**: JDK 17
* **Thiết bị chạy**: Máy ảo Android Emulator (Pixel 7 / Android 13+) hoặc Điện thoại thật cắm cáp USB (bật USB Debugging).

---

## 2. Hướng Dẫn Chạy Dự Án

### Bước 1: Mở thư mục dự án
```powershell
cd D:\Code\PRM\Alumni-Connect---FPT-University
```

### Bước 2: Cài đặt dependencies
```powershell
flutter pub get
```

### Bước 3: Kiểm tra thiết bị kết nối
```powershell
flutter devices
```

### Bước 4: Chạy ứng dụng trên Android
```powershell
flutter run -d android
```
*(Hoặc ấn `F5` / chọn Run mà không cần debug trong VS Code / Antigravity IDE / Android Studio).*

---

## 3. Lệnh Hỗ Trợ Đóng Gói (Build APK) Nộp Bài PRM

Khi cần xuất file APK để nộp bài hoặc cài đặt trực tiếp lên điện thoại của giảng viên:

```powershell
# Build file APK Release tối ưu hóa dung lượng:
flutter build apk --release --split-per-abi
```

File APK đầu ra sẽ nằm tại:
`build/app/outputs/flutter-apk/app-arm64-v8a-release.apk`
