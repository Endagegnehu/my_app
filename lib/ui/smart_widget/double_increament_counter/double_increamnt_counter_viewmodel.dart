import 'package:my_app/app/locatore.dart';
import 'package:my_app/app/services/counterService.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreamentModel extends ReactiveViewModel {
  final _counterService = locatore<CounterService>();
  int get counter => _counterService.counter;
  void updateCounter() {
    _counterService.doubleCounter();
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}
