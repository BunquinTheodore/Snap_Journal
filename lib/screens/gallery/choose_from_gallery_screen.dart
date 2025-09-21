import 'dart:io' show File; // Only available on mobile/desktop
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class ChooseFromGallery extends StatefulWidget {
  const ChooseFromGallery({super.key});

  @override
  State<ChooseFromGallery> createState() => _ChooseFromGalleryState();
}

class _ChooseFromGalleryState extends State<ChooseFromGallery> {
  List<dynamic> _images = []; // File (mobile/desktop) or Uint8List (web)

  Future<void> _pickImages() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        _images = result.files.map((file) {
          if (kIsWeb) {
            return file.bytes; // Uint8List
          } else {
            return File(file.path!); // File
          }
        }).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          "Gallery",
          style: TextStyle(
            color: Color(0xFF1D1D1F),
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color(0xFFFFFBEA),
        foregroundColor: const Color(0xFF9F2D00),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.add_photo_alternate),
            onPressed: _pickImages,
          ),
        ],
      ),
      body: Column(
        children: [
          // Gallery Grid
          Expanded(
            child: _images.isEmpty
                ? const Center(child: Text("No photos selected"))
                : GridView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    itemCount: _images.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                    itemBuilder: (context, index) {
                      final img = _images[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.pop(context, img); // Return selected image
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: kIsWeb
                              ? Image.memory(img, fit: BoxFit.cover)
                              : Image.file(img, fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
          ),

          // Info banner
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF7EC).withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              "📱 Picked photos from device storage",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF64748B), fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
