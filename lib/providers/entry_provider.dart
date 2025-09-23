// lib/providers/entry_provider.dart
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:snap_journal/models/entry_model.dart';

class EntryProvider extends ChangeNotifier {
  // NOTE: keep this name in sync with the box name you open in main.dart
  static const String _boxName = "entries"; // <- changed to match main.dart

  List<Entry> _entries = [];
  List<Entry> get entries => _entries;

  /// Load entries from Hive box
  Future<void> loadEntries() async {
    final box = await Hive.openBox<Entry>(_boxName);
    _entries = box.values.toList();
    notifyListeners();
  }

  /// Add new entry (stores using entry.id as key)
  Future<void> addEntry(Entry entry) async {
    final box = await Hive.openBox<Entry>(_boxName);
    await box.put(entry.id, entry);
    _entries = box.values.toList();
    notifyListeners();
  }

  /// Update an existing entry (overwrite by id)
  Future<void> updateEntry(Entry entry) async {
    final box = await Hive.openBox<Entry>(_boxName);
    await box.put(entry.id, entry); // overwrite
    _entries = box.values.toList();
    notifyListeners();
  }

  /// Delete an entry by id
  Future<void> deleteEntry(String id) async {
    final box = await Hive.openBox<Entry>(_boxName);
    await box.delete(id);
    _entries = box.values.toList();
    notifyListeners();
  }

  /// Convenience: delete by Entry object
  Future<void> removeEntry(Entry entry) async {
    // Reuse deleteEntry to avoid duplicating logic
    await deleteEntry(entry.id);
  }

  /// Find a single entry by id
  Entry? getEntry(String id) {
    try {
      return _entries.firstWhere((e) => e.id == id);
    } catch (_) {
      return null;
    }
  }
}
