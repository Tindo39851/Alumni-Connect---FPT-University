import 'package:flutter/material.dart';
import 'package:alumni_connect/core/theme/app_colors.dart';
import 'package:alumni_connect/features/feed/data/models/feed_models.dart';

class StoriesCarouselWidget extends StatelessWidget {
  final List<MentorStory> stories;

  const StoriesCarouselWidget({super.key, required this.stories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 14),
        itemBuilder: (context, index) {
          final story = stories[index];
          return Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: story.isUser ? AppColors.fptOrange : AppColors.fptBlue,
                        width: 2.2,
                      ),
                    ),
                    padding: const EdgeInsets.all(2.5),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(story.avatarUrl),
                    ),
                  ),
                  if (story.isUser)
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          color: AppColors.fptOrange,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.add, size: 14, color: Colors.white),
                      ),
                    )
                  else if (story.isOnline)
                    Positioned(
                      bottom: 2,
                      right: 2,
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: AppColors.fptGreen,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: 68,
                child: Text(
                  story.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
