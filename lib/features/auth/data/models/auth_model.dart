class AuthUser {
  final String id;
  final String name;
  final String email;
  final String? avatarUrl;
  final bool isAlumni;
  final bool isVerified;
  final String campus;
  final String cohort;

  const AuthUser({
    required this.id,
    required this.name,
    required this.email,
    this.avatarUrl,
    required this.isAlumni,
    required this.isVerified,
    required this.campus,
    required this.cohort,
  });
}
