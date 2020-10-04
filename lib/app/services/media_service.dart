import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MediaService {
  Future<PickedFile> getImageFromFile({bool fromGallery}) async {
    return ImagePicker().getImage(
      source: fromGallery ? ImageSource.gallery : ImageSource.camera,
    );
  }
}
