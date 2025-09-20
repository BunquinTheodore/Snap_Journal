import 'dart:io' show File;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class ImageService {
  final ImagePicker _picker = ImagePicker();

  Future<XFile?> pickFromGallery() async {
    return await _picker.pickImage(source: ImageSource.gallery);
  }

  Future<XFile?> takePhoto() async {
    return await _picker.pickImage(source: ImageSource.camera);
  }

  /// Helper to build an image widget from an XFile
  static Widget buildImageWidget(XFile? file, {double? height}) {
    if (file == null) return const SizedBox();

    if (kIsWeb) {
      // Web uses Image.network with blob URL
      return Image.network(
        file.path,
        height: height,
        fit: BoxFit.cover,
      );
    } else {
      // Mobile/Desktop can use File
      return Image.file(
        File(file.path),
        height: height,
        fit: BoxFit.cover,
      );
    }
  }
}
