import 'dart:io';

import 'package:flutter/foundation.dart'; // ✅ for kIsWeb
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap_journal/models/entry_model.dart';
import 'package:snap_journal/providers/entry_provider.dart';
import 'package:snap_journal/services/image_service.dart';
import 'package:snap_journal/services/location_service.dart';
import 'package:snap_journal/services/audio_service.dart';
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
  late final LocationService _locationService;
  late final AudioService _audioService;

  double? _latitude;
  double? _longitude;
  String? _address;
  String? _audioPath;
  bool _isRecording = false;

  @override
  void initState() {
    super.initState();
    _imageService = ImageService();
    _locationService = LocationService();
    _audioService = AudioService();
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
      latitude: _latitude,
      longitude: _longitude,
      audioPath: _audioPath,
      address: _address,
    );

    await Provider.of<EntryProvider>(context, listen: false).addEntry(newEntry);

    if (!mounted) return;
    Navigator.pop(context);
  }

  Future<void> _attachLocation() async {
    final position = await _locationService.getCurrentPosition();
    if (position == null) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Location not available")),
      );
      return;
    }
    final addr = await _locationService.getAddressFrom(position);
    if (!mounted) return;
    setState(() {
      _latitude = position.latitude;
      _longitude = position.longitude;
      _address = addr;
    });
  }

  Future<void> _toggleRecording() async {
    if (_isRecording) {
      final path = await _audioService.stopRecording();
      if (!mounted) return;
      setState(() {
        _isRecording = false;
        _audioPath = path;
      });
      return;
    }
    final startedPath = await _audioService.startRecording();
    if (!mounted) return;
    if (startedPath == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Microphone permission denied")),
      );
      return;
    }
    setState(() {
      _isRecording = true;
    });
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

            // Image & actions
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest.withOpacity(0.4),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: colorScheme.outlineVariant),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    const SizedBox(height: 12),
                    const Divider(height: 1),
                    const SizedBox(height: 4),
                  ],

                  // Take Photo
                  ListTile(
                    leading: Icon(Icons.camera_alt_outlined, color: colorScheme.primary),
                    title: const Text("Take Photo", style: TextStyle(fontWeight: FontWeight.w600)),
                    onTap: _takePhoto,
                    dense: false,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 4),
                  ),
                  const Divider(height: 1),

                  // Choose from Gallery
                  ListTile(
                    leading: Icon(Icons.photo_library_outlined, color: colorScheme.primary),
                    title: const Text("Choose from Gallery", style: TextStyle(fontWeight: FontWeight.w600)),
                    onTap: _pickFromGallery,
                    dense: false,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 4),
                  ),
                  const Divider(height: 1),

                  // Add Location
                  ListTile(
                    leading: Icon(Icons.place_outlined, color: colorScheme.primary),
                    title: const Text("Add Location", style: TextStyle(fontWeight: FontWeight.w600)),
                    subtitle: Text(
                      _address ?? "Attach your current location",
                      style: TextStyle(color: colorScheme.onSurfaceVariant),
                    ),
                    trailing: _address != null
                        ? Chip(
                            label: const Text("Added"),
                            backgroundColor: colorScheme.primary.withOpacity(0.1),
                            labelStyle: TextStyle(color: colorScheme.primary),
                          )
                        : null,
                    onTap: _attachLocation,
                    dense: false,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 4),
                  ),
                  const Divider(height: 1),

                  // Record Voice Note
                  ListTile(
                    leading: Icon(Icons.mic_none_outlined,
                        color: _isRecording ? colorScheme.onPrimary : colorScheme.primary),
                    title: Text(
                      _isRecording
                          ? "Stop Recording"
                          : (_audioPath != null ? "Re-record Voice Note" : "Record Voice Note"),
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    trailing: _isRecording
                        ? Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: colorScheme.error.withOpacity(0.12),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text("Recording...",
                                style: TextStyle(color: colorScheme.error, fontSize: 12)),
                          )
                        : (_audioPath != null
                            ? Chip(
                                label: const Text("Voice note added"),
                                backgroundColor: colorScheme.primary.withOpacity(0.1),
                                labelStyle: TextStyle(color: colorScheme.primary),
                              )
                            : null),
                    onTap: _toggleRecording,
                    dense: false,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 4),
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
