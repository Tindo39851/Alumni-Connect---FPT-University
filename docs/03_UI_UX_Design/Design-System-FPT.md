# 🎨 FPT Design System & UI/UX Styling

> Quay lại: [[Dashboard]] | Files: `lib/core/theme/` (`app_colors.dart`, `app_theme.dart`, `app_typography.dart`)

---

## 1. Bảng Màu Thương Hiệu (Brand Palette)

Ứng dụng tuân thủ nghiêm ngặt hệ thống nhận diện màu sắc của Đại học FPT:

| Tên màu | Giá trị Hex | Ứng dụng trên giao diện |
| :--- | :--- | :--- |
| **FPT Orange** | `#F27024` | Màu chủ đạo (Primary brand), Nút bấm chính, Active Tab, Icon nổi bật |
| **FPT Blue** | `#0066B2` | Màu phụ (Secondary), Badges, Liên kết, Tiêu đề phụ |
| **FPT Green** | `#0DB04B` | Điểm nhấn thành công (Success), Trạng thái Online, Verified Badge |
| **Background** | `#F8FAFC` | Nền ứng dụng (Slate 50), dịu mắt cho người dùng |
| **Surface** | `#FFFFFF` | Nền Card bài viết, Hộp thoại Modal, Bottom Navigation Bar |
| **Border** | `#E2E8F0` | Đường viền mỏng ngăn cách (Slate 200) |
| **Text Primary**| `#0F172A` | Tiêu đề chính, văn bản quan trọng (Slate 900) |
| **Text Secondary**| `#475569`| Đoạn văn bản mô tả, phụ đề (Slate 600) |

---

## 2. Hệ Thống Kiểu Chữ (Typography Scale)

Sử dụng bộ font hiện đại **`Inter`** thông qua package `google_fonts`:

* **Heading 1 (H1)**: `24px / line-height: 32px` • **Bold** • Slate 900 (`AppTypography.h1`)  
  *Dùng cho tiêu đề trang chính (AppBar, Home Title).*
* **Heading 2 (H2)**: `20px / line-height: 28px` • **Bold** • Slate 900 (`AppTypography.h2`)  
  *Dùng cho tiêu đề các phân mục (Section Headers).*
* **Heading 3 (H3)**: `16px / line-height: 24px` • **Semi-Bold** • Slate 900 (`AppTypography.h3`)  
  *Dùng cho tên cựu sinh viên, tiêu đề Card việc làm.*
* **Body**: `14px / line-height: 20px` • **Regular** • Slate 700 (`AppTypography.body`)  
  *Dùng cho nội dung bài viết, mô tả công việc.*
* **Small**: `12px / line-height: 16px` • **Medium** • Slate 500 (`AppTypography.small`)  
  *Dùng cho thời gian đăng bài, thẻ tag, thông số phụ.*

---

## 3. Quy Chuẩn Thành Phần Giao Diện (Components)

* **Cards**: Bán kính bo góc lớn (`borderRadius: 16px`), đường viền mỏng thanh lịch (`1px solid #E2E8F0`), đổ bóng nhẹ (`elevation: 0.5`).
* **Buttons**: Chiều cao chuẩn 50px, bo tròn góc (`12px`), tương phản cao giúp tăng tỷ lệ tương tác (Click-through rate).
* **Bottom Bar**: Thiết kế phẳng (Flat Design) kết hợp chỉ báo (Indicator) bo tròn màu cam nhạt tinh tế (`#F27024` with 15% opacity).
