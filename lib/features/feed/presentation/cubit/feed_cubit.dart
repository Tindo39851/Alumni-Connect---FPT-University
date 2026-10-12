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
          final isLiked = !post.isLiked;
          return post.copyWith(
            isLiked: isLiked,
            likes: isLiked ? post.likes + 1 : (post.likes > 0 ? post.likes - 1 : 0),
          );
        }
        return post;
      }).toList();

      emit(currentState.copyWith(posts: updatedPosts));
    }
  }

  void toggleSave(String postId) {
    if (state is FeedLoaded) {
      final currentState = state as FeedLoaded;
      final updatedPosts = currentState.posts.map((post) {
        if (post.id == postId) {
          return post.copyWith(isSaved: !post.isSaved);
        }
        return post;
      }).toList();

      emit(currentState.copyWith(posts: updatedPosts));
    }
  }

  void addComment(String postId, String commentText, {String? parentCommentId}) {
    if (state is FeedLoaded) {
      final currentState = state as FeedLoaded;
      final updatedPosts = currentState.posts.map((post) {
        if (post.id == postId) {
          final newComment = CommentItem(
            id: 'cmt_${DateTime.now().millisecondsSinceEpoch}',
            authorName: 'Nguyễn Văn An',
            authorRole: 'Sinh viên K16 • FPT University',
            authorAvatar: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150',
            timeAgo: 'Vừa xong',
            content: commentText,
          );

          List<CommentItem> updatedComments = List.from(post.commentList);
          if (parentCommentId == null) {
            updatedComments.insert(0, newComment);
          } else {
            updatedComments = updatedComments.map((c) {
              if (c.id == parentCommentId) {
                return c.copyWith(
                  replies: [...c.replies, newComment],
                );
              }
              return c;
            }).toList();
          }

          return post.copyWith(
            commentList: updatedComments,
            comments: post.comments + 1,
          );
        }
        return post;
      }).toList();

      emit(currentState.copyWith(posts: updatedPosts));
    }
  }

  void addNewPost(PostItem newPost) {
    if (state is FeedLoaded) {
      final currentState = state as FeedLoaded;
      emit(currentState.copyWith(posts: [newPost, ...currentState.posts]));
    }
  }
}
