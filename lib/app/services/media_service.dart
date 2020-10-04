import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MediaService {
  final picker = ImagePicker();
  Future<File> getImageFromFile({bool fromGallery}) async {
    // ignore: deprecated_member_use
    final pickedFile = await picker.getImage(
      source: fromGallery ? ImageSource.gallery : ImageSource.camera,
    );
    final File file = File(pickedFile.path);
    return file;
  }
}
