import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:alumni_connect/core/theme/app_colors.dart';
import 'package:alumni_connect/core/theme/app_typography.dart';
import 'package:alumni_connect/features/profile/presentation/cubit/profile_cubit.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        if (state is! ProfileLoaded) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator(color: AppColors.primary)),
          );
        }

        final profile = state.profile;

        return Scaffold(
          backgroundColor: AppColors.background,
          appBar: AppBar(
            backgroundColor: AppColors.surface,
            elevation: 0,
            title: Text(
              'Hồ sơ của tôi',
              style: AppTypography.titleMedium.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings_outlined, color: AppColors.textPrimary),
                tooltip: 'Chỉnh sửa hồ sơ & Cài đặt',
                onPressed: () => context.push('/edit-profile'),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Profile Header Card
                Container(
                  color: AppColors.surface,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    children: [
                      // Avatar & Badges
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 46,
                            backgroundColor: AppColors.primary.withOpacity(0.15),
                            backgroundImage: NetworkImage(profile.avatarUrl),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: AppColors.accent,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.check, size: 16, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),

                      // Name & Verification Badge
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            profile.name,
                            style: AppTypography.headlineSmall.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 6),
                          const Icon(Icons.verified, size: 20, color: AppColors.accent),
                        ],
                      ),
                      const SizedBox(height: 4),

                      // MSSV & Cohort & Campus
                      Text(
                        'MSSV: ${profile.studentId} • ${profile.cohort} • ${profile.campus}',
                        style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary),
                      ),
                      const SizedBox(height: 8),

                      // Role Badge
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.secondary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          profile.major,
                          style: AppTypography.labelMedium.copyWith(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Bio text
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          profile.bio,
                          textAlign: TextAlign.center,
                          style: AppTypography.bodyMedium.copyWith(color: AppColors.textPrimary, height: 1.4),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Action Buttons
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () => context.push('/edit-profile'),
                              icon: const Icon(Icons.edit_outlined, size: 18),
                              label: const Text('Chỉnh sửa hồ sơ'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                elevation: 0,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.surfaceVariant,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: AppColors.border),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.calendar_month, color: AppColors.secondary),
                              tooltip: 'Google Calendar (US-11)',
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Lịch hẹn cá nhân: ${profile.calendarUrl}')),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Stats Row
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: AppColors.surfaceVariant.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildStatItem('${profile.totalPosts}', 'Bài viết'),
                            _buildStatItem('${profile.totalConnections}', 'Kết nối'),
                            _buildStatItem('${profile.mentoringSessions}', 'Buổi Mentoring'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                // TabBar (Bài viết của tôi, Kỹ năng & Mục tiêu, Giới thiệu)
                Container(
                  color: AppColors.surface,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: AppColors.primary,
                    unselectedLabelColor: AppColors.textSecondary,
                    indicatorColor: AppColors.primary,
                    indicatorWeight: 3,
                    tabs: const [
                      Tab(text: 'Bài viết (FO-10)'),
                      Tab(text: 'Kỹ năng & OJT'),
                      Tab(text: 'Thông tin'),
                    ],
                  ),
                ),

                // TabBar Content (Fixed Height or shrink)
                Container(
                  color: AppColors.surface,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kỹ năng chuyên môn',
                        style: AppTypography.titleSmall.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: profile.skills.map((skill) {
                          return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: AppColors.surfaceVariant,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: AppColors.border),
                            ),
                            child: Text(
                              skill,
                              style: AppTypography.labelMedium.copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Mục tiêu & Quan tâm',
                        style: AppTypography.titleSmall.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: profile.interests.map((interest) {
                          return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: AppColors.secondary.withOpacity(0.08),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              interest,
                              style: AppTypography.labelMedium.copyWith(
                                color: AppColors.secondary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildStatItem(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: AppTypography.titleMedium.copyWith(fontWeight: FontWeight.bold, color: AppColors.primary),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: AppTypography.labelSmall.copyWith(color: AppColors.textSecondary),
        ),
      ],
    );
  }
}
