import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:snap_journal/models/entry_model.dart';
import 'package:snap_journal/services/notification_service.dart';

class EditEntry extends StatefulWidget {
  final Entry? entry; // 👈 null = new entry, not null = editing existing

  const EditEntry({super.key, this.entry});

  @override
  State<EditEntry> createState() => _EditEntryState();
}

class _EditEntryState extends State<EditEntry> {
  late TextEditingController _titleController;
  late TextEditingController _contentController;
  late String imageUrl;

  @override
  void initState() {
    super.initState();

    // ✅ Load existing values if editing
    _titleController = TextEditingController(text: widget.entry?.title ?? "");
    _contentController = TextEditingController(text: widget.entry?.content ?? "");
    imageUrl = widget.entry?.imagePath ?? "https://placehold.co/315x192";
  }

  Future<void> _saveEntry(BuildContext context) async {
    final box = Hive.box<Entry>('entries');
    final title = _titleController.text.trim();
    final content = _contentController.text.trim();

    if (title.isEmpty && content.isEmpty) {
      // ✅ Prevent saving empty entries
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please add a title or content.")),
      );
      return;
    }

    if (widget.entry != null) {
      // ✨ Update existing entry
      widget.entry!
        ..title = title.isEmpty ? "Untitled Entry" : title
        ..content = content
        ..imagePath = imageUrl
        ..save();
    } else {
      // ✨ Create new entry
      final newEntry = Entry(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: title.isEmpty ? "Untitled Entry" : title,
        content: content,
        imagePath: imageUrl,
        createdAt: DateTime.now(),
      );
      await box.add(newEntry);
    }

    if (!mounted) return; // ✅ Guard before using context

    // ✅ Show notification
    NotificationService().showNotification(
      title: widget.entry == null ? "New Entry" : "Entry Updated",
      body: "Your journal entry was successfully saved!",
    );

    Navigator.pop(context); // ✅ Close screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: Text(widget.entry == null ? "New Entry" : "Edit Entry"),
        backgroundColor: const Color(0xFFF8FAFC),
        elevation: 0,
        actions: [
          TextButton.icon(
            onPressed: () => _saveEntry(context),
            icon: const Icon(Icons.check, size: 18, color: Colors.white),
            label: const Text(
              "Save",
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF007AFF),
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title field
              TextField(
                controller: _titleController,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xFF1D1D1F),
                ),
                decoration: const InputDecoration(
                  hintText: "Entry title...",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
              ),
              const SizedBox(height: 24),

              // Image + actions
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.black.withValues(alpha: 0.08),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                      child: Image.network(
                        imageUrl,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.camera_alt_outlined),
                      title: const Text("Take New Photo"),
                      onTap: () async {
                        final result = await Navigator.pushNamed(context, '/take_photo');
                        if (result != null && result is String) {
                          setState(() => imageUrl = result);
                        }
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.photo_library_outlined),
                      title: const Text("Change Photo"),
                      onTap: () async {
                        final result =
                            await Navigator.pushNamed(context, '/choose_from_gallery');
                        if (result != null && result is String) {
                          setState(() => imageUrl = result);
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Content field
              TextField(
                controller: _contentController,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "What is on your mind today?",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
