// lib/screens/home/home_screen.dart
import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap_journal/models/entry_model.dart';
import 'package:snap_journal/providers/entry_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  String formatChipLabel(DateTime dt) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));

    if (dt.isAfter(today)) return "Today";
    if (dt.isAfter(yesterday)) return "Yesterday";

    final months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
    return "${months[dt.month - 1]} ${dt.day}";
  }

  @override
  Widget build(BuildContext context) {
    final entries = context.watch<EntryProvider>().entries;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: colorScheme.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.menu_book, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 8),
            Text(
              "SnapJournal",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
      body: entries.isEmpty
          ? Center(
              child: Text(
                "No journal entries yet.\nTap + to add your first one!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colorScheme.onSurfaceVariant,
                  fontSize: 16,
                ),
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: entries.length,
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                final entry = entries[index];
                return _buildEntryCard(context, entry, colorScheme);
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/add_new_entry'),
        backgroundColor: colorScheme.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add, size: 28),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildEntryCard(
    BuildContext context,
    Entry entry,
    ColorScheme colorScheme,
  ) {
    final title = entry.title.isNotEmpty ? entry.title : "Untitled";
    final contentPreview = entry.content.isNotEmpty
        ? entry.content
        : (entry.imagePath != null ? "Photo entry" : "");
    final words = entry.content.split(RegExp(r'\s+')).where((w) => w.isNotEmpty).length;

    return InkWell(
      onTap: () async {
        final deleted = await Navigator.pushNamed(
          context,
          '/view_entry',
          arguments: entry.id,
        );
        if (deleted == true) {
          await context.read<EntryProvider>().deleteEntry(entry.id);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (entry.imagePath != null && entry.imagePath!.isNotEmpty)
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                child: kIsWeb
                    ? Image.network(
                        entry.imagePath!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      )
                    : Image.file(
                        File(entry.imagePath!),
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: colorScheme.onSurface,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: colorScheme.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            formatChipLabel(entry.createdAt),
                            style: TextStyle(
                              fontSize: 12,
                              color: colorScheme.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      contentPreview,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.favorite_border,
                            size: 14, color: colorScheme.primary),
                        const SizedBox(width: 4),
                        Text(
                          "$words words",
                          style: TextStyle(
                            fontSize: 12,
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
