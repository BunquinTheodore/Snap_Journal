// lib/screens/entry/view_entry_screen.dart
import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap_journal/models/entry_model.dart';
import 'package:snap_journal/providers/entry_provider.dart';
import 'package:just_audio/just_audio.dart';

class ViewEntry extends StatelessWidget {
  final String entryId;

  const ViewEntry({super.key, required this.entryId});

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
    final entry = context.watch<EntryProvider>().getEntry(entryId);

    if (entry == null) {
      return const Scaffold(
        body: Center(child: Text("Entry not found")),
      );
    }

    final colors = Theme.of(context).colorScheme;
    final formattedDate = formatDateTime(entry.createdAt);
    final wordCount = entry.content
        .split(RegExp(r'\s+'))
        .where((w) => w.isNotEmpty)
        .length;
    final readingTime = (wordCount / 200).ceil(); // ~200 wpm

    return Scaffold(
      backgroundColor: colors.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EntryHeader(
                title: entry.title,
                entry: entry,
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
                      color: colors.onSurface,
                    ),
              ),
              const SizedBox(height: 24),
              if (entry.imagePath != null && entry.imagePath!.isNotEmpty)
                EntryCard(imagePath: entry.imagePath!)
              else
                const SizedBox.shrink(),
              const SizedBox(height: 24),
              if (entry.address != null || (entry.latitude != null && entry.longitude != null))
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.place, size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        entry.address != null && entry.address!.isNotEmpty
                            ? entry.address!
                            : "${entry.latitude?.toStringAsFixed(5)}, ${entry.longitude?.toStringAsFixed(5)}",
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              if (entry.address != null || (entry.latitude != null && entry.longitude != null))
                const SizedBox(height: 24),
              if (entry.audioPath != null && entry.audioPath!.isNotEmpty)
                AudioPlayerCard(audioPath: entry.audioPath!),
              if (entry.audioPath != null && entry.audioPath!.isNotEmpty)
                const SizedBox(height: 24),
              Text(
                entry.content,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      height: 1.62,
                      fontSize: 16,
                      color: colors.onSurface,
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
  final Entry entry;
  final Future<void> Function()? onDelete;

  const EntryHeader({
    super.key,
    required this.title,
    required this.entry,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border.all(
          color: colors.outlineVariant,
          width: 1.2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back, size: 20, color: colors.onSurface),
            onPressed: () => Navigator.pop(context),
          ),
          Text(
            "Entry",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: colors.onSurface,
                ),
          ),
          Row(
            children: [
              // ✏️ EDIT BUTTON
              IconButton(
                icon: Icon(Icons.edit, size: 20, color: colors.onSurface),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/edit_entry',
                    arguments: entry.id, // Pass the current entry
                  );
                },
              ),
              // 🗑️ DELETE BUTTON
              IconButton(
                icon: Icon(Icons.delete, size: 20, color: colors.error),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (dialogCtx) => AlertDialog(
                      title: const Text("Delete Entry"),
                      content: const Text(
                        "Are you sure you want to delete this entry?",
                      ),
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
                          child: Text(
                            "Delete",
                            style: TextStyle(color: colors.error),
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
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: colors.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: colors.onSurfaceVariant,
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
    final colors = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: colors.primary.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: colors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(Icons.camera_alt, color: colors.onPrimaryContainer),
          ),
          const SizedBox(height: 16),
          Text(
            "Moment Captured",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: colors.onSurface,
                ),
          ),
          const SizedBox(height: 12),
          Text(
            "Every entry is a step in your mindfulness\njourney. Thank you for taking the time to\nreflect.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 14,
                  height: 1.62,
                  color: colors.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }
}

class AudioPlayerCard extends StatefulWidget {
  final String audioPath;
  const AudioPlayerCard({super.key, required this.audioPath});

  @override
  State<AudioPlayerCard> createState() => _AudioPlayerCardState();
}

class _AudioPlayerCardState extends State<AudioPlayerCard> {
  late final AudioPlayer _player;
  bool _isLoading = true;
  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _setup();
  }

  Future<void> _setup() async {
    try {
      await _player.setFilePath(widget.audioPath);
      _duration = _player.duration ?? Duration.zero;
      _player.positionStream.listen((pos) {
        if (mounted) setState(() => _position = pos);
      });
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  String _fmt(Duration d) {
    String two(int n) => n.toString().padLeft(2, '0');
    final m = two(d.inMinutes.remainder(60));
    final s = two(d.inSeconds.remainder(60));
    final h = d.inHours;
    return h > 0 ? "$h:$m:$s" : "$m:$s";
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colors.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: _isLoading
                    ? null
                    : () async {
                        if (_player.playing) {
                          await _player.pause();
                        } else {
                          await _player.play();
                        }
                        if (mounted) setState(() {});
                      },
                icon: Icon(
                  _player.playing ? Icons.pause_circle_filled : Icons.play_circle_fill,
                  size: 32,
                  color: colors.primary,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearProgressIndicator(
                      value: (_duration.inMilliseconds == 0)
                          ? null
                          : (_position.inMilliseconds / _duration.inMilliseconds)
                              .clamp(0.0, 1.0),
                      backgroundColor: colors.surfaceContainerHighest,
                      color: colors.primary,
                      minHeight: 6,
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_fmt(_position),
                            style: Theme.of(context).textTheme.bodySmall),
                        Text(_fmt(_duration),
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ],
                ),
              ),
            ],
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
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colors.outlineVariant),
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
    final colors = Theme.of(context).colorScheme;

    return Column(
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: colors.onSurfaceVariant,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: colors.onSurface,
              ),
        ),
      ],
    );
  }
}
