import 'package:stacked/stacked.dart';

class FutureBuildViewModel extends FutureViewModel<String> {
  Future<String> getDatafromStream() async {
    await Future.delayed(Duration(seconds: 5));
    return "Data from Future";
  }

  @override
  Future<String> futureToRun() => getDatafromStream();
}
