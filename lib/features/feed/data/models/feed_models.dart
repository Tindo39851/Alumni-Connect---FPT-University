class MentorStory {
  final String id;
  final String name;
  final String role;
  final String avatarUrl;
  final bool isOnline;
  final bool isUser;

  const MentorStory({
    required this.id,
    required this.name,
    required this.role,
    required this.avatarUrl,
    this.isOnline = true,
    this.isUser = false,
  });
}

class PostItem {
  final String id;
  final String authorName;
  final String authorRole;
  final String authorAvatar;
  final String timeAgo;
  final bool isVerified;
  final String content;
  final String? attachmentTitle;
  final String? attachmentSubtitle;
  final List<String> tags;
  final int likes;
  final int comments;
  final int shares;
  final bool isJobPost;
  final String? jobTitle;
  final String? jobSalary;
  final String? jobPerks;
  final String? companyName;

  const PostItem({
    required this.id,
    required this.authorName,
    required this.authorRole,
    required this.authorAvatar,
    required this.timeAgo,
    this.isVerified = true,
    required this.content,
    this.attachmentTitle,
    this.attachmentSubtitle,
    required this.tags,
    required this.likes,
    required this.comments,
    required this.shares,
    this.isJobPost = false,
    this.jobTitle,
    this.jobSalary,
    this.jobPerks,
    this.companyName,
  });
}
