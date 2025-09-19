import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});
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
                  height: 829,
                  decoration: BoxDecoration(color: const Color(0xFFF8FAFC)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 384,
                          height: 65,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, 0.50),
                              end: Alignment(1.00, 0.50),
                              colors: [const Color(0xFFFFF7EC), const Color(0xFFFFFBEA)],
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 26,
                                top: 24,
                                child: SizedBox(width: 16, height: 16, child: Stack()),
                              ),
                              Positioned(
                                left: 64,
                                top: 22,
                                child: SizedBox(width: 20, height: 20, child: Stack()),
                              ),
                              Positioned(
                                left: 92,
                                top: 20,
                                child: SizedBox(
                                  width: 89.78,
                                  height: 24,
                                  child: Text(
                                    'Notifications',
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 15.75,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.52,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 81,
                        child: Container(
                          width: 352,
                          height: 130,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 4),
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
                                left: 20,
                                top: 17,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, 0.50),
                                      end: Alignment(1.00, 0.50),
                                      colors: [const Color(0xFFFF6800), const Color(0xFFFD9900)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 3.75,
                                                top: 4,
                                                child: SizedBox(
                                                  width: 16.68,
                                                  height: 16,
                                                  child: Text(
                                                    '📝',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: const Color(0xFFFF6800),
                                                      fontSize: 12,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.33,
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
                                left: 72,
                                top: 17,
                                child: SizedBox(
                                  width: 78.14,
                                  height: 20,
                                  child: Text(
                                    'SnapJournal',
                                    style: TextStyle(
                                      color: const Color(0xFF101727),
                                      fontSize: 13.78,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.45,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 292.20,
                                top: 17,
                                child: SizedBox(
                                  width: 43,
                                  height: 16,
                                  child: Text(
                                    '8:00 PM',
                                    style: TextStyle(
                                      color: const Color(0xFF697282),
                                      fontSize: 11.62,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.38,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 72,
                                top: 41,
                                child: SizedBox(
                                  width: 206.97,
                                  height: 20,
                                  child: Text(
                                    'Don not forget your entry for today!',
                                    style: TextStyle(
                                      color: const Color(0xFF354152),
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.43,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 72,
                                top: 73,
                                child: Container(
                                  width: 100.39,
                                  height: 32,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, 0.50),
                                      end: Alignment(1.00, 0.50),
                                      colors: [const Color(0xFFFF6800), const Color(0xFFFD9900)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 10,
                                        top: 8,
                                        child: SizedBox(width: 16, height: 16, child: Stack()),
                                      ),
                                      Positioned(
                                        left: 36,
                                        top: 8,
                                        child: SizedBox(
                                          width: 54.59,
                                          height: 16,
                                          child: Text(
                                            'Add Entry',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
                                              height: 1.33,
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
                        left: 16,
                        top: 223,
                        child: Container(
                          width: 352,
                          height: 98,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 4),
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
                                left: 20,
                                top: 17,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, 0.50),
                                      end: Alignment(1.00, 0.50),
                                      colors: [const Color(0xFFFF6800), const Color(0xFFFD9900)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 3.75,
                                                top: 4,
                                                child: SizedBox(
                                                  width: 16.68,
                                                  height: 16,
                                                  child: Text(
                                                    '✅',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: const Color(0xFFFF6800),
                                                      fontSize: 12,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.33,
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
                                left: 72,
                                top: 17,
                                child: SizedBox(
                                  width: 78.14,
                                  height: 20,
                                  child: Text(
                                    'SnapJournal',
                                    style: TextStyle(
                                      color: const Color(0xFF101727),
                                      fontSize: 13.78,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.45,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 292.20,
                                top: 17,
                                child: SizedBox(
                                  width: 43,
                                  height: 16,
                                  child: Text(
                                    '3:45 PM',
                                    style: TextStyle(
                                      color: const Color(0xFF697282),
                                      fontSize: 11.62,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.38,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 72,
                                top: 41,
                                child: SizedBox(
                                  width: 231.51,
                                  height: 20,
                                  child: Text(
                                    'You added an entry at 3:45 PM, Dec 8',
                                    style: TextStyle(
                                      color: const Color(0xFF354152),
                                      fontSize: 13.89,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.44,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 333,
                        child: Container(
                          width: 352,
                          height: 98,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 4),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 2,
                                offset: Offset(0, 1),
                                spreadRadius: -1,
                              ),BoxShadow(
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
                                left: 20,
                                top: 17,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, 0.50),
                                      end: Alignment(1.00, 0.50),
                                      colors: [const Color(0xFFFF6800), const Color(0xFFFD9900)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 3.75,
                                                top: 4,
                                                child: SizedBox(
                                                  width: 16.68,
                                                  height: 16,
                                                  child: Text(
                                                    '️',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: const Color(0xFFFF6800),
                                                      fontSize: 12,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.33,
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
                                left: 72,
                                top: 17,
                                child: SizedBox(
                                  width: 78.14,
                                  height: 20,
                                  child: Text(
                                    'SnapJournal',
                                    style: TextStyle(
                                      color: const Color(0xFF101727),
                                      fontSize: 13.78,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.45,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 292.20,
                                top: 17,
                                child: SizedBox(
                                  width: 43,
                                  height: 16,
                                  child: Text(
                                    '2:30 PM',
                                    style: TextStyle(
                                      color: const Color(0xFF697282),
                                      fontSize: 11.62,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.38,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 72,
                                top: 41,
                                child: SizedBox(
                                  width: 127.61,
                                  height: 20,
                                  child: Text(
                                    'You deleted an entry',
                                    style: TextStyle(
                                      color: const Color(0xFF354152),
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
                        left: 16,
                        top: 443,
                        child: Container(
                          width: 352,
                          height: 98,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 4),
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
                                left: 20,
                                top: 17,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.00, 0.50),
                                      end: Alignment(1.00, 0.50),
                                      colors: [const Color(0xFFFF6800), const Color(0xFFFD9900)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 3.75,
                                                top: 4,
                                                child: SizedBox(
                                                  width: 16.68,
                                                  height: 16,
                                                  child: Text(
                                                    '📝',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: const Color(0xFFFF6800),
                                                      fontSize: 12,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.33,
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
                                left: 72,
                                top: 17,
                                child: SizedBox(
                                  width: 78.14,
                                  height: 20,
                                  child: Text(
                                    'SnapJournal',
                                    style: TextStyle(
                                      color: const Color(0xFF101727),
                                      fontSize: 13.78,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.45,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 292.20,
                                top: 17,
                                child: SizedBox(
                                  width: 43,
                                  height: 16,
                                  child: Text(
                                    '1:15 PM',
                                    style: TextStyle(
                                      color: const Color(0xFF697282),
                                      fontSize: 11.62,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.38,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 72,
                                top: 41,
                                child: SizedBox(
                                  width: 244.17,
                                  height: 20,
                                  child: Text(
                                    'You updated an entry at 1:15 PM, Dec 8',
                                    style: TextStyle(
                                      color: const Color(0xFF354152),
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
                        left: 16,
                        top: 573,
                        child: Container(
                          width: 352,
                          height: 166,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, 0.50),
                              end: Alignment(1.00, 0.50),
                              colors: [const Color(0xFFFFF7EC), const Color(0xFFFFFBEA)],
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFD6A7),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 17,
                                top: 17,
                                child: SizedBox(
                                  width: 135.86,
                                  height: 24,
                                  child: Text(
                                    'Notification Types:',
                                    style: TextStyle(
                                      color: const Color(0xFF9F2D00),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 17,
                                top: 49,
                                child: SizedBox(
                                  width: 318,
                                  height: 92,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: SizedBox(
                                          width: 318,
                                          height: 20,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 19.43,
                                                  height: 20,
                                                  child: Text(
                                                    '📝',
                                                    style: TextStyle(
                                                      color: const Color(0xFFC93400),
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.43,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 27.23,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 170.18,
                                                  height: 20,
                                                  child: Text(
                                                    'Daily reminder notifications',
                                                    style: TextStyle(
                                                      color: const Color(0xFFC93400),
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
                                        left: 0,
                                        top: 24,
                                        child: SizedBox(
                                          width: 318,
                                          height: 20,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 19.43,
                                                  height: 20,
                                                  child: Text(
                                                    '✅',
                                                    style: TextStyle(
                                                      color: const Color(0xFFC93400),
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.43,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 27.23,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 163.06,
                                                  height: 20,
                                                  child: Text(
                                                    'Entry added confirmations',
                                                    style: TextStyle(
                                                      color: const Color(0xFFC93400),
                                                      fontSize: 13.89,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.44,
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
                                        top: 48,
                                        child: SizedBox(
                                          width: 318,
                                          height: 20,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 19.43,
                                                  height: 20,
                                                  child: Text(
                                                    '️',
                                                    style: TextStyle(
                                                      color: const Color(0xFFC93400),
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.43,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 27.23,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 123.20,
                                                  height: 20,
                                                  child: Text(
                                                    'Entry deletion alerts',
                                                    style: TextStyle(
                                                      color: const Color(0xFFC93400),
                                                      fontSize: 13.89,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.44,
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
                                        top: 72,
                                        child: SizedBox(
                                          width: 318,
                                          height: 20,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 19.43,
                                                  height: 20,
                                                  child: Text(
                                                    '📝',
                                                    style: TextStyle(
                                                      color: const Color(0xFFC93400),
                                                      fontSize: 14,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.43,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 27.23,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 167.47,
                                                  height: 20,
                                                  child: Text(
                                                    'Entry update confirmations',
                                                    style: TextStyle(
                                                      color: const Color(0xFFC93400),
                                                      fontSize: 13.89,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.44,
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