// lib/screens/entry/view_entry_screen.dart
import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap_journal/models/entry_model.dart';
import 'package:snap_journal/providers/entry_provider.dart';

class ViewEntry extends StatelessWidget {
  final Entry entry;

  const ViewEntry({super.key, required this.entry});

  /// Manual formatter (same as HomePage)
  String formatDateTime(DateTime dt) {
    final months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    final month = months[dt.month - 1];
    final day = dt.day;
    final year = dt.year;

    int hour = dt.hour;
    final minute = dt.minute.toString().padLeft(2, '0');
    final ampm = hour >= 12 ? 'PM' : 'AM';
    if (hour == 0) {
      hour = 12;
    } else if (hour > 12) {
      hour = hour - 12;
    }

    return '$month $day, $year • $hour:$minute $ampm';
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate = formatDateTime(entry.createdAt);
    final wordCount =
        entry.content.split(RegExp(r'\s+')).where((w) => w.isNotEmpty).length;
    final readingTime = (wordCount / 200).ceil(); // ~200 wpm

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EntryHeader(
                title: entry.title,
                onDelete: () async {
                  await context.read<EntryProvider>().deleteEntry(entry.id);
                },
              ),
              const SizedBox(height: 24),
              EntryMetaChip(label: formattedDate),
              const SizedBox(height: 12),
              Text(
                entry.title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF1D1D1F),
                    ),
              ),
              const SizedBox(height: 24),
              if (entry.imagePath != null && entry.imagePath!.isNotEmpty)
                EntryCard(imagePath: entry.imagePath!)
              else
                const SizedBox.shrink(),
              const SizedBox(height: 24),
              Text(
                entry.content,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      height: 1.62,
                      fontSize: 16,
                      color: const Color(0xFF1D1D1F),
                    ),
              ),
              const SizedBox(height: 24),
              const CapturedMomentCard(),
              const SizedBox(height: 24),
              EntryStats(
                wordCount: wordCount,
                readingTime: "$readingTime min",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryHeader extends StatelessWidget {
  final String title;
  final Future<void> Function()? onDelete;

  const EntryHeader({super.key, required this.title, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: const Color(0xF2F8F9FB),
        border: Border.all(
            color: Colors.black.withValues(alpha: 0.08), width: 1.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, size: 20, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          Text(
            "Entry",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color(0xFF1D1D1F),
                ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.delete, size: 20, color: Colors.black),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (dialogCtx) => AlertDialog(
                      title: const Text("Delete Entry"),
                      content: const Text(
                          "Are you sure you want to delete this entry?"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(dialogCtx),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () async {
                            Navigator.pop(dialogCtx); // close dialog
                            if (onDelete != null) {
                              await onDelete!();
                            }
                            Navigator.pop(context, true); // pop ViewEntry
                          },
                          child: const Text(
                            "Delete",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(width: 16),
            ],
          ),
        ],
      ),
    );
  }
}

class EntryMetaChip extends StatelessWidget {
  final String label;
  const EntryMetaChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color(0xFF64748B),
            ),
      ),
    );
  }
}

class EntryCard extends StatelessWidget {
  final String imagePath;
  const EntryCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 256,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: kIsWeb
            ? Image.network(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    Container(color: Colors.grey[200]),
              )
            : Image.file(
                File(imagePath),
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}

class CapturedMomentCard extends StatelessWidget {
  const CapturedMomentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0x4CF1F4F8),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0x190079FE),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(Icons.camera_alt, color: Color(0xFF1D1D1F)),
          ),
          const SizedBox(height: 16),
          Text(
            "Moment Captured",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color(0xFF1D1D1F),
                ),
          ),
          const SizedBox(height: 12),
          Text(
            "Every entry is a step in your mindfulness\njourney. Thank you for taking the time to\nreflect.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 14,
                  height: 1.62,
                  color: const Color(0xFF64748B),
                ),
          ),
        ],
      ),
    );
  }
}

class EntryStats extends StatelessWidget {
  final int wordCount;
  final String readingTime;

  const EntryStats(
      {super.key, required this.wordCount, required this.readingTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black.withValues(alpha: 0.08)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _StatItem(label: "Words", value: "$wordCount"),
          _StatItem(label: "Reading Time", value: readingTime),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: const Color(0xFF64748B),
              ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: const Color(0xFF1D1D1F),
              ),
        ),
      ],
    );
  }
}
