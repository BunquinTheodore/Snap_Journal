import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF8FAFC),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 384),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                        spreadRadius: -5,
                      ),
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 50,
                        offset: Offset(0, 25),
                        spreadRadius: -12,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Top header
                      Container(
                        height: 77,
                        decoration: ShapeDecoration(
                          color: const Color(0xF2F8F9FB),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: Colors.black.withValues(alpha: 0.08),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 24),
                            Container(
                              width: 44,
                              height: 44,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF007AFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 2,
                                    offset: Offset(0, 1),
                                    spreadRadius: -1,
                                  ),
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 3,
                                    offset: Offset(0, 1),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: const SizedBox(),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'SnapJournal',
                              style: TextStyle(
                                color: Color(0xFF1D1D1F),
                                fontSize: 19.53,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                height: 1.43,
                                letterSpacing: -0.50,
                              ),
                            ),
                            const Spacer(),
                            const SizedBox(width: 16),
                            const SizedBox(width: 16),
                            const SizedBox(width: 24),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Journals
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          children: [
                            _buildJournalCard(
                              imageUrl: 'https://placehold.co/64x64',
                              title: 'Morning\nReflections',
                              tag: 'Today',
                              content:
                                  'Started my day with coffee and\ngratitude. The sunrise was',
                              words: '52 words',
                              titleFontSize: 17.58,
                              contentFontSize: 13.89,
                              wordsFontSize: 11.62,
                            ),
                            const SizedBox(height: 16),
                            _buildJournalCard(
                              imageUrl: 'https://placehold.co/64x64',
                              title: 'Evening\nWalk',
                              tag: 'Yesterday',
                              content:
                                  'Took a peaceful walk during\nsunset. It is amazing how natu',
                              words: '52 words',
                              titleFontSize: 18,
                              contentFontSize: 13.78,
                              wordsFontSize: 11.62,
                            ),
                            const SizedBox(height: 16),
                            _buildJournalCard(
                              imageUrl: 'https://placehold.co/64x64',
                              title: 'Writing\nGoals',
                              tag: 'Dec 8',
                              content:
                                  'Set some new intentions for my\njournaling practice. I want to ',
                              words: '50 words',
                              titleFontSize: 18,
                              contentFontSize: 13.89,
                              wordsFontSize: 11.62,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Floating button
                      Container(
                        width: double.infinity,
                        color: const Color(0xFFF8FAFC),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: Container(
                            width: 56,
                            height: 56,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF007AFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33554400),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x0A000000),
                                  blurRadius: 10,
                                  offset: Offset(0, 10),
                                  spreadRadius: -5,
                                ),
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 25,
                                  offset: Offset(0, 20),
                                  spreadRadius: -5,
                                )
                              ],
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildJournalCard({
    required String imageUrl,
    required String title,
    required String tag,
    required String content,
    required String words,
    double titleFontSize = 18,
    double contentFontSize = 14,
    double wordsFontSize = 12,
  }) {
    return Container(
      width: 317,
      height: 170.5,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: -1,
          ),
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 6,
            offset: Offset(0, 4),
            spreadRadius: -1,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 16, 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // thumbnail
            Container(
              width: 64,
              height: 64,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 2,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            const SizedBox(width: 16),
            // right side
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // title + tag
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            color: const Color(0xFF1D1D1F),
                            fontSize: titleFontSize,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 1.25,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F5F9),
                          borderRadius: BorderRadius.circular(33554400),
                        ),
                        child: Text(
                          tag,
                          style: const TextStyle(
                            color: Color(0xFF64748B),
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 1.43,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // content text
                  SizedBox(
                    height: 45.5,
                    child: Text(
                      content,
                      style: TextStyle(
                        color: const Color(0xFF64748B),
                        fontSize: contentFontSize,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 1.64,
                      ),
                    ),
                  ),
                  const Spacer(),
                  // words count
                  Text(
                    words,
                    style: TextStyle(
                      color: const Color(0xFF64748B),
                      fontSize: wordsFontSize,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 1.38,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
