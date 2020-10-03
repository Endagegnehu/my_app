import 'package:stacked/stacked.dart';

class StreamBuildViewModel extends StreamViewModel<int> {
  String get titile => 'This is the time since epoch in second \n $data';

  bool _otherSource = false;

  @override
  Stream<int> get stream => _otherSource ? epochUpdate() : epochUpdate2();

  void swapSourece() {
    _otherSource = !_otherSource;
  }

  Stream<int> epochUpdate() async* {
    while (true) {
      await Future.delayed(
        Duration(seconds: 2),
      );
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochUpdate2() async* {
    while (true) {
      await Future.delayed(
        Duration(milliseconds: 300),
      );
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
}
