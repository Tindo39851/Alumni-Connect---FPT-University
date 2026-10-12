class DirectMessage {
  final String id;
  final String senderId;
  final String content;
  final DateTime timestamp;
  final bool isSeen; // CH-05 (Seen checkmark)
  final String? imageUrl; // CH-07 (Image attachment)
  final String? meetLink; // Lịch hẹn Google Meet

  const DirectMessage({
    required this.id,
    required this.senderId,
    required this.content,
    required this.timestamp,
    this.isSeen = true,
    this.imageUrl,
    this.meetLink,
  });
}

class ChatConversation {
  final String id;
  final String peerName;
  final String peerRole;
  final String peerAvatar;
  final bool isOnline; // Online green dot
  final bool isMentor;
  final bool isPinned;
  final bool isMuted; // CH-09 (Mute notifications)
  final int unreadCount; // CH-10 & Unread badge
  final String lastMessage;
  final String lastMessageTime;
  final bool lastMessageIsSeen;
  final List<DirectMessage> messages;

  const ChatConversation({
    required this.id,
    required this.peerName,
    required this.peerRole,
    required this.peerAvatar,
    this.isOnline = true,
    this.isMentor = false,
    this.isPinned = false,
    this.isMuted = false,
    this.unreadCount = 0,
    required this.lastMessage,
    required this.lastMessageTime,
    this.lastMessageIsSeen = true,
    this.messages = const [],
  });

  ChatConversation copyWith({
    String? id,
    String? peerName,
    String? peerRole,
    String? peerAvatar,
    bool? isOnline,
    bool? isMentor,
    bool? isPinned,
    bool? isMuted,
    int? unreadCount,
    String? lastMessage,
    String? lastMessageTime,
    bool? lastMessageIsSeen,
    List<DirectMessage>? messages,
  }) {
    return ChatConversation(
      id: id ?? this.id,
      peerName: peerName ?? this.peerName,
      peerRole: peerRole ?? this.peerRole,
      peerAvatar: peerAvatar ?? this.peerAvatar,
      isOnline: isOnline ?? this.isOnline,
      isMentor: isMentor ?? this.isMentor,
      isPinned: isPinned ?? this.isPinned,
      isMuted: isMuted ?? this.isMuted,
      unreadCount: unreadCount ?? this.unreadCount,
      lastMessage: lastMessage ?? this.lastMessage,
      lastMessageTime: lastMessageTime ?? this.lastMessageTime,
      lastMessageIsSeen: lastMessageIsSeen ?? this.lastMessageIsSeen,
      messages: messages ?? this.messages,
    );
  }
}
