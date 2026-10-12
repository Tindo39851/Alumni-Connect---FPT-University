class AlumniModel {
  final String id;
  final String name;
  final String mssv;
  final String cohort; // K14, K13...
  final String major; // Kỹ thuật phần mềm...
  final String campus; // Hòa Lạc, TP.HCM...
  final String currentRole; // Tech Lead...
  final String company; // TechCorp, Grab...
  final String avatarUrl;
  final bool isVerified;
  final bool isAvailableForMentoring;
  final double rating;
  final int reviewsCount;
  final int completedSessions;
  final List<String> skills;
  final String bio;

  const AlumniModel({
    required this.id,
    required this.name,
    required this.mssv,
    required this.cohort,
    required this.major,
    required this.campus,
    required this.currentRole,
    required this.company,
    required this.avatarUrl,
    this.isVerified = true,
    this.isAvailableForMentoring = true,
    required this.rating,
    required this.reviewsCount,
    required this.completedSessions,
    required this.skills,
    required this.bio,
  });
}
