# 👥 Alumni Directory & Mentorship

> Quay lại: [[Dashboard]] | Màn hình liên quan: `DirectoryScreen`, `AlumniProfileScreen`, `BookingScreen`

---

## 1. Mục Tiêu & Nghiệp Vụ

Module `Directory` là tính năng cốt lõi của giải pháp Alumni Connect nhằm kết nối mạng lưới cựu sinh viên FPT (Alumni Network):
* **Tìm kiếm thông minh**: Tìm kiếm theo tên cựu sinh viên, vị trí làm việc (Google, VNG, FPT Software, Viettel, Momo...), công nghệ chuyên môn (Flutter, React, Golang, AI/ML).
* **Bộ lọc đa chiều (Filter Chips)**:
  * Lọc theo khóa: `Tất cả`, `K13`, `K14`, `K15`, `K16`.
  * Lọc theo chuyên ngành: `Kỹ thuật phần mềm (SE)`, `An toàn thông tin (IA)`, `Thiết kế mỹ thuật số (GD)`, `Quản trị kinh doanh (BA)`.
* **Hồ sơ chi tiết (Alumni Profile)**: Hiển thị tiểu sử, kinh nghiệm làm việc, học vấn, danh sách kỹ năng, các dự án tiêu biểu.
* **Đặt lịch cố vấn (Mentorship Booking)**: Cho phép sinh viên chọn ngày giờ trống của mentor, điền lý do/nội dung cần tư vấn và gửi yêu cầu đặt lịch hẹn 1-on-1.

---

## 2. Mô Hình Dữ Liệu (`AlumniModel`)

```dart
class AlumniModel {
  final String id;
  final String name;
  final String batch;          // e.g. "K14"
  final String major;          // e.g. "Software Engineering"
  final String company;        // e.g. "Google Singapore"
  final String position;       // e.g. "Staff Software Engineer"
  final String avatarUrl;
  final String bio;
  final List<String> skills;
  final double rating;
  final int totalMentees;
  final bool isAvailableForMentoring;
}
```

---

## 3. Trạng Thái & Xử Lý (`DirectoryCubit`)

* `loadDirectory()`: Khởi tạo danh sách cựu sinh viên mẫu.
* `searchAlumni(String query)`: Lọc theo từ khóa người dùng nhập.
* `filterByBatch(String batch)`: Lọc theo khóa học FPT.
* `filterByMajor(String major)`: Lọc theo chuyên ngành.
