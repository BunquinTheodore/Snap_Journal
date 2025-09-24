import 'package:flutter/material.dart';
import 'package:snap_journal/models/app_notification.dart';

class NotificationProvider extends ChangeNotifier {
  final List<AppNotification> _notifications = [];

  List<AppNotification> get notifications => List.unmodifiable(_notifications);

  void addNotification(AppNotification notification) {
    _notifications.insert(0, notification); // newest first
    notifyListeners();
  }

  void clear() {
    _notifications.clear();
    notifyListeners();
  }
}
