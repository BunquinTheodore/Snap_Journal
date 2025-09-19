import 'package:flutter/material.dart';

class AddNewEntry extends StatelessWidget {
  const AddNewEntry({super.key});
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
                        top: 93,
                        child: Container(
                          width: 317,
                          height: 36,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 8.50,
                                child: Container(
                                  width: 317,
                                  height: 19,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: SizedBox(
                                          width: 72.39,
                                          height: 19,
                                          child: Text(
                                            'Entry title...',
                                            style: TextStyle(
                                              color: const Color(0xFF64748B),
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
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
                                top: 8.50,
                                child: Container(
                                  width: 317,
                                  height: 19,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 161,
                        child: Container(
                          width: 317,
                          height: 362,
                          clipBehavior: Clip.antiAlias,
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
                                left: 125.23,
                                top: 31.08,
                                child: Container(
                                  transform: Matrix4.identity()..translateByDouble(0.0, 0.0, 0.0, 1.0)..rotateZ(0.01),
                                  width: 67.20,
                                  height: 67.20,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-0.00, -0.00),
                                      end: Alignment(1.00, 1.00),
                                      colors: [const Color(0x190079FE), const Color(0x0C0079FE)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33554400),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 16.91,
                                        top: 17.01,
                                        child: SizedBox(
                                          width: 33.92,
                                          height: 33.92,
                                          child: Stack(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 113.03,
                                top: 121,
                                child: SizedBox(
                                  width: 91.12,
                                  height: 24,
                                  child: Text(
                                    'Add a photo',
                                    textAlign: TextAlign.center,
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
                                left: 53.02,
                                top: 153,
                                child: SizedBox(
                                  width: 211.15,
                                  height: 20,
                                  child: Text(
                                    'Capture the moment with a photo',
                                    textAlign: TextAlign.center,
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
                                left: 33,
                                top: 197,
                                child: Container(
                                  width: 251,
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
                                        left: 72.44,
                                        top: 16,
                                        child: SizedBox(width: 16, height: 16, child: Stack()),
                                      ),
                                      Positioned(
                                        left: 108.44,
                                        top: 14,
                                        child: SizedBox(
                                          width: 70.31,
                                          height: 20,
                                          child: Text(
                                            'Take Photo',
                                            style: TextStyle(
                                              color: const Color(0xFF1D1D1F),
                                              fontSize: 13.89,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w600,
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
                                left: 33,
                                top: 257,
                                child: Container(
                                  width: 251,
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
                                        left: 42.47,
                                        top: 16,
                                        child: SizedBox(width: 16, height: 16, child: Stack()),
                                      ),
                                      Positioned(
                                        left: 78.47,
                                        top: 14,
                                        child: SizedBox(
                                          width: 130.26,
                                          height: 20,
                                          child: Text(
                                            'Choose from Gallery',
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
                      Positioned(
                        left: 24,
                        top: 651,
                        child: Container(
                          width: 317,
                          height: 200,
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
                                left: 14,
                                top: 20.03,
                                child: Container(
                                  transform: Matrix4.identity()..translateByDouble(0.0, 0.0, 0.0, 1.0)..rotateZ(-0.07),
                                  width: 36.69,
                                  height: 159,
                                  decoration: ShapeDecoration(
                                    color: const Color(0x190079FE),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33554400),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 8.71,
                                        top: 8.71,
                                        child: SizedBox(
                                          width: 21.80,
                                          height: 21.80,
                                          child: Stack(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 72,
                                top: 20,
                                child: SizedBox(
                                  width: 136.93,
                                  height: 24,
                                  child: Text(
                                    'Writing Inspiration',
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
                                left: 72,
                                top: 56,
                                child: SizedBox(
                                  width: 225,
                                  height: 120,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: SizedBox(
                                          width: 225,
                                          height: 40,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 4,
                                                child: SizedBox(
                                                  width: 5.89,
                                                  height: 20,
                                                  child: Text(
                                                    '•',
                                                    style: TextStyle(
                                                      color: const Color(0xFF007AFF),
                                                      fontSize: 14,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.43,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 13.69,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 193.89,
                                                  height: 39,
                                                  child: Text(
                                                    'Share how you are feeling in this\nmoment',
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
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 48,
                                        child: SizedBox(
                                          width: 225,
                                          height: 24,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 4,
                                                child: SizedBox(
                                                  width: 5.89,
                                                  height: 20,
                                                  child: Text(
                                                    '•',
                                                    style: TextStyle(
                                                      color: const Color(0xFF007AFF),
                                                      fontSize: 14,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.43,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 13.69,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 210.76,
                                                  height: 20,
                                                  child: Text(
                                                    'Reflect on what you are grateful for',
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
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 80,
                                        child: SizedBox(
                                          width: 225,
                                          height: 40,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 4,
                                                child: SizedBox(
                                                  width: 5.89,
                                                  height: 20,
                                                  child: Text(
                                                    '•',
                                                    style: TextStyle(
                                                      color: const Color(0xFF007AFF),
                                                      fontSize: 14,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.43,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 13.69,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 192.48,
                                                  height: 39,
                                                  child: Text(
                                                    'Notice the small details around\nyou',
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
                        top: 555,
                        child: Container(
                          width: 317,
                          height: 64,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 8,
                                child: SizedBox(
                                  width: 174.45,
                                  height: 22.75,
                                  child: Text(
                                    'Whatis on your mind today?',
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
                              Positioned(
                                left: 0,
                                top: 8,
                                child: SizedBox(width: 317, height: 22.75),
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
                          height: 69,
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
                                top: 26,
                                child: SizedBox(width: 16, height: 16, child: Stack()),
                              ),
                              Positioned(
                                left: 72,
                                top: 20,
                                child: SizedBox(
                                  width: 85,
                                  height: 28,
                                  child: Text(
                                    'New Entry',
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
                                left: 258.63,
                                top: 16,
                                child: Opacity(
                                  opacity: 0.50,
                                  child: Container(
                                    width: 101.38,
                                    height: 36,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF007AFF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(33554400),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 24,
                                          top: 10,
                                          child: SizedBox(width: 16, height: 16, child: Stack()),
                                        ),
                                        Positioned(
                                          left: 48,
                                          top: 8,
                                          child: SizedBox(
                                            width: 29.58,
                                            height: 20,
                                            child: Text(
                                              'Save',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.56,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                height: 1.47,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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