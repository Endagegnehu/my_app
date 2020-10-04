import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_app/app/locatore.dart';
import 'package:my_app/app/services/media_service.dart';
import 'package:my_app/ui/views/image_picker/image_picker_viewmodel.dart';

class MediaServiceMock extends Mock implements MediaService {}

void main() {
  testWidgets('image picker viewmodel ...', (tester) async {
    var mediaService = MediaServiceMock();
    locatore.registerLazySingleton<MediaService>(() => mediaService);
    var model = ImagePickerViewModel();
    await model.selectImage(fromGallery: true);
    verify(
      mediaService.getImageFromFile(fromGallery: true),
    );
  });
}
