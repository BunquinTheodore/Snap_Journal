import 'package:flutter/material.dart';

class ChooseFromGallery extends StatelessWidget {
  const ChooseFromGallery ({super.key});
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
                                top: 20,
                                child: SizedBox(
                                  width: 48.75,
                                  height: 24,
                                  child: Text(
                                    'Gallery',
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
                                      fontSize: 15.88,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.51,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 342,
                                top: 24,
                                child: SizedBox(width: 16, height: 16, child: Stack()),
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
                          height: 70,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.46, -0.46),
                              end: Alignment(0.54, 1.46),
                              colors: [const Color(0xFFFFF7EC), const Color(0xFFFFFBEA)],
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 17,
                                top: 17,
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFFECD4),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 8,
                                        top: 8,
                                        child: SizedBox(width: 20, height: 20, child: Stack()),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 65,
                                top: 17,
                                child: SizedBox(
                                  width: 87.54,
                                  height: 20,
                                  child: Text(
                                    'Device Gallery',
                                    style: TextStyle(
                                      color: const Color(0xFF9F2D00),
                                      fontSize: 13.89,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.44,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 65,
                                top: 37,
                                child: SizedBox(
                                  width: 96.43,
                                  height: 16,
                                  child: Text(
                                    '9 photos available',
                                    style: TextStyle(
                                      color: const Color(0xFFC93400),
                                      fontSize: 11.81,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.35,
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
                        top: 183,
                        child: Container(
                          width: 112,
                          height: 112,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 1,
                                top: 1,
                                child: Container(
                                  width: 110,
                                  height: 86,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/110x86"),
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
                        left: 136,
                        top: 183,
                        child: Container(
                          width: 112,
                          height: 112,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 1,
                                top: 1,
                                child: Container(
                                  width: 110,
                                  height: 86,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/110x86"),
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
                        left: 256,
                        top: 183,
                        child: Container(
                          width: 112,
                          height: 112,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 1,
                                top: 1,
                                child: Container(
                                  width: 110,
                                  height: 86,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/110x86"),
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
                        left: 16,
                        top: 303,
                        child: Container(
                          width: 112,
                          height: 112,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 1,
                                top: 1,
                                child: Container(
                                  width: 110,
                                  height: 86,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/110x86"),
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
                        left: 136,
                        top: 303,
                        child: Container(
                          width: 112,
                          height: 112,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 1,
                                top: 1,
                                child: Container(
                                  width: 110,
                                  height: 86,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/110x86"),
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
                        left: 256,
                        top: 303,
                        child: Container(
                          width: 112,
                          height: 112,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 1,
                                top: 1,
                                child: Container(
                                  width: 110,
                                  height: 86,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/110x86"),
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
                        left: 16,
                        top: 423,
                        child: Container(
                          width: 112,
                          height: 112,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 1,
                                top: 1,
                                child: Container(
                                  width: 110,
                                  height: 86,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/110x86"),
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
                        left: 136,
                        top: 423,
                        child: Container(
                          width: 112,
                          height: 112,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 1,
                                top: 1,
                                child: Container(
                                  width: 110,
                                  height: 86,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/110x86"),
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
                        left: 256,
                        top: 423,
                        child: Container(
                          width: 112,
                          height: 112,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 1,
                                top: 1,
                                child: Container(
                                  width: 110,
                                  height: 86,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/110x86"),
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
                        left: 16,
                        top: 567,
                        child: Container(
                          width: 352,
                          height: 86,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFFF7EC),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFECD4),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 43.23,
                                top: 17,
                                child: SizedBox(
                                  width: 43.06,
                                  height: 20,
                                  child: Text(
                                    'Photos',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFFF44900),
                                      fontSize: 13.56,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.47,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 60.19,
                                top: 37,
                                child: SizedBox(
                                  width: 9.14,
                                  height: 24,
                                  child: Text(
                                    '9',
                                    textAlign: TextAlign.center,
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
                                left: 155.11,
                                top: 17,
                                child: SizedBox(
                                  width: 41.95,
                                  height: 20,
                                  child: Text(
                                    'Recent',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFFF44900),
                                      fontSize: 13.56,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.47,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 154.52,
                                top: 37,
                                child: SizedBox(
                                  width: 43.15,
                                  height: 24,
                                  child: Text(
                                    'Today',
                                    textAlign: TextAlign.center,
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
                                left: 263.58,
                                top: 17,
                                child: SizedBox(
                                  width: 47.70,
                                  height: 20,
                                  child: Text(
                                    'Storage',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFFF44900),
                                      fontSize: 13.78,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1.45,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 263.31,
                                top: 37,
                                child: SizedBox(
                                  width: 48.23,
                                  height: 24,
                                  child: Text(
                                    '2.1 MB',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF9F2D00),
                                      fontSize: 15.12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 1.59,
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
                        top: 669,
                        child: Opacity(
                          opacity: 0.60,
                          child: Container(
                            width: 352,
                            height: 32,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFFF7EC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 28.63,
                                  top: 8,
                                  child: SizedBox(
                                    width: 294.95,
                                    height: 16,
                                    child: Text(
                                      '📱 Mock gallery - Real app would access device photos',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF64748B),
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
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