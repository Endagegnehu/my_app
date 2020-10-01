import 'package:flutter/material.dart';
import 'package:my_app/app/locatore.dart';
import 'package:my_app/app/route.gr.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocatore();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Routes.startUpView,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locatore<NavigationService>().navigatorKey,
    );
  }
}
