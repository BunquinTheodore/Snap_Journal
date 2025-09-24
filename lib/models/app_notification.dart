class AppNotification {
  final String title;
  final String message;
  final DateTime timestamp;
  final NotificationType type;

  AppNotification({
    required this.title,
    required this.message,
    required this.timestamp,
    required this.type,
  });
}

enum NotificationType { add, edit, delete }
