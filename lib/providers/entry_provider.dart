// lib/providers/entry_provider.dart
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:snap_journal/models/entry_model.dart';
import 'package:snap_journal/services/notification_service.dart';

class EntryProvider extends ChangeNotifier {
  static const String _boxName = "entries"; // keep consistent with main.dart
  Box<Entry>? _box;

  List<Entry> _entries = [];
  List<Entry> get entries => _entries;

  /// Ensure the Hive box is open
  Future<Box<Entry>> _openBox() async {
    _box ??= await Hive.openBox<Entry>(_boxName);
    return _box!;
  }

  /// Reload entries into memory
  Future<void> _reloadEntries() async {
    final box = await _openBox();
    _entries = box.values.toList();
    notifyListeners();
  }

  /// Load entries on app start
  Future<void> loadEntries() async {
    await _reloadEntries();
  }

  /// Add a new entry
  Future<void> addEntry(Entry entry) async {
    final box = await _openBox();
    await box.put(entry.id, entry);
    await _reloadEntries();

    NotificationService.showNotification(
      title: "SnapJournal",
      body: "New entry added at ${DateTime.now()}",
    );
  }

  /// Update an existing entry
  Future<void> updateEntry(Entry entry) async {
    final box = await _openBox();
    await box.put(entry.id, entry); // overwrite existing
    await _reloadEntries();

    NotificationService.showNotification(
      title: "SnapJournal",
      body: "Entry updated at ${DateTime.now()}",
    );
  }

  /// Delete an entry by id
  Future<void> deleteEntry(String id) async {
    final box = await _openBox();
    await box.delete(id);
    await _reloadEntries();

    NotificationService.showNotification(
      title: "SnapJournal",
      body: "Entry deleted at ${DateTime.now()}",
    );
  }

  /// Delete by Entry object
  Future<void> removeEntry(Entry entry) async {
    await deleteEntry(entry.id);
  }

  /// Find entry by id
  Entry? getEntry(String id) {
    try {
      return _entries.firstWhere((e) => e.id == id);
    } catch (_) {
      return null;
    }
  }

  /// Alias: getById (for consistency with your ViewEntry code)
  Entry? getById(String id) => getEntry(id);
}
