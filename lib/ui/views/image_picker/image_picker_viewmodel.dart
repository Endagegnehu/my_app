import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:my_app/app/locatore.dart';
import 'package:my_app/app/services/media_service.dart';
import 'package:stacked/stacked.dart';

class ImagePickerViewModel extends BaseViewModel {
  final _mediaService = locatore<MediaService>();
  File _selectedImage;

  bool get hasSelectedImage => _selectedImage != null;

  File get selectedIamge => _selectedImage;

  Future selectImage({@required bool fromGallery}) async {
    _selectedImage = await runBusyFuture(
      _mediaService.getImageFromFile(fromGallery: fromGallery),
    );
  }
}
