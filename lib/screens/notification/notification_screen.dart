import 'package:flutter/material.dart';

// -------------------- THEME HELPERS --------------------

class AppColors {
  static const background = Color(0xFFF8FAFC);
  static const primary = Color(0xFF007AFF);
  static const textPrimary = Color(0xFF1D1D1F);
  static const textSecondary = Color(0xFF64748B);
  static const caption = Color(0xFF697282);
  static const warning = Color(0xFFC93400);
}

class AppTextStyles {
  static const title = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const subtitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xFF354152),
  );

  static const caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.caption,
  );
}

class AppShadows {
  static const medium = [
    BoxShadow(
      color: Color(0x19000000),
      blurRadius: 4,
      offset: Offset(0, 2),
      spreadRadius: -1,
    ),
    BoxShadow(
      color: Color(0x19000000),
      blurRadius: 6,
      offset: Offset(0, 4),
      spreadRadius: -1,
    ),
  ];
}

// -------------------- REUSABLE WIDGETS --------------------

class NotificationCard extends StatelessWidget {
  final String title;
  final String time;
  final String message;
  final IconData icon;
  final Color gradientStart;
  final Color gradientEnd;

  const NotificationCard({
    super.key,
    required this.title,
    required this.time,
    required this.message,
    required this.icon,
    this.gradientStart = const Color(0xFFFF6800),
    this.gradientEnd = const Color(0xFFFD9900),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: AppShadows.medium,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [gradientStart, gradientEnd],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(title, style: AppTextStyles.subtitle),
                    const Spacer(),
                    Text(time, style: AppTextStyles.caption),
                  ],
                ),
                const SizedBox(height: 8),
                Text(message, style: AppTextStyles.body),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationTypesCard extends StatelessWidget {
  const NotificationTypesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {"emoji": "📝", "text": "Daily reminder notifications"},
      {"emoji": "✅", "text": "Entry added confirmations"},
      {"emoji": "❌", "text": "Entry deletion alerts"},
      {"emoji": "✏️", "text": "Entry update confirmations"},
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFFF7EC), Color(0xFFFFFBEA)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        border: Border.all(color: Color(0xFFFFD6A7), width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Notification Types:",
              style: TextStyle(
                color: AppColors.warning,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )),
          const SizedBox(height: 12),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Text(item["emoji"]!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.warning,
                      )),
                  const SizedBox(width: 8),
                  Text(item["text"]!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.warning,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// -------------------- MAIN PAGE --------------------

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: const Color(0xF2F8F9FB),
        elevation: 0,
        title: const Text("Notifications", style: AppTextStyles.title),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          NotificationCard(
            title: "SnapJournal",
            time: "2:30 PM",
            message: "You deleted an entry",
            icon: Icons.delete,
          ),
          NotificationCard(
            title: "SnapJournal",
            time: "1:15 PM",
            message: "You updated an entry at 1:15 PM, Dec 8",
            icon: Icons.edit,
          ),
          NotificationTypesCard(),
        ],
      ),
    );
  }
}
