import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap_journal/models/app_notification.dart';
import 'package:snap_journal/providers/notification_provider.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  String _formatTime(DateTime time) {
    return "${time.hour}:${time.minute.toString().padLeft(2, '0')}"; // basic formatting
  }

  IconData _getIcon(NotificationType type) {
    switch (type) {
      case NotificationType.add:
        return Icons.add;
      case NotificationType.edit:
        return Icons.edit;
      case NotificationType.delete:
        return Icons.delete;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: const Color(0xFFF8FAFC),
        elevation: 0,
        centerTitle: true,
      ),
      body: Consumer<NotificationProvider>(
        builder: (context, notifProvider, _) {
          if (notifProvider.notifications.isEmpty) {
            return const Center(
              child: Text("No notifications yet."),
            );
          }
          return ListView.builder(
            itemCount: notifProvider.notifications.length,
            itemBuilder: (context, index) {
              final notif = notifProvider.notifications[index];
              return ListTile(
                leading: Icon(_getIcon(notif.type), color: Colors.blue),
                title: Text(notif.title),
                subtitle: Text(notif.message),
                trailing: Text(_formatTime(notif.timestamp)),
              );
            },
          );
        },
      ),
    );
  }
}
