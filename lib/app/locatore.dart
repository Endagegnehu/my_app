import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'locatore.config.dart';

final locatore = GetIt.instance;

@injectableInit
void setupLocatore() => $initGetIt(locatore);
