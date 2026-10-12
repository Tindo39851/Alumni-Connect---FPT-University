# 📋 PRM Grading Checklist & Demo Script

> Quay lại: [[Dashboard]] | Môn học: PRM392 (Mobile Programming)

---

## 1. Tiêu Chí Đánh Giá Chuẩn Môn PRM392

| STT | Hạng mục đánh giá | Mức độ hoàn thiện trong dự án | Ghi chú kỹ thuật |
| :---: | :--- | :---: | :--- |
| 1 | **Kiến trúc mã nguồn** | 100% | BLoC/Cubit Clean Architecture Light, tách biệt Presentation & Data. |
| 2 | **Quản lý trạng thái (State Management)** | 100% | `flutter_bloc` với `BlocProvider`, `BlocBuilder`, `Cubit` nhất quán. |
| 3 | **Điều hướng (Navigation)** | 100% | `go_router` với `StatefulShellRoute` (5 tabs) & Deeplinks tham số. |
| 4 | **Giao diện & Trải nghiệm (UI/UX)** | 100% | Material Design 3, màu nhận diện Đại học FPT, font chữ Inter sắc nét. |
| 5 | **Tính năng đa dạng** | 100% | 6 module hoàn chỉnh: Feed, Danh bạ, Việc làm, AI Chat, Nhắn tin, Profile. |
| 6 | **Mock Data & Khả năng chạy Offline** | 100% | Có sẵn bộ dữ liệu phong phú, chạy mượt mà không lo lỗi mạng khi demo. |

---

## 2. Kịch Bản Thuyết Trình & Demo Dự Án (5 Phút)

* **Phút 01**: Mở app $\rightarrow$ Giới thiệu Tab **Bảng tin (Feed)**, lướt xem Stories và thử bấm Like/Unlike bài viết.
* **Phút 02**: Chuyển sang Tab **Danh bạ (Directory)** $\rightarrow$ Dùng bộ lọc lọc cựu sinh viên theo khóa K14, chọn một Mentor và ấn **Đặt lịch (Booking)**.
* **Phút 03**: Chuyển sang Tab **Việc làm (Jobs)** $\rightarrow$ Xem các vị trí OJT thực tập, bấm vào xem chi tiết bài đăng của cựu sinh viên.
* **Phút 04**: Mở Tab **AI Mentor** $\rightarrow$ Gõ câu hỏi tư vấn về kỳ OJT hoặc môn học, show phản hồi thông minh của chatbot.
* **Phút 05**: Vào phần **Tin nhắn (Chat)** và trang **Cá nhân (Profile)** $\rightarrow$ Chỉnh sửa thông tin sinh viên, tổng kết bài toán giải quyết cho cộng đồng FPTU.
