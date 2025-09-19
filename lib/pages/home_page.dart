import 'package:flutter/material.dart';

class HomePage extends StatelessWidget { // <-- Rename from Homepage
  const HomePage({super.key}); // Add const constructor

  @override
  Widget build(BuildContext context)  {
    return Column(
      children: [
        Container(
          width: 384,
          height: 746.09,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 20,
                offset: Offset(0, 10),
                spreadRadius: -5,
              ), BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 50,
                offset: Offset(0, 25),
                spreadRadius: -12,
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 384,
                  height: 746.09,
                  decoration: BoxDecoration(color: const Color(0xFFF8FAFC)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 24,
                        top: 101,
                        child: Container(
                          width: 317,
                          height: 170.50,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x0F000000),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                                spreadRadius: -1,
                              ), BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 6,
                                offset: Offset(0, 4),
                                spreadRadius: -1,
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 20,
                                top: 20,
                                child: Container(
                                  width: 64,
                                  height: 64,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/64x64"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x0C000000),
                                        blurRadius: 2,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 19,
                                child: SizedBox(
                                  width: 89.65,
                                  height: 46.50,
                                  child: Text(
                                    'Morning\nReflections',
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 17.58,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.28,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 197.44,
                                top: 20,
                                child: Container(
                                  width: 57.59,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF1F5F9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33554400),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 10,
                                        top: 4,
                                        child: SizedBox(
                                          width: 37.79,
                                          height: 19,
                                          child: Text(
                                            'Today',
                                            style: TextStyle(
                                              color: const Color(0xFF64748B),
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
                                              height: 1.43,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 263.03,
                                top: 20,
                                child: SizedBox(width: 36, height: 28),
                              ),
                              Positioned(
                                left: 100,
                                top: 73,
                                child: Container(
                                  width: 197,
                                  height: 45.50,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 1,
                                        child: SizedBox(
                                          width: 191.93,
                                          height: 41.75,
                                          child: Text(
                                            'Started my day with coffee and\ngratitude. The sunrise was',
                                            style: TextStyle(
                                              color: const Color(0xFF64748B),
                                              fontSize: 13.89,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 1.64,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 132.50,
                                child: SizedBox(width: 12, height: 12, child: Stack()),
                              ),
                              Positioned(
                                left: 120,
                                top: 130.50,
                                child: SizedBox(
                                  width: 48.47,
                                  height: 16,
                                  child: Text(
                                    '52 words',
                                    style: TextStyle(
                                      color: const Color(0xFF64748B),
                                      fontSize: 11.62,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.38,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 287.50,
                        child: Container(
                          width: 317,
                          height: 170.50,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x0F000000),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                                spreadRadius: -1,
                              ), BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 6,
                                offset: Offset(0, 4),
                                spreadRadius: -1,
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 20,
                                top: 20,
                                child: Container(
                                  width: 64,
                                  height: 64,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/64x64"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x0C000000),
                                        blurRadius: 2,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 19,
                                child: SizedBox(
                                  width: 64.64,
                                  height: 46.50,
                                  child: Text(
                                    'Evening\nWalk',
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.25,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 172.44,
                                top: 20,
                                child: Container(
                                  width: 80.66,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF1F5F9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33554400),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 10,
                                        top: 4,
                                        child: SizedBox(
                                          width: 60.86,
                                          height: 19,
                                          child: Text(
                                            'Yesterday',
                                            style: TextStyle(
                                              color: const Color(0xFF64748B),
                                              fontSize: 13.67,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
                                              height: 1.46,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 261.09,
                                top: 20,
                                child: SizedBox(width: 36, height: 28),
                              ),
                              Positioned(
                                left: 100,
                                top: 73,
                                child: Container(
                                  width: 197,
                                  height: 45.50,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 1,
                                        child: SizedBox(
                                          width: 182.15,
                                          height: 41.75,
                                          child: Text(
                                            'Took a peaceful walk during\nsunset. It is amazing how natu',
                                            style: TextStyle(
                                              color: const Color(0xFF64748B),
                                              fontSize: 13.78,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 1.65,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 132.50,
                                child: SizedBox(width: 12, height: 12, child: Stack()),
                              ),
                              Positioned(
                                left: 120,
                                top: 130.50,
                                child: SizedBox(
                                  width: 48.47,
                                  height: 16,
                                  child: Text(
                                    '52 words',
                                    style: TextStyle(
                                      color: const Color(0xFF64748B),
                                      fontSize: 11.62,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.38,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 474,
                        child: Container(
                          width: 317,
                          height: 170.50,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x0F000000),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                                spreadRadius: -1,
                              ), BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 6,
                                offset: Offset(0, 4),
                                spreadRadius: -1,
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 20,
                                top: 20,
                                child: Container(
                                  width: 64,
                                  height: 64,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/64x64"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x0C000000),
                                        blurRadius: 2,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 19,
                                child: SizedBox(
                                  width: 61.51,
                                  height: 46.50,
                                  child: Text(
                                    'Writing\nGoals',
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.25,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 197.31,
                                top: 20,
                                child: Container(
                                  width: 55.69,
                                  height: 28,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF1F5F9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33554400),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 10,
                                        top: 4,
                                        child: SizedBox(
                                          width: 35.89,
                                          height: 19,
                                          child: Text(
                                            'Dec 8',
                                            style: TextStyle(
                                              color: const Color(0xFF64748B),
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
                                              height: 1.43,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 261,
                                top: 20,
                                child: SizedBox(width: 36, height: 28),
                              ),
                              Positioned(
                                left: 100,
                                top: 73,
                                child: Container(
                                  width: 197,
                                  height: 45.50,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 1,
                                        child: SizedBox(
                                          width: 195.56,
                                          height: 41.75,
                                          child: Text(
                                            'Set some new intentions for my\njournaling practice. I want to ',
                                            style: TextStyle(
                                              color: const Color(0xFF64748B),
                                              fontSize: 13.89,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 1.64,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 132.50,
                                child: SizedBox(width: 12, height: 12, child: Stack()),
                              ),
                              Positioned(
                                left: 120,
                                top: 130.50,
                                child: SizedBox(
                                  width: 48.47,
                                  height: 16,
                                  child: Text(
                                    '50 words',
                                    style: TextStyle(
                                      color: const Color(0xFF64748B),
                                      fontSize: 11.62,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.38,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 626.10,
                        child: Container(
                          width: 384,
                          height: 120,
                          decoration: BoxDecoration(color: const Color(0xFFF8FAFC)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 164,
                                top: 32,
                                child: Container(
                                  width: 56,
                                  height: 56,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF007AFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33554400),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x0A000000),
                                        blurRadius: 10,
                                        offset: Offset(0, 10),
                                        spreadRadius: -5,
                                      ), BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 25,
                                        offset: Offset(0, 20),
                                        spreadRadius: -5,
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 20,
                                        top: 20,
                                        child: SizedBox(width: 16, height: 16, child: Stack()),
                                      ),
                                      Positioned(
                                        left: -3.05,
                                        top: -3.06,
                                        child: Opacity(
                                          opacity: 0.21,
                                          child: Container(
                                            width: 62.10,
                                            height: 62.10,
                                            decoration: ShapeDecoration(
                                              color: const Color(0x33FFFEFE),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(33554400),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 384,
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
                          child: Stack(
                            children: [
                              Positioned(
                                left: 24,
                                top: 16,
                                child: Container(
                                  width: 44,
                                  height: 44,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF007AFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 2,
                                        offset: Offset(0, 1),
                                        spreadRadius: -1,
                                      ), BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 3,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        child: SizedBox(width: 24, height: 24, child: Stack()),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 80,
                                top: 24,
                                child: SizedBox(
                                  width: 106.03,
                                  height: 28,
                                  child: Text(
                                    'SnapJournal',
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 19.53,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.43,
                                      letterSpacing: -0.50,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 294,
                                top: 30,
                                child: SizedBox(width: 16, height: 16, child: Stack()),
                              ),
                              Positioned(
                                left: 334,
                                top: 30,
                                child: SizedBox(width: 16, height: 16, child: Stack()),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}