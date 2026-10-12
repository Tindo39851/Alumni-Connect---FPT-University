# 🤖 AI Assistant (FPT University Knowledge Bot)

> Quay lại: [[Dashboard]] | Màn hình liên quan: `AiAssistantScreen` | Cubit: `AiChatCubit`

---

## 1. Mục Tiêu & Điểm Nhấn Sáng Tạo Của Đồ Án PRM

Điểm nổi bật của dự án là việc tích hợp **Trợ Lý Trí Tuệ Nhân Tạo (AI Assistant)** mô phỏng cố vấn học tập ảo của Đại học FPT:
* **Hỗ trợ học vụ & Môn học**: Giải đáp thắc mắc về lộ trình môn học, đồ án tốt nghiệp Capstone Project, kinh nghiệm học các môn khó (PRM392, SWP391, PRN211, CSD201...).
* **Tư vấn hướng nghiệp**: Gợi ý roadmap nghề nghiệp (Mobile Dev, Backend Dev, AI Engineer, Cyber Security) dựa trên sở thích và thế mạnh của sinh viên.
* **Gợi ý Mentor phù hợp**: Dựa trên câu hỏi của sinh viên, AI đề xuất các cựu sinh viên tiêu biểu trong mạng lưới để sinh viên đặt lịch kết nối.

---

## 2. Giao Diện & Tương Tác

* Giao diện dạng Chat bong bóng (Bubble Chat) hiện đại:
  * Tin nhắn từ sinh viên: Căn phải, nền màu cam FPT (`AppColors.fptOrange`), chữ trắng.
  * Tin nhắn từ AI Assistant: Căn trái, kèm avatar biểu tượng AI thông minh, nền màu xám nhạt (`AppColors.border`).
* Gợi ý câu hỏi nhanh (Quick Prompts):
  * *"Lộ trình học Flutter và PRM392 hiệu quả?"*
  * *"Làm sao để xin kỳ thực tập OJT tại FPT Software?"*
  * *"Kinh nghiệm chuẩn bị đồ án Capstone Project đạt điểm cao?"*

---

## 3. Kiến Trúc & Xử Lý (`AiChatCubit`)

* Quản lý danh sách tin nhắn `List<ChatMessage>`.
* Khi sinh viên gửi tin nhắn, hệ thống hiển thị trạng thái `isTyping: true` (đang nhập câu trả lời) và mô phỏng phản hồi thông minh sau độ trễ ngắn, tạo trải nghiệm hội thoại chân thực.
