import 'package:flutter/material.dart';

class ChooseFromGallery extends StatelessWidget {
  const ChooseFromGallery({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock list of image URLs
    final List<String> mockImages = List.generate(
      9,
      (index) => "https://placehold.co/200x200?text=Photo+${index + 1}",
    );

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          "Gallery",
          style: TextStyle(
            color: Color(0xFF1D1D1F),
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color(0xFFFFFBEA),
        foregroundColor: const Color(0xFF9F2D00),
        elevation: 0,
      ),
      body: Column(
        children: [
          // Device Gallery summary
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFFFF7EC), Color(0xFFFFFBEA)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Color(0xFFFFECD4)),
            ),
            child: Row(
              children: const [
                Icon(Icons.photo_library, color: Color(0xFF9F2D00)),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Device Gallery",
                      style: TextStyle(
                        color: Color(0xFF9F2D00),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "9 photos available",
                      style: TextStyle(color: Color(0xFFC93400), fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Gallery Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: mockImages.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                final image = mockImages[index];
                return GestureDetector(
                  onTap: () {
                    // Return selected image
                    Navigator.pop(context, image);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),

          // Info banner
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF7EC).withOpacity(0.6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              "📱 Mock gallery – Real app would access device photos",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF64748B),
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
