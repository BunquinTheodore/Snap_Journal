import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // 👈 Orientation lock
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'models/entry_model.dart';
import 'providers/entry_provider.dart';
import 'screens/camera/take_photo_screen.dart';
import 'screens/entry/add_new_entry_screen.dart';
import 'screens/entry/edit_entry_screen.dart';
import 'screens/entry/view_entry_screen.dart';
import 'screens/gallery/choose_from_gallery_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/notification/notification_screen.dart';
import 'services/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ✅ Init Hive
  await Hive.initFlutter();
  Hive.registerAdapter(EntryAdapter());
  await Hive.openBox<Entry>('entries'); // 👈 REQUIRED

  // ✅ Init Notifications
  await NotificationService().init();

  // ✅ Lock orientation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  runApp(
    ChangeNotifierProvider(
      create: (_) => EntryProvider()..loadEntries(),
      child: const SnapJournalApp(),
    ),
  );
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

      // 🔥 Custom route generator with global animation
      onGenerateRoute: (settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/home':
            builder = (context) => const HomePage();
            break;
          case '/add_new_entry':
            builder = (context) => const AddNewEntry();
            break;
          case '/choose_from_gallery':
            builder = (context) => const ChooseFromGallery();
            break;
          case '/edit_entry':
            builder = (context) => const EditEntry();
            break;
          case '/notification':
            builder = (context) => const NotificationPage();
            break;
          case '/take_photo':
            builder = (context) => const TakePhoto();
            break;
          case '/view_entry':
            builder = (context) => const ViewEntry();
            break;
          default:
            builder = (context) => const HomePage();
        }

        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) =>
              builder(context),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // ✨ Global fade + scale animation
            final fade = Tween<double>(begin: 0, end: 1).animate(animation);
            final scale = Tween<double>(begin: 0.9, end: 1).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
            );

            return FadeTransition(
              opacity: fade,
              child: ScaleTransition(scale: scale, child: child),
            );
          },
        );
      },
    );
  }
}
