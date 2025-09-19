import 'package:flutter/material.dart';

import 'pages/add_new_entry.dart';
import 'pages/choose_from_gallery.dart';
import 'pages/edit_entry.dart';
import 'pages/home_page.dart';
import 'pages/notificationpage.dart';
import 'pages/settings.dart';
import 'pages/take_photo.dart';
import 'pages/view_entry.dart';

void main() {
  runApp(const SnapJournalApp());
}

class SnapJournalApp extends StatelessWidget {
  const SnapJournalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snap Journal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/add_new_entry': (context) => AddNewEntry(),
        '/choose_from_gallery': (context) => ChooseFromGallery(),
        '/edit_entry': (context) => EditEntry(),
        '/notification': (context) => NotificationPage(),
        '/settings': (context) => Settings(),
        '/take_photo': (context) => TakePhoto(),
        '/view_entry': (context) => ViewEntry(),
      },
    );
  }
}
