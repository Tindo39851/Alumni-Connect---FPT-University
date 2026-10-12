class UserProfile {
  final String id;
  final String name;
  final String email;
  final String studentId; // MSSV
  final String cohort; // K16
  final String major; // Kỹ thuật phần mềm (SE)
  final String campus; // FPT Đà Nẵng
  final String avatarUrl;
  final String bio;
  final bool isAlumni;
  final bool isVerified;
  final List<String> skills;
  final List<String> interests;
  final String? calendarUrl; // US-11 (Google Calendar link)
  final bool isPublicToRecruiters; // US-09
  final bool showContactInfo; // US-09
  final bool allowMessagesFromStrangers;
  final int totalPosts;
  final int totalConnections;
  final int mentoringSessions;

  const UserProfile({
    required this.id,
    required this.name,
    required this.email,
    required this.studentId,
    required this.cohort,
    required this.major,
    required this.campus,
    required this.avatarUrl,
    required this.bio,
    this.isAlumni = false,
    this.isVerified = true,
    required this.skills,
    required this.interests,
    this.calendarUrl,
    this.isPublicToRecruiters = true,
    this.showContactInfo = false,
    this.allowMessagesFromStrangers = true,
    this.totalPosts = 12,
    this.totalConnections = 86,
    this.mentoringSessions = 5,
  });

  UserProfile copyWith({
    String? id,
    String? name,
    String? email,
    String? studentId,
    String? cohort,
    String? major,
    String? campus,
    String? avatarUrl,
    String? bio,
    bool? isAlumni,
    bool? isVerified,
    List<String>? skills,
    List<String>? interests,
    String? calendarUrl,
    bool? isPublicToRecruiters,
    bool? showContactInfo,
    bool? allowMessagesFromStrangers,
    int? totalPosts,
    int? totalConnections,
    int? mentoringSessions,
  }) {
    return UserProfile(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      studentId: studentId ?? this.studentId,
      cohort: cohort ?? this.cohort,
      major: major ?? this.major,
      campus: campus ?? this.campus,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      bio: bio ?? this.bio,
      isAlumni: isAlumni ?? this.isAlumni,
      isVerified: isVerified ?? this.isVerified,
      skills: skills ?? this.skills,
      interests: interests ?? this.interests,
      calendarUrl: calendarUrl ?? this.calendarUrl,
      isPublicToRecruiters: isPublicToRecruiters ?? this.isPublicToRecruiters,
      showContactInfo: showContactInfo ?? this.showContactInfo,
      allowMessagesFromStrangers: allowMessagesFromStrangers ?? this.allowMessagesFromStrangers,
      totalPosts: totalPosts ?? this.totalPosts,
      totalConnections: totalConnections ?? this.totalConnections,
      mentoringSessions: mentoringSessions ?? this.mentoringSessions,
    );
  }
}
