import 'package:flutter/material.dart';
import 'package:snap_journal/services/notification_service.dart'; // 👈 import

class EditEntry extends StatefulWidget {
  const EditEntry({super.key});

  @override
  State<EditEntry> createState() => _EditEntryState();
}

class _EditEntryState extends State<EditEntry> {
  final TextEditingController _titleController =
      TextEditingController(text: "Morning Reflections");
  final TextEditingController _contentController = TextEditingController(
    text:
        "Started my day with coffee and gratitude. The sunrise was beautiful and reminded me of how blessed I am to witness another day. I am feeling particularly grateful for my health, my family, and the small moments that bring joy. Today I want to focus on being present and mindful in each interaction.",
  );

  String imageUrl = "https://placehold.co/315x192";

  void _saveEntry(BuildContext context) {
    // TODO: Save updated entry in Hive

    // 👇 Show notification
    NotificationService().showNotification(
      title: "Entry Updated",
      body: "Your journal entry was successfully updated!",
    );

    // Close screen
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text("Edit Entry"),
        backgroundColor: const Color(0xFFF8FAFC),
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () => _saveEntry(context), // 👈 use save function
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF007AFF),
              foregroundColor: Colors.white,
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: const Text("Save"),
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
                  labelText: "Title",
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
              ),
              const SizedBox(height: 24),

              // Image + actions
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black.withOpacity(0.08)),
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
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16)),
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
                        final result =
                            await Navigator.pushNamed(context, '/take_photo');
                        if (result != null && result is String) {
                          setState(() {
                            imageUrl = result;
                          });
                        }
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.photo_library_outlined),
                      title: const Text("Change Photo"),
                      onTap: () async {
                        final result = await Navigator.pushNamed(
                            context, '/choose_from_gallery');
                        if (result != null && result is String) {
                          setState(() {
                            imageUrl = result;
                          });
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
                  labelText: "Your entry",
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
