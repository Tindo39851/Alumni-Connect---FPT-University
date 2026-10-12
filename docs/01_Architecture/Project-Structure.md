# 📦 Project Structure & File Layout

> Quay lại: [[Dashboard]] | Architecture: [[01_Architecture/Mobile-Architecture|Mobile-Architecture]]

---

## Cấu Trúc Toàn Bộ Dự Án (`lib/`)

```text
lib/
├── main.dart                               # Khởi tạo App, MultiBlocProvider, MaterialApp.router
├── core/
│   ├── router/
│   │   └── app_router.dart                 # Cấu hình GoRouter, StatefulShellRoute 5 tabs
│   └── theme/
│       ├── app_colors.dart                 # FPT Brand Colors (Orange #F27024, Blue #0066B2)
│       ├── app_theme.dart                  # Material 3 Theme Data, Card & Button Styles
│       └── app_typography.dart             # GoogleFonts Inter typography scales
│
└── features/
    ├── shared/
    │   └── main_scaffold_wrapper.dart      # NavigationBar 5 tabs cố định đáy màn hình
    │
    ├── feed/                               # [Module 1] Bảng tin & Stories
    │   ├── data/
    │   │   ├── mock/feed_mock_data.dart
    │   │   └── models/feed_models.dart
    │   └── presentation/
    │       ├── cubit/feed_cubit.dart
    │       ├── screens/home_screen.dart
    │       ├── screens/post_detail_screen.dart
    │       ├── screens/create_post_screen.dart
    │       ├── widgets/post_card_widget.dart
    │       └── widgets/stories_carousel_widget.dart
    │
    ├── directory/                          # [Module 2] Danh bạ Cựu sinh viên
    │   ├── data/
    │   │   ├── mock/directory_mock_data.dart
    │   │   └── models/alumni_model.dart
    │   └── presentation/
    │       ├── cubit/directory_cubit.dart
    │       ├── screens/directory_screen.dart
    │       ├── screens/alumni_profile_screen.dart
    │       └── widgets/alumni_card_widget.dart
    │
    ├── mentorship/                         # [Module 3] Đặt lịch kết nối Mentor
    │   └── presentation/
    │       └── screens/booking_screen.dart
    │
    ├── jobs/                               # [Module 4] Việc làm & Tuyển dụng OJT
    │   ├── data/
    │   │   ├── mock/jobs_mock_data.dart
    │   │   └── models/job_model.dart
    │   └── presentation/
    │       ├── cubit/jobs_cubit.dart
    │       ├── screens/jobs_screen.dart
    │       ├── screens/job_detail_screen.dart
    │       └── widgets/job_card_widget.dart
    │
    ├── ai/                                 # [Module 5] Trợ lý ảo AI Assistant
    │   └── presentation/
    │       ├── cubit/ai_chat_cubit.dart
    │       └── screens/ai_assistant_screen.dart
    │
    ├── chat/                               # [Module 6] Tin nhắn thời gian thực
    │   ├── data/
    │   │   ├── mock/chat_mock_data.dart
    │   │   └── models/chat_model.dart
    │   └── presentation/
    │       ├── cubit/chat_cubit.dart
    │       ├── screens/chat_list_screen.dart
    │       └── screens/direct_messages_screen.dart
    │
    └── profile/                            # [Module 7] Hồ sơ cá nhân
        ├── data/
        │   ├── mock/profile_mock_data.dart
        │   └── models/user_profile_model.dart
        └── presentation/
            ├── cubit/profile_cubit.dart
            ├── screens/user_profile_screen.dart
            └── screens/edit_profile_screen.dart
```
