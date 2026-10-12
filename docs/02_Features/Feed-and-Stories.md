# 📰 Feed & Stories Module

> Quay lại: [[Dashboard]] | Màn hình liên quan: `HomeScreen`, `PostDetailScreen`, `CreatePostScreen`

---

## 1. Mục Tiêu & Nghiệp Vụ

Module `Feed` đóng vai trò là mạng xã hội nội bộ dành riêng cho cộng đồng Đại học FPT:
* **Tin tức & Sự kiện**: Cập nhật các hội thảo công nghệ, ngày hội việc làm, chia sẻ kinh nghiệm phỏng vấn từ các cựu sinh viên đi trước.
* **FPT Stories**: Các tin ngắn 24h hiển thị avatar có viền cam FPT, hỗ trợ sinh viên chia sẻ khoảnh khắc đời thường tại campus Hòa Lạc / TP.HCM / Đà Nẵng / Quy Nhơn / Cần Thơ.
* **Tương tác**: Thả tim (Like/Unlike), bình luận bài viết (Comment), chia sẻ bài viết (Share).
* **Đăng bài mới**: Soạn thảo status, đính kèm ảnh và phân loại theo chuyên ngành.

---

## 2. Mô Hình Dữ Liệu (`FeedPost`, `StoryItem`)

```dart
class FeedPost {
  final String id;
  final String authorName;
  final String authorRole;      // e.g. "Alumni K14 - Senior SE tại VNG"
  final String authorAvatarUrl;
  final String content;
  final String? imageUrl;
  final DateTime timestamp;
  final int likesCount;
  final int commentsCount;
  final bool isLiked;
}
```

---

## 3. Quản Lý Trạng Thái (`FeedCubit`)

* `loadFeed()`: Tải danh sách bài viết từ `feed_mock_data.dart`.
* `toggleLike(String postId)`: Đảo trạng thái thích bài viết, cập nhật số lượng like tức thì trên UI.
* `addPost(FeedPost newPost)`: Thêm bài đăng mới lên đầu bảng tin.
* `addComment(String postId, String comment)`: Gửi bình luận vào bài viết.
