import 'package:hive/hive.dart';

import '../models/entry_model.dart';

class EntryRepository {
  static const String boxName = 'entries';

  Future<void> addEntry(Entry entry) async {
    final box = await Hive.openBox<Entry>(boxName);
    await box.put(entry.id, entry);
  }

  Future<List<Entry>> getEntries() async {
    final box = await Hive.openBox<Entry>(boxName);
    return box.values.toList();
  }

  Future<void> deleteEntry(String id) async {
    final box = await Hive.openBox<Entry>(boxName);
    await box.delete(id);
  }

  Future<void> updateEntry(Entry entry) async {
    final box = await Hive.openBox<Entry>(boxName);
    await box.put(entry.id, entry);
  }
}
