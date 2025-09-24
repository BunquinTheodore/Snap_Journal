// lib/screens/entry/edit_entry_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap_journal/models/entry_model.dart';
import 'package:snap_journal/providers/entry_provider.dart';

class EditEntry extends StatefulWidget {
  final String entryId; // ✅ always pass ID

  const EditEntry({super.key, required this.entryId});

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
    _titleController = TextEditingController();
    _contentController = TextEditingController();
    imageUrl = "https://placehold.co/315x192";
  }

  Future<void> _saveEntry(BuildContext context, Entry? entry) async {
    final title = _titleController.text.trim();
    final content = _contentController.text.trim();

    if (title.isEmpty && content.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please add a title or content.")),
      );
      return;
    }

    final provider = Provider.of<EntryProvider>(context, listen: false);

    if (entry != null) {
      // ✨ Update existing entry
      entry
        ..title = title.isEmpty ? "Untitled Entry" : title
        ..content = content
        ..imagePath = imageUrl;

      await provider.updateEntry(entry);
    } else {
      // ✨ Create new entry (fallback, though usually EditEntry always has one)
      final newEntry = Entry(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: title.isEmpty ? "Untitled Entry" : title,
        content: content,
        imagePath: imageUrl,
        createdAt: DateTime.now(),
      );
      await provider.addEntry(newEntry);
    }

    if (!mounted) return;
    Navigator.pop(context); // ✅ Close screen after save
  }

  @override
  Widget build(BuildContext context) {
    final entry = context.watch<EntryProvider>().getEntry(widget.entryId);

    // Handle missing entry
    if (entry == null) {
      return const Scaffold(
        body: Center(child: Text("Entry not found")),
      );
    }

    // Sync controllers once when entry is loaded
    _titleController.text = entry.title;
    _contentController.text = entry.content;
    if (entry.imagePath != null && entry.imagePath!.isNotEmpty) {
      imageUrl = entry.imagePath!;
    }

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        title: const Text("Edit Entry"),
        backgroundColor: colorScheme.background,
        elevation: 0,
        actions: [
          TextButton.icon(
            onPressed: () => _saveEntry(context, entry),
            icon: const Icon(Icons.check, size: 18, color: Colors.white),
            label: const Text(
              "Save",
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
            style: TextButton.styleFrom(
              backgroundColor: colorScheme.primary,
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
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: colorScheme.onSurface,
                ),
                decoration: InputDecoration(
                  hintText: "Entry title...",
                  hintStyle: TextStyle(color: colorScheme.onSurface.withOpacity(0.6)),
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
              ),
              const SizedBox(height: 24),

              // Image + actions
              Container(
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: colorScheme.outlineVariant,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.shadow.withOpacity(0.08),
                      blurRadius: 2,
                      offset: const Offset(0, 1),
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
                      leading: Icon(Icons.camera_alt_outlined, color: colorScheme.primary),
                      title: Text("Take New Photo", style: TextStyle(color: colorScheme.onSurface)),
                      onTap: () async {
                        final result = await Navigator.pushNamed(context, '/take_photo');
                        if (result != null && result is String) {
                          setState(() => imageUrl = result);
                        }
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.photo_library_outlined, color: colorScheme.primary),
                      title: Text("Change Photo", style: TextStyle(color: colorScheme.onSurface)),
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
                style: TextStyle(color: colorScheme.onSurface),
                decoration: InputDecoration(
                  hintText: "What is on your mind today?",
                  hintStyle: TextStyle(color: colorScheme.onSurface.withOpacity(0.6)),
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
