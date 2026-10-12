import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alumni_connect/features/feed/data/models/feed_models.dart';
import 'package:alumni_connect/features/feed/data/mock/feed_mock_data.dart';

// States
abstract class FeedState {}

class FeedInitial extends FeedState {}

class FeedLoading extends FeedState {}

class FeedLoaded extends FeedState {
  final List<MentorStory> stories;
  final List<PostItem> posts;
  final String selectedCategory;

  FeedLoaded({
    required this.stories,
    required this.posts,
    required this.selectedCategory,
  });

  FeedLoaded copyWith({
    List<MentorStory>? stories,
    List<PostItem>? posts,
    String? selectedCategory,
  }) {
    return FeedLoaded(
      stories: stories ?? this.stories,
      posts: posts ?? this.posts,
      selectedCategory: selectedCategory ?? this.selectedCategory,
    );
  }
}

// Cubit
class FeedCubit extends Cubit<FeedState> {
  FeedCubit() : super(FeedInitial());

  void loadFeed() {
    emit(FeedLoading());
    // Simulate loading or fetch from repository
    emit(FeedLoaded(
      stories: FeedMockData.mockStories,
      posts: FeedMockData.mockPosts,
      selectedCategory: 'Tất cả',
    ));
  }

  void selectCategory(String category) {
    if (state is FeedLoaded) {
      final currentState = state as FeedLoaded;
      emit(currentState.copyWith(selectedCategory: category));
    }
  }

  void toggleLike(String postId) {
    if (state is FeedLoaded) {
      final currentState = state as FeedLoaded;
      final updatedPosts = currentState.posts.map((post) {
        if (post.id == postId) {
          return PostItem(
            id: post.id,
            authorName: post.authorName,
            authorRole: post.authorRole,
            authorAvatar: post.authorAvatar,
            timeAgo: post.timeAgo,
            isVerified: post.isVerified,
            content: post.content,
            attachmentTitle: post.attachmentTitle,
            attachmentSubtitle: post.attachmentSubtitle,
            tags: post.tags,
            likes: post.likes + 1,
            comments: post.comments,
            shares: post.shares,
            isJobPost: post.isJobPost,
            jobTitle: post.jobTitle,
            jobSalary: post.jobSalary,
            jobPerks: post.jobPerks,
            companyName: post.companyName,
          );
        }
        return post;
      }).toList();

      emit(currentState.copyWith(posts: updatedPosts));
    }
  }
}
