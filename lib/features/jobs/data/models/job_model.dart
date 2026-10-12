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

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      companyName: json['companyName'] as String? ?? '',
      companyLogo: json['companyLogo'] as String? ?? '',
      location: json['location'] as String? ?? '',
      salary: json['salary'] as String? ?? '',
      jobType: json['jobType'] as String? ?? 'Full-time',
      experienceLevel: json['experienceLevel'] as String? ?? 'Fresher',
      hasReferral: json['hasReferral'] as bool? ?? true,
      referralAlumniName: json['referralAlumniName'] as String? ?? '',
      referralAlumniRole: json['referralAlumniRole'] as String? ?? '',
      referralAlumniAvatar: json['referralAlumniAvatar'] as String? ?? '',
      postedTime: json['postedTime'] as String? ?? '',
      description: json['description'] as String? ?? '',
      requirements: (json['requirements'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? const [],
      benefits: (json['benefits'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? const [],
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? const [],
      isSaved: json['isSaved'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'companyName': companyName,
        'companyLogo': companyLogo,
        'location': location,
        'salary': salary,
        'jobType': jobType,
        'experienceLevel': experienceLevel,
        'hasReferral': hasReferral,
        'referralAlumniName': referralAlumniName,
        'referralAlumniRole': referralAlumniRole,
        'referralAlumniAvatar': referralAlumniAvatar,
        'postedTime': postedTime,
        'description': description,
        'requirements': requirements,
        'benefits': benefits,
        'tags': tags,
        'isSaved': isSaved,
      };

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
