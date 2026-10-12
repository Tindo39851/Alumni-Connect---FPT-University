# 💼 Jobs & Career Opportunities Module

> Quay lại: [[Dashboard]] | Màn hình liên quan: `JobsScreen`, `JobDetailScreen`

---

## 1. Mục Tiêu & Nghiệp Vụ

Module `Jobs` cung cấp cầu nối việc làm tin cậy giữa doanh nghiệp, cựu sinh viên tuyển dụng và sinh viên FPT:
* **Cơ hội OJT (On-the-Job Training)**: Kỳ thực tập doanh nghiệp bắt buộc của sinh viên FPT (kỳ 6).
* **Việc làm Fresher / Junior**: Vị trí việc làm chất lượng cao có bảo chứng từ các Alumni đang công tác tại doanh nghiệp.
* **Bộ lọc hình thức**: `Tất cả`, `Toàn thời gian (Full-time)`, `Bán thời gian (Part-time)`, `Thực tập (Internship / OJT)`.
* **Chi tiết công việc (Job Detail)**:
  * Mô tả công việc (JD), yêu cầu kỹ năng, chế độ đãi ngộ & mức lương.
  * Thông tin người đăng tin (Alumni Referrer) giúp sinh viên xin Refer dễ dàng.
  * Nút hành động: `Ứng tuyển ngay (Apply Now)` & `Lưu tin tuyển dụng (Bookmark)`.

---

## 2. Mô Hình Dữ Liệu (`JobModel`)

```dart
class JobModel {
  final String id;
  final String title;
  final String companyName;
  final String companyLogoUrl;
  final String location;
  final String jobType;         // Full-time, Internship, Part-time
  final String salaryRange;     // e.g. "12M - 18M VNĐ" hoặc "Thỏa thuận"
  final String description;
  final List<String> requirements;
  final List<String> benefits;
  final String postedByAlumniName;
  final DateTime postedDate;
}
```

---

## 3. Quản Lý Trạng Thái (`JobsCubit`)

* `loadJobs()`: Tải danh sách công việc.
* `filterByType(String type)`: Lọc theo loại hình công việc (OJT/Full-time).
* `searchJob(String keyword)`: Tìm kiếm công việc theo từ khóa.
* `bookmarkJob(String jobId)`: Đánh dấu lưu công việc quan tâm.
