import 'package:flutter/material.dart';

class ViewEntry extends StatelessWidget {
  const ViewEntry({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 384,
          height: 746,
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
                  height: 831.99,
                  decoration: BoxDecoration(color: const Color(0xFFF8FAFC)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 24,
                        top: 89.18,
                        child: Container(
                          width: 61.58,
                          height: 32.01,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF1F5F9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40265300),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 12,
                                top: 6,
                                child: SizedBox(
                                  width: 37.78,
                                  height: 19.20,
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
                        left: 24,
                        top: 137.18,
                        child: SizedBox(
                          width: 220.21,
                          height: 30,
                          child: Text(
                            'Morning Reflections',
                            style: TextStyle(
                              color: const Color(0xFF1D1D1F),
                              fontSize: 24,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 1.25,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 199.17,
                        child: Container(
                          width: 313.20,
                          height: 279.99,
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
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 313.20,
                                  height: 255.99,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/313x256"),
                                      fit: BoxFit.fill,
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
                        top: 513.55,
                        child: SizedBox(
                          width: 313.55,
                          height: 202.31,
                          child: Text(
                            'Started my day with coffee and gratitude. \nThe sunrise was beautiful and reminded me \nof how blessed I am to witness another day. \nI am feeling particularly grateful for my \nhealth, my family, and the small moments \nthat bring joy. Today I want to focus on \nbeing present and mindful in each \ninteraction.',
                            style: TextStyle(
                              color: const Color(0xFF1D1D1F),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 1.62,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 751.03,
                        child: Container(
                          width: 313.20,
                          height: 216.21,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0x4CF1F4F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 132.60,
                                top: 24,
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: ShapeDecoration(
                                    color: const Color(0x190079FE),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40265300),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 12,
                                        top: 12,
                                        child: SizedBox(width: 24, height: 24, child: Stack()),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 81.51,
                                top: 89.20,
                                child: SizedBox(
                                  width: 150.39,
                                  height: 24,
                                  child: Text(
                                    'Moment Captured',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.56,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 30.30,
                                top: 125.18,
                                child: SizedBox(
                                  width: 252.80,
                                  height: 64.69,
                                  child: Text(
                                    'Every entry is a step in your mindfulness\njourney. Thank you for taking the time to\nreflect.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF64748B),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.62,
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
                        top: 999.23,
                        child: Container(
                          width: 313.20,
                          height: 98.38,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: Colors.black.withValues(alpha: 0.08),
                              ),
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
                          child: Stack(
                            children: [
                              Positioned(
                                left: 62.36,
                                top: 21.19,
                                child: SizedBox(
                                  width: 41.24,
                                  height: 19.20,
                                  child: Text(
                                    'Words',
                                    textAlign: TextAlign.center,
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
                              Positioned(
                                left: 71.79,
                                top: 45.19,
                                child: SizedBox(
                                  width: 22.40,
                                  height: 26.40,
                                  child: Text(
                                    '52',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 19.53,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.43,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 186.90,
                                top: 21.19,
                                child: SizedBox(
                                  width: 87.01,
                                  height: 19.20,
                                  child: Text(
                                    'Reading Time',
                                    textAlign: TextAlign.center,
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
                              Positioned(
                                left: 206.23,
                                top: 45.19,
                                child: SizedBox(
                                  width: 48.35,
                                  height: 26.40,
                                  child: Text(
                                    '1 min',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 19.22,
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
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 384,
                          height: 65.17,
                          decoration: ShapeDecoration(
                            color: const Color(0xF2F8F9FB),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.20,
                                color: Colors.black.withValues(alpha: 0.08),
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 33.99,
                                top: 23.98,
                                child: SizedBox(
                                  width: 15.99,
                                  height: 15.99,
                                  child: Stack(),
                                ),
                              ),
                              Positioned(
                                left: 71.98,
                                top: 19.18,
                                child: SizedBox(
                                  width: 43.06,
                                  height: 24,
                                  child: Text(
                                    'Entry',
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.56,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 294.04,
                                top: 23.98,
                                child: SizedBox(
                                  width: 15.99,
                                  height: 15.99,
                                  child: Stack(),
                                ),
                              ),
                              Positioned(
                                left: 334.01,
                                top: 23.98,
                                child: SizedBox(
                                  width: 15.99,
                                  height: 15.99,
                                  child: Stack(),
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
            ],
          ),
        ),
      ],
    );
  }
}