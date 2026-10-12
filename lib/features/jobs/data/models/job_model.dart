class JobModel {
  final String id;
  final String title;
  final String companyName;
  final String companyLogo;
  final String location; // Đà Nẵng / Hà Nội / TP.HCM / Onsite Tokyo
  final String salary;
  final String jobType; // Full-time / OJT / Thực tập
  final String experienceLevel; // Fresher / Junior / Middle
  final bool hasReferral;
  final String referralAlumniName;
  final String referralAlumniRole;
  final String referralAlumniAvatar;
  final String postedTime;
  final String description;
  final List<String> requirements;
  final List<String> benefits;
  final List<String> tags;
  final bool isSaved;

  const JobModel({
    required this.id,
    required this.title,
    required this.companyName,
    required this.companyLogo,
    required this.location,
    required this.salary,
    required this.jobType,
    required this.experienceLevel,
    this.hasReferral = true,
    required this.referralAlumniName,
    required this.referralAlumniRole,
    required this.referralAlumniAvatar,
    required this.postedTime,
    required this.description,
    required this.requirements,
    required this.benefits,
    required this.tags,
    this.isSaved = false,
  });

  JobModel copyWith({
    String? id,
    String? title,
    String? companyName,
    String? companyLogo,
    String? location,
    String? salary,
    String? jobType,
    String? experienceLevel,
    bool? hasReferral,
    String? referralAlumniName,
    String? referralAlumniRole,
    String? referralAlumniAvatar,
    String? postedTime,
    String? description,
    List<String>? requirements,
    List<String>? benefits,
    List<String>? tags,
    bool? isSaved,
  }) {
    return JobModel(
      id: id ?? this.id,
      title: title ?? this.title,
      companyName: companyName ?? this.companyName,
      companyLogo: companyLogo ?? this.companyLogo,
      location: location ?? this.location,
      salary: salary ?? this.salary,
      jobType: jobType ?? this.jobType,
      experienceLevel: experienceLevel ?? this.experienceLevel,
      hasReferral: hasReferral ?? this.hasReferral,
      referralAlumniName: referralAlumniName ?? this.referralAlumniName,
      referralAlumniRole: referralAlumniRole ?? this.referralAlumniRole,
      referralAlumniAvatar: referralAlumniAvatar ?? this.referralAlumniAvatar,
      postedTime: postedTime ?? this.postedTime,
      description: description ?? this.description,
      requirements: requirements ?? this.requirements,
      benefits: benefits ?? this.benefits,
      tags: tags ?? this.tags,
      isSaved: isSaved ?? this.isSaved,
    );
  }
}
