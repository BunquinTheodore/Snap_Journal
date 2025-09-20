import 'package:flutter/material.dart';

class ViewEntry extends StatelessWidget {
  const ViewEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const EntryHeader(),
              const SizedBox(height: 24),
              const EntryMetaChip(label: "Today"),
              const SizedBox(height: 12),
              Text(
                "Morning Reflections",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF1D1D1F),
                    ),
              ),
              const SizedBox(height: 24),
              const EntryCard(imageUrl: "https://placehold.co/313x256"),
              const SizedBox(height: 24),
              Text(
                "Started my day with coffee and gratitude. \n"
                "The sunrise was beautiful and reminded me \n"
                "of how blessed I am to witness another day. \n"
                "I am feeling particularly grateful for my \n"
                "health, my family, and the small moments \n"
                "that bring joy. Today I want to focus on \n"
                "being present and mindful in each \n"
                "interaction.",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      height: 1.62,
                      fontSize: 16,
                      color: const Color(0xFF1D1D1F),
                    ),
              ),
              const SizedBox(height: 24),
              const CapturedMomentCard(),
              const SizedBox(height: 24),
              const EntryStats(),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryHeader extends StatelessWidget {
  const EntryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: const Color(0xF2F8F9FB),
        border: Border.all(color: Colors.black.withOpacity(0.08), width: 1.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Icon(Icons.arrow_back, size: 20, color: Colors.black),
          ),
          Text(
            "Entry",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color(0xFF1D1D1F),
                ),
          ),
          const Row(
            children: [
              Icon(Icons.share, size: 20, color: Colors.black),
              SizedBox(width: 16),
              Icon(Icons.more_vert, size: 20, color: Colors.black),
              SizedBox(width: 16),
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
  final String imageUrl;
  const EntryCard({super.key, required this.imageUrl});

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
        image: DecorationImage(
          image: NetworkImage(imageUrl),
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
  const EntryStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _StatItem(label: "Words", value: "52"),
          _StatItem(label: "Reading Time", value: "1 min"),
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
