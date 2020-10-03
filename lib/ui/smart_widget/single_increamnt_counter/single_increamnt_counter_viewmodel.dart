import 'package:my_app/app/locatore.dart';
import 'package:my_app/app/services/counterService.dart';
import 'package:stacked/stacked.dart';

class SingleIncreamentModel extends ReactiveViewModel {
  final _counterService = locatore<CounterService>();
  int get counter => _counterService.counter;
  void updateCounter() {
    _counterService.increamentCounter();
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}
