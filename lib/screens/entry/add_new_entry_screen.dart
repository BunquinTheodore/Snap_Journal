import 'dart:io';

import 'package:flutter/foundation.dart'; // ✅ for kIsWeb
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap_journal/models/entry_model.dart';
import 'package:snap_journal/providers/entry_provider.dart';
import 'package:snap_journal/services/image_service.dart';
import 'package:uuid/uuid.dart';

class AddNewEntry extends StatefulWidget {
  const AddNewEntry({super.key});

  @override
  State<AddNewEntry> createState() => _AddNewEntryState();
}

class _AddNewEntryState extends State<AddNewEntry> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  File? _selectedImage;
  late final ImageService _imageService;

  @override
  void initState() {
    super.initState();
    _imageService = ImageService();
  }

  Future<void> _pickFromGallery() async {
    final file = await _imageService.pickFromGallery();
    if (!mounted) return;
    if (file != null) {
      setState(() => _selectedImage = File(file.path));
    }
  }

  Future<void> _takePhoto() async {
    final file = await _imageService.takePhoto();
    if (!mounted) return;
    if (file != null) {
      setState(() => _selectedImage = File(file.path));
    }
  }

  Future<void> _saveEntry() async {
    final title = _titleController.text.trim();
    final content = _contentController.text.trim();

    if (title.isEmpty && content.isEmpty) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please write something first.")),
      );
      return;
    }

    final newEntry = Entry(
      id: const Uuid().v4(),
      title: title.isEmpty ? "Untitled Entry" : title,
      content: content,
      imagePath: _selectedImage?.path,
      createdAt: DateTime.now(),
    );

    await Provider.of<EntryProvider>(context, listen: false).addEntry(newEntry);

    if (!mounted) return;
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: Text(
          "New Entry",
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        backgroundColor: colorScheme.surface,
        elevation: 0,
        automaticallyImplyLeading: true,
        actions: [
          FilledButton.icon(
            onPressed: _saveEntry,
            icon: const Icon(Icons.check, size: 18),
            label: const Text("Save"),
            style: FilledButton.styleFrom(
              backgroundColor: colorScheme.primary,
              foregroundColor: colorScheme.onPrimary,
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title input
            TextField(
              controller: _titleController,
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                hintText: "Entry title...",
                hintStyle: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
            ),
            const SizedBox(height: 24),

            // Image picker
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
                border: Border.all(color: colorScheme.outline, width: 1),
              ),
              child: Column(
                children: [
                  if (_selectedImage != null) ...[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: kIsWeb
                          ? Image.network(
                              _selectedImage!.path,
                              height: 180,
                              fit: BoxFit.cover,
                            )
                          : Image.file(
                              _selectedImage!,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                    ),
                    const SizedBox(height: 16),
                  ],
                  ElevatedButton(
                    onPressed: _takePhoto,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.surface,
                      foregroundColor: colorScheme.onSurface,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: colorScheme.outline),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 24),
                    ),
                    child: const Text(
                      "Take Photo",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: _pickFromGallery,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.surface,
                      foregroundColor: colorScheme.onSurface,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: colorScheme.outline),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 24),
                    ),
                    child: const Text(
                      "Choose from Gallery",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Content
            TextField(
              controller: _contentController,
              minLines: 5,
              maxLines: null,
              style: textTheme.bodyMedium,
              decoration: InputDecoration(
                hintText: "What is on your mind today?",
                hintStyle: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              ),
            ),
            const SizedBox(height: 24),

            // Inspiration Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest.withOpacity(0.4),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Writing Inspiration",
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "• Share how you are feeling in this moment",
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "• Reflect on what you are grateful for",
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "• Notice the small details around you",
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
