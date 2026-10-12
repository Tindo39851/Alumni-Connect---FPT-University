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

class CommentItem {
  final String id;
  final String authorName;
  final String authorRole;
  final String authorAvatar;
  final String timeAgo;
  final String content;
  final int likes;
  final bool isLiked;
  final bool isAuthor;
  final List<CommentItem> replies;

  const CommentItem({
    required this.id,
    required this.authorName,
    required this.authorRole,
    required this.authorAvatar,
    required this.timeAgo,
    required this.content,
    this.likes = 0,
    this.isLiked = false,
    this.isAuthor = false,
    this.replies = const [],
  });

  CommentItem copyWith({
    String? id,
    String? authorName,
    String? authorRole,
    String? authorAvatar,
    String? timeAgo,
    String? content,
    int? likes,
    bool? isLiked,
    bool? isAuthor,
    List<CommentItem>? replies,
  }) {
    return CommentItem(
      id: id ?? this.id,
      authorName: authorName ?? this.authorName,
      authorRole: authorRole ?? this.authorRole,
      authorAvatar: authorAvatar ?? this.authorAvatar,
      timeAgo: timeAgo ?? this.timeAgo,
      content: content ?? this.content,
      likes: likes ?? this.likes,
      isLiked: isLiked ?? this.isLiked,
      isAuthor: isAuthor ?? this.isAuthor,
      replies: replies ?? this.replies,
    );
  }
}

class PostItem {
  final String id;
  final String authorName;
  final String authorRole;
  final String authorAvatar;
  final String timeAgo;
  final bool isVerified;
  final String title;
  final String content;
  final String? attachmentTitle;
  final String? attachmentSubtitle;
  final String? attachmentImageUrl;
  final String campus;
  final String category;
  final List<String> tags;
  final int likes;
  final int comments;
  final int shares;
  final bool isLiked;
  final bool isSaved;
  final bool isJobPost;
  final String? jobTitle;
  final String? jobSalary;
  final String? jobPerks;
  final String? companyName;
  final List<CommentItem> commentList;

  const PostItem({
    required this.id,
    required this.authorName,
    required this.authorRole,
    required this.authorAvatar,
    required this.timeAgo,
    this.isVerified = true,
    this.title = '',
    required this.content,
    this.attachmentTitle,
    this.attachmentSubtitle,
    this.attachmentImageUrl,
    this.campus = 'Toàn quốc',
    this.category = 'Chia sẻ kinh nghiệm',
    required this.tags,
    required this.likes,
    required this.comments,
    required this.shares,
    this.isLiked = false,
    this.isSaved = false,
    this.isJobPost = false,
    this.jobTitle,
    this.jobSalary,
    this.jobPerks,
    this.companyName,
    this.commentList = const [],
  });

  PostItem copyWith({
    String? id,
    String? authorName,
    String? authorRole,
    String? authorAvatar,
    String? timeAgo,
    bool? isVerified,
    String? title,
    String? content,
    String? attachmentTitle,
    String? attachmentSubtitle,
    String? attachmentImageUrl,
    String? campus,
    String? category,
    List<String>? tags,
    int? likes,
    int? comments,
    int? shares,
    bool? isLiked,
    bool? isSaved,
    bool? isJobPost,
    String? jobTitle,
    String? jobSalary,
    String? jobPerks,
    String? companyName,
    List<CommentItem>? commentList,
  }) {
    return PostItem(
      id: id ?? this.id,
      authorName: authorName ?? this.authorName,
      authorRole: authorRole ?? this.authorRole,
      authorAvatar: authorAvatar ?? this.authorAvatar,
      timeAgo: timeAgo ?? this.timeAgo,
      isVerified: isVerified ?? this.isVerified,
      title: title ?? this.title,
      content: content ?? this.content,
      attachmentTitle: attachmentTitle ?? this.attachmentTitle,
      attachmentSubtitle: attachmentSubtitle ?? this.attachmentSubtitle,
      attachmentImageUrl: attachmentImageUrl ?? this.attachmentImageUrl,
      campus: campus ?? this.campus,
      category: category ?? this.category,
      tags: tags ?? this.tags,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      shares: shares ?? this.shares,
      isLiked: isLiked ?? this.isLiked,
      isSaved: isSaved ?? this.isSaved,
      isJobPost: isJobPost ?? this.isJobPost,
      jobTitle: jobTitle ?? this.jobTitle,
      jobSalary: jobSalary ?? this.jobSalary,
      jobPerks: jobPerks ?? this.jobPerks,
      companyName: companyName ?? this.companyName,
      commentList: commentList ?? this.commentList,
    );
  }
}
