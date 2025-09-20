import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap_journal/models/entry_model.dart';
import 'package:snap_journal/providers/entry_provider.dart';
import 'package:snap_journal/services/image_service.dart';
import 'package:snap_journal/services/notification_service.dart';
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

  void _pickFromGallery() async {
    final file = await _imageService.pickFromGallery();
    if (file != null) {
      setState(() => _selectedImage = File(file.path));
    }
  }

  void _takePhoto() async {
    final file = await _imageService.takePhoto();
    if (file != null) {
      setState(() => _selectedImage = File(file.path));
    }
  }

  void _saveEntry() {
    final title = _titleController.text.trim();
    final content = _contentController.text.trim();

    if (title.isEmpty && content.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please write something first.")),
      );
      return;
    }

    final entry = Entry(
      id: const Uuid().v4(),
      title: title.isEmpty ? "Untitled Entry" : title,
      content: content,
      imagePath: _selectedImage?.path,
      createdAt: DateTime.now(),
    );

    // ✅ Save entry using Provider
    Provider.of<EntryProvider>(context, listen: false).addEntry(entry);

    // ✅ Show notification
    NotificationService().showNotification(
      title: "New Journal Entry",
      body: "Your entry was added successfully!",
    );

    Navigator.pop(context); // Close screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          "New Entry",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF1D1D1F),
          ),
        ),
        backgroundColor: const Color(0xF2F8F9FB),
        elevation: 0,
        automaticallyImplyLeading: true,
        actions: [
          TextButton.icon(
            onPressed: _saveEntry,
            icon: const Icon(Icons.check, color: Colors.white, size: 18),
            label: const Text(
              "Save",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF007AFF),
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
            // Entry title
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                hintText: "Entry title...",
                hintStyle: const TextStyle(
                  color: Color(0xFF64748B),
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

            // Add photo card
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                border: Border.all(color: Colors.black12, width: 1),
              ),
              child: Column(
                children: [
                  if (_selectedImage != null) ...[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.file(
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
                      backgroundColor: const Color(0xFFF8FAFC),
                      foregroundColor: const Color(0xFF1D1D1F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(color: Colors.black12),
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
                      backgroundColor: const Color(0xFFF8FAFC),
                      foregroundColor: const Color(0xFF1D1D1F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(color: Colors.black12),
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

            // Entry content
            TextField(
              controller: _contentController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "What is on your mind today?",
                hintStyle: const TextStyle(
                  color: Color(0xFF64748B),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              ),
            ),
            const SizedBox(height: 24),

            // Writing Inspiration Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0x4CF1F4F8),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Writing Inspiration",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xFF1D1D1F),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text("• Share how you are feeling in this moment",
                      style: TextStyle(color: Color(0xFF64748B), fontSize: 14)),
                  SizedBox(height: 8),
                  Text("• Reflect on what you are grateful for",
                      style: TextStyle(color: Color(0xFF64748B), fontSize: 14)),
                  SizedBox(height: 8),
                  Text("• Notice the small details around you",
                      style: TextStyle(color: Color(0xFF64748B), fontSize: 14)),
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
