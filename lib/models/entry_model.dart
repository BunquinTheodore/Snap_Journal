import 'package:hive/hive.dart';

part 'entry_model.g.dart'; // must match filename

@HiveType(typeId: 0)
class Entry extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String content;

  @HiveField(3)
  String? imagePath; // optional: gallery or camera photo

  @HiveField(4)
  DateTime createdAt;

  Entry({
    required this.id,
    required this.title,
    required this.content,
    this.imagePath,
    required this.createdAt,
  });

  /// ✅ Add copyWith for safe updates
  Entry copyWith({
    String? id,
    String? title,
    String? content,
    String? imagePath,
    DateTime? createdAt,
  }) {
    return Entry(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      imagePath: imagePath ?? this.imagePath,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
