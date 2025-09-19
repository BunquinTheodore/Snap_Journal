import 'package:flutter/material.dart';


class Settings extends StatelessWidget {
  const Settings({super.key});
  @override
  Widget build(BuildContext context) {
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
                        top: 89,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: ShapeDecoration(
                            color: const Color(0x190079FE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33554400),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 8,
                                top: 8,
                                child: Container(width: 20, height: 20, child: Stack()),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 72,
                        top: 93,
                        child: SizedBox(
                          width: 104.95,
                          height: 28,
                          child: Text(
                            'Notifications',
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
                        left: 24,
                        top: 141,
                        child: Container(
                          width: 317,
                          height: 543,
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
                                left: 21,
                                top: 21,
                                child: SizedBox(
                                  width: 146,
                                  height: 24,
                                  child: Text(
                                    'Enable Notifications',
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21,
                                top: 45,
                                child: SizedBox(
                                  width: 200.50,
                                  height: 39,
                                  child: Text(
                                    'Get reminded to write your daily\njournal',
                                    style: TextStyle(
                                      color: const Color(0xFF64748B),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.43,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 264,
                                top: 43.80,
                                child: Container(
                                  width: 32,
                                  height: 18.39,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF007AFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33554400),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 15,
                                        top: 1.19,
                                        child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(33554400),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21,
                                top: 105,
                                child: Container(
                                  width: 275,
                                  height: 413,
                                  decoration: ShapeDecoration(
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
                                        left: 0,
                                        top: 13,
                                        child: Container(width: 16, height: 16, child: Stack()),
                                      ),
                                      Positioned(
                                        left: 28,
                                        top: 9,
                                        child: SizedBox(
                                          width: 110.08,
                                          height: 24,
                                          child: Text(
                                            'Reminder Time',
                                            style: TextStyle(
                                              color: const Color(0xFF1D1D1F),
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 45,
                                        child: Container(
                                          width: 275,
                                          height: 36,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF8FAFC),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                color: Colors.black.withValues(alpha: 0.08),
                                              ),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 13,
                                                top: 8,
                                                child: Container(
                                                  width: 49.94,
                                                  height: 20,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 50.14,
                                                          height: 19,
                                                          child: Text(
                                                            '8:00 PM',
                                                            style: TextStyle(
                                                              color: const Color(0xFF1D1D1F),
                                                              fontSize: 13.56,
                                                              fontFamily: 'Roboto',
                                                              fontWeight: FontWeight.w400,
                                                              height: 1.47,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 246,
                                                top: 10,
                                                child: Opacity(
                                                  opacity: 0.50,
                                                  child: Container(width: 16, height: 16, child: Stack()),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 102,
                                        child: SizedBox(
                                          width: 75,
                                          height: 21,
                                          child: Text(
                                            'Frequency',
                                            style: TextStyle(
                                              color: const Color(0xFF1D1D1F),
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 125,
                                        child: Container(
                                          width: 275,
                                          height: 36,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF8FAFC),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                color: Colors.black.withValues(alpha: 0.08),
                                              ),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 13,
                                                top: 8,
                                                child: Container(
                                                  width: 30.50,
                                                  height: 20,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 30.70,
                                                          height: 19,
                                                          child: Text(
                                                            'Daily',
                                                            style: TextStyle(
                                                              color: const Color(0xFF1D1D1F),
                                                              fontSize: 14,
                                                              fontFamily: 'Roboto',
                                                              fontWeight: FontWeight.w400,
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
                                                left: 246,
                                                top: 10,
                                                child: Opacity(
                                                  opacity: 0.50,
                                                  child: Container(width: 16, height: 16, child: Stack()),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 195,
                                        child: Container(width: 16, height: 16, child: Stack()),
                                      ),
                                      Positioned(
                                        left: 28,
                                        top: 181,
                                        child: SizedBox(
                                          width: 46.78,
                                          height: 24,
                                          child: Text(
                                            'Sound',
                                            style: TextStyle(
                                              color: const Color(0xFF1D1D1F),
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 28,
                                        top: 205,
                                        child: SizedBox(
                                          width: 141.12,
                                          height: 20,
                                          child: Text(
                                            'Play notification sound',
                                            style: TextStyle(
                                              color: const Color(0xFF64748B),
                                              fontSize: 13.89,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 1.44,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 243,
                                        top: 193.80,
                                        child: Container(
                                          width: 32,
                                          height: 18.39,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF007AFF),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(33554400),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 15,
                                                top: 1.19,
                                                child: Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(33554400),
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
                                        top: 255,
                                        child: Container(width: 16, height: 16, child: Stack()),
                                      ),
                                      Positioned(
                                        left: 28,
                                        top: 241,
                                        child: SizedBox(
                                          width: 67.42,
                                          height: 24,
                                          child: Text(
                                            'Vibration',
                                            style: TextStyle(
                                              color: const Color(0xFF1D1D1F),
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 28,
                                        top: 265,
                                        child: SizedBox(
                                          width: 144.20,
                                          height: 20,
                                          child: Text(
                                            'Vibrate on notifications',
                                            style: TextStyle(
                                              color: const Color(0xFF64748B),
                                              fontSize: 13.89,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 1.44,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 243,
                                        top: 253.80,
                                        child: Container(
                                          width: 32,
                                          height: 18.39,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF007AFF),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(33554400),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 15,
                                                top: 1.19,
                                                child: Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(33554400),
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
                                        top: 315,
                                        child: Container(width: 16, height: 16, child: Stack()),
                                      ),
                                      Positioned(
                                        left: 28,
                                        top: 301,
                                        child: SizedBox(
                                          width: 88.08,
                                          height: 24,
                                          child: Text(
                                            'Quiet Hours',
                                            style: TextStyle(
                                              color: const Color(0xFF1D1D1F),
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
                                              height: 1.50,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 28,
                                        top: 325,
                                        child: SizedBox(
                                          width: 187.97,
                                          height: 20,
                                          child: Text(
                                            'No notifications 10 PM - 8 AM',
                                            style: TextStyle(
                                              color: const Color(0xFF64748B),
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 243,
                                        top: 313.80,
                                        child: Container(
                                          width: 32,
                                          height: 18.39,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFE2E8F0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(33554400),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 1,
                                                top: 1.19,
                                                child: Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(33554400),
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
                                        top: 365,
                                        child: Container(
                                          width: 275,
                                          height: 48,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF8FAFC),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                color: Colors.black.withValues(alpha: 0.08),
                                              ),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 73.13,
                                                top: 14,
                                                child: SizedBox(
                                                  width: 128.95,
                                                  height: 19,
                                                  child: Text(
                                                    'Preview Notification',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: const Color(0xFF1D1D1F),
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
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 708,
                        child: Container(
                          width: 317,
                          height: 154,
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
                                left: 96.39,
                                top: 25,
                                child: Container(
                                  width: 124.20,
                                  height: 52,
                                  decoration: ShapeDecoration(
                                    color: const Color(0x190079FE),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33554400),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 42.06,
                                top: 89,
                                child: SizedBox(
                                  width: 233.06,
                                  height: 39,
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Version 1.0.0\n',
                                          style: TextStyle(
                                            color: const Color(0xFF64748B),
                                            fontSize: 14,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            height: 1.43,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Daily journaling with photo memories',
                                          style: TextStyle(
                                            color: const Color(0xFF64748B),
                                            fontSize: 14,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            height: 1.43,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
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
                          height: 65,
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
                                left: 34,
                                top: 24,
                                child: Container(width: 16, height: 16, child: Stack()),
                              ),
                              Positioned(
                                left: 72,
                                top: 18,
                                child: SizedBox(
                                  width: 66.39,
                                  height: 28,
                                  child: Text(
                                    'Settings',
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 17.72,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.58,
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
            ],
          ),
        ),
      ],
    );
  }
}