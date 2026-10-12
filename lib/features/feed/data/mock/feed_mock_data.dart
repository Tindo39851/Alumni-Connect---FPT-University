import 'package:alumni_connect/features/feed/data/models/feed_models.dart';

class FeedMockData {
  static const List<MentorStory> mockStories = [
    MentorStory(
      id: '0',
      name: 'Bạn',
      role: 'Tạo story mới',
      avatarUrl: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150',
      isUser: true,
    ),
    MentorStory(
      id: '1',
      name: 'Anh Long',
      role: 'Tech Lead @ TechCorp',
      avatarUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150',
      isOnline: true,
    ),
    MentorStory(
      id: '2',
      name: 'Chị Trâm',
      role: 'Sr Designer @ Grab',
      avatarUrl: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=150',
      isOnline: true,
    ),
    MentorStory(
      id: '3',
      name: 'Anh Thành',
      role: 'Solutions Architect @ AWS',
      avatarUrl: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=150',
      isOnline: false,
    ),
    MentorStory(
      id: '4',
      name: 'TS. Hà',
      role: 'AI Researcher',
      avatarUrl: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150',
      isOnline: true,
    ),
  ];

  static const List<PostItem> mockPosts = [
    PostItem(
      id: 'post_1',
      authorName: 'Trần Hoàng Long',
      authorRole: 'Cựu SV K14 • Tech Lead @ TechCorp',
      authorAvatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150',
      timeAgo: '2 giờ trước',
      isVerified: true,
      content:
          'Chia sẻ một số kinh nghiệm phỏng vấn Backend Developer (Java / Golang / Node.js) cho các bạn sinh viên FPT chuẩn bị đi OJT kỳ Fall và tốt nghiệp. Các bạn nhớ chú trọng kỹ năng tối ưu Database Indexing và thiết kế Microservices nhé!',
      attachmentTitle: 'Tài liệu: backend-interview-roadmap.fpt',
      attachmentSubtitle: 'PDF Sơ đồ tư duy 12 trang • Phân tích System Design & DB Tuning',
      tags: ['#FPTAlumni', '#BackendDev', '#CareerAdvice', '#TechLead'],
      likes: 84,
      comments: 18,
      shares: 12,
    ),
    PostItem(
      id: 'post_2',
      authorName: 'Lê Thuỳ Dung',
      authorRole: 'Cựu SV K15 • HR Talent Partner @ FPT Software',
      authorAvatar: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150',
      timeAgo: '4 giờ trước',
      isVerified: true,
      content:
          'FPT Software Global đang mở đợt tuyển gấp 15 vị trí Fresher/Junior Frontend cho dự án khách hàng Nhật & Mỹ. Cóc FPT nộp qua post này sẽ được chị bảo chứng Referral chuyển thẳng CV tới Hiring Manager trong 24h nhé!',
      isJobPost: true,
      companyName: 'FPT Software Global',
      jobTitle: 'Frontend Engineer (React / Next.js / TypeScript)',
      jobSalary: '15,000,000 - 22,000,000 VNĐ / tháng',
      jobPerks: 'Cấp MacBook M3 • Trợ cấp thi AWS • Cơ hội Onsite Tokyo',
      tags: ['#Tuyendung', '#FPTSoftware', '#HotReferral', '#Frontend'],
      likes: 120,
      comments: 42,
      shares: 35,
    ),
  ];
}
