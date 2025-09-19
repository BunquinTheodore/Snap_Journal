import 'package:flutter/material.dart';

class EditEntry extends StatelessWidget {
  const EditEntry({super.key}); 
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
              ),BoxShadow(
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
                                          width: 128.54,
                                          height: 19,
                                          child: Text(
                                            'Morning Reflections',
                                            style: TextStyle(
                                              color: const Color(0xFF1D1D1F),
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
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 161,
                        child: Container(
                          width: 317,
                          height: 358,
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
                                left: 1,
                                top: 1,
                                child: Container(
                                  width: 315,
                                  height: 192,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://placehold.co/315x192"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 17,
                                top: 209,
                                child: Container(
                                  width: 283,
                                  height: 48,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 12,
                                        top: 16,
                                        child: SizedBox(width: 16, height: 16, child: Stack()),
                                      ),
                                      Positioned(
                                        left: 48,
                                        top: 14,
                                        child: SizedBox(
                                          width: 102.92,
                                          height: 20,
                                          child: Text(
                                            'Take New Photo',
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
                              Positioned(
                                left: 17,
                                top: 269,
                                child: Container(
                                  width: 283,
                                  height: 48,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 12,
                                        top: 16,
                                        child: SizedBox(width: 16, height: 16, child: Stack()),
                                      ),
                                      Positioned(
                                        left: 48,
                                        top: 14,
                                        child: SizedBox(
                                          width: 90.28,
                                          height: 20,
                                          child: Text(
                                            'Change Photo',
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
                        top: 551,
                        child: Container(
                          width: 317,
                          height: 175.25,
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
                                top: 9,
                                child: SizedBox(
                                  width: 310.18,
                                  height: 155.50,
                                  child: Text(
                                    'Started my day with coffee and gratitude. The \nsunrise was beautiful and reminded me of how \nblessed I am to witness another day. I am feeling \nparticularly grateful for my health, my family, and \nthe small moments that bring joy. Today I want to \nfocus on being present and mindful in each \ninteraction.',
                                    style: TextStyle(
                                      color: const Color(0xFF1D1D1F),
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
                                  width: 79.37,
                                  height: 28,
                                  child: Text(
                                    'Edit Entry',
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
                                left: 282.63,
                                top: 16,
                                child: Container(
                                  width: 77.38,
                                  height: 36,
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
                                        top: 8,
                                        child: SizedBox(
                                          width: 29.58,
                                          height: 19,
                                          child: Text(
                                            'Save',
                                            textAlign: TextAlign.center,
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