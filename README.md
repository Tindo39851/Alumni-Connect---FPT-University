# 🎓 FPT Alumni Connect — Mobile Application (PRM392)

Nền tảng kết nối mạng lưới Cựu sinh viên & Sinh viên Đại học FPT toàn quốc. Dự án hỗ trợ tư vấn nghề nghiệp, kết nối Mentorship 1-1, bảng tin tuyển dụng nội bộ và tích hợp trợ lý ảo AI thông minh.

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart)](https://dart.dev)
[![Architecture](https://img.shields.io/badge/Architecture-Clean%20%2F%20Feature--based-green)]()
[![Design System](https://img.shields.io/badge/Design%20System-FPT%20Brand%20(Stitch%20MCP)-orange)]()

---

## 📱 Giới thiệu tổng quan

FPT Alumni Connect được xây dựng nhằm giải quyết bài toán đứt gãy kết nối giữa sinh viên đang học và mạng lưới cựu sinh viên FPT đã đi làm. Ứng dụng đáp ứng đầy đủ **43 User Stories** trên **20 màn hình UI chuẩn Stitch**:
- **Bảng tin & Chia sẻ (Forum):** Hỏi đáp, chia sẻ bài viết OJT/việc làm, bình luận phân cấp 2 tầng (nested reply), bookmark, tìm kiếm từ khóa.
- **Danh bạ Cựu sinh viên (Directory & Mentorship):** Tìm kiếm alumni theo ngành/campus, đặt lịch hẹn cố vấn Mentoring 1-1 tích hợp Google Calendar.
- **Bảng tin Việc làm (Job Board):** Cơ hội tuyển dụng Fresher/OJT và mạng lưới Referral trực tiếp từ cựu sinh viên.
- **Trợ lý ảo AI (Alumni AI Assistant):** Hỏi đáp kiến thức OJT, đồ án Capstone với công nghệ trích dẫn nguồn bài viết (RAG citation).
- **Hộp thư & Chat Realtime:** Nhắn tin 1-1, chỉ báo đang soạn tin (typing indicator), xác nhận đã xem (seen checkmarks), gọi Google Meet.
- **Cổng Quản trị Viên (Admin Portal Mobile):** Bảng tổng quan KPI, quản lý khóa/mở khóa tài khoản người dùng và kiểm duyệt bài viết vi phạm.
- **Xác thực an toàn (Auth & Security):** Hỗ trợ Google SSO / FPT Mail (`@fpt.edu.vn`), phân quyền riêng tư hồ sơ.

---

## 🎨 Design System & Nhận diện thương hiệu FPT

Tuân thủ nghiêm ngặt theo **FPT University Brand Identity Guideline**:
- **Màu chủ đạo (Primary Orange):** `#F27024`
- **Màu phụ (Secondary Blue):** `#0066B2`
- **Màu điểm nhấn (Accent Green):** `#0DB04B`
- **Nền & Bề mặt (Surface / Background):** Trắng `#FFFFFF` & Xám nhạt `#F8FAFC`
- **Typography:** Material Design 3 Typography (Font Roboto / Inter)
- **Radius & Spacing:** Chuẩn 8px grid, border radius bo tròn mềm mại 12px - 16px.

---

## 🏗️ Cấu trúc Kiến trúc (Clean & Feature-Based)

Dự án áp dụng cấu trúc thư mục phân tách theo tính năng (Feature-first), dễ bảo trì và sẵn sàng kết nối API Backend (.NET / C#):

```text
lib/
├── core/
│   ├── router/           # Cấu hình GoRouter điều hướng & Auth Gate (app_router.dart)
│   └── theme/            # Hệ thống màu sắc, kiểu chữ & Theme FPT (app_colors.dart, ...)
├── features/
│   ├── admin/            # Phân hệ Quản trị viên (KPI, Người dùng, Kiểm duyệt)
│   ├── ai/               # Trợ lý AI Assistant (Chat, trích dẫn bài viết)
│   ├── auth/             # Xác thực (Onboarding 3 trang, Đăng nhập FPT SSO)
│   ├── chat/             # Nhắn tin 1-1 (Hộp thư, Chat bubble, Google Meet)
│   ├── directory/        # Danh bạ Alumni & Profile cố vấn viên
│   ├── feed/             # Bảng tin diễn đàn, Chi tiết bài viết & Bình luận lồng nhau
│   ├── jobs/             # Bảng tuyển dụng & Ứng tuyển Referral Alumni
│   ├── mentorship/       # Đặt lịch hẹn cố vấn Mentoring 1-1
│   ├── profile/          # Hồ sơ cá nhân sinh viên & Cài đặt quyền riêng tư
│   └── shared/           # Scaffold chung 5 Tab BottomNavigationBar
└── main.dart             # Khởi tạo MultiBlocProvider toàn cục & App Root
```

---

## 🚀 Trạng thái bao phủ User Story (Coverage 100%)

| Nhóm | Số lượng | Màn hình tiêu biểu | Trạng thái |
| :--- | :---: | :--- | :---: |
| **US (User & Auth)** | 11 Stories | Onboarding, Login FPT, Profile cá nhân, Cài đặt bảo mật | ✅ Hoàn thiện |
| **FO (Diễn đàn & Bài viết)** | 16 Stories | Bảng tin Feed, Đăng bài, Chi tiết bài viết, Bình luận 2 cấp, Tìm kiếm | ✅ Hoàn thiện |
| **CH (Chat & Trò chuyện)** | 10 Stories | Danh sách cuộc trò chuyện, Chat 1-1, Gửi ảnh, Chặn người dùng | ✅ Hoàn thiện |
| **AI (Trợ lý thông minh)** | 4 Stories | Hội thoại RAG đa lượt, trích dẫn liên kết bài viết diễn đàn | ✅ Hoàn thiện |
| **AD (Quản trị & Kiểm duyệt)**| 8 Stories | Dashboard KPI, Quản lý tài khoản, Xử lý báo cáo vi phạm | ✅ Hoàn thiện |
| **Tổng cộng** | **43 Stories** | **20 màn hình UI Flutter đồng bộ Stitch MCP** | **100% UI** |

---

## 🛠️ Hướng dẫn cài đặt & Chạy ứng dụng

### Yêu cầu môi trường
- Flutter SDK: `>=3.0.0`
- Dart SDK: `>=3.0.0`
- Android Studio / VS Code với Flutter Extension
- Android Emulator hoặc thiết bị thật (Android / iOS)

### Các bước chạy app
1. Clone dự án về máy:
   ```bash
   git clone https://github.com/Tindo39851/Alumni-Connect---FPT-University.git
   cd Alumni-Connect---FPT-University
   ```
2. Cài đặt các thư viện phụ thuộc:
   ```bash
   flutter pub get
   ```
3. Khởi chạy ứng dụng:
   ```bash
   flutter run
   ```

---

## 🔌 Kế hoạch tích hợp Backend (.NET C# Web API)

Hệ thống hiện đang sử dụng State Management `Cubit` và Mock Data nội bộ để kiểm thử UI/UX. Khi tích hợp với Backend ASP.NET Core:
1. **Giao tiếp API:** Tích hợp `dio` hoặc `http` gọi các RESTful endpoints (JSON).
2. **Real-time Chat:** Kết nối ASP.NET Core SignalR Hub qua package `signalr_netcore`.
3. **Authentication:** Tích hợp JWT Bearer Token & Google OAuth2.
4. **Không cần sửa UI:** Các màn hình UI chỉ lắng nghe Cubit State nên toàn bộ giao diện sẽ giữ nguyên vẹn 100%.
