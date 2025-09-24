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

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ✅ Init Hive
  await Hive.initFlutter();
  Hive.registerAdapter(EntryAdapter());
  await Hive.openBox<Entry>('entries'); // must match EntryProvider

  // ✅ Init Notifications
  await NotificationService.initialize();


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
      themeMode: ThemeMode.system, // 🌙 Follows system theme
      theme: _lightTheme,
      darkTheme: _darkTheme,
      initialRoute: '/home',

      // 🔥 Global route generator
      onGenerateRoute: (settings) {
        late final Widget page;

        switch (settings.name) {
          case '/home':
            page = const HomePage();
            break;

          case '/add_new_entry':
            page = const AddNewEntry();
            break;

          case '/edit_entry':
            final entryId = settings.arguments as String;
            page = EditEntry(entryId: entryId);
            break;

          case '/view_entry':
            final entryId = settings.arguments as String;
            page = ViewEntry(entryId: entryId);
            break;

          case '/choose_from_gallery':
            page = const ChooseFromGallery();
            break;

          case '/take_photo':
            page = const TakePhoto();
            break;

          case '/notification':
            page = const NotificationPage();
            break;

          default:
            page = const HomePage();
        }

        // ✨ Custom transition for all routes
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final fade = Tween<double>(begin: 0, end: 1).animate(animation);
            final scale = Tween<double>(begin: 0.9, end: 1).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeOutCubic,
              ),
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

/// 🌞 Light Theme
final ThemeData _lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    brightness: Brightness.light,
  ),
  textTheme: Typography.blackMountainView.apply(
    fontFamily: 'Roboto',
  ),
  scaffoldBackgroundColor: const Color(0xFFF8FAFC),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    foregroundColor: Color(0xFF1D1D1F),
  ),
  useMaterial3: true,
);

/// 🌙 Dark Theme
final ThemeData _darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    brightness: Brightness.dark,
  ),
  textTheme: Typography.whiteMountainView.apply(
    fontFamily: 'Roboto',
  ),
  scaffoldBackgroundColor: const Color(0xFF0F1115),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    foregroundColor: Colors.white,
  ),
  useMaterial3: true,
);
